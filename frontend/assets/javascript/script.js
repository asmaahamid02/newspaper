$(document).ready(function () {
  const text_length = 100
  const title_length = 50
  $.ajax({
    type: 'GET',
    dataType: 'json',
    url: 'http://localhost/newspaper/backend/api.php',
    success: function (data) {
      //   alert('Get Success')
      console.log(data)
      if (data.status && data.data != null) {
        fillCard(data.data)
      } else {
        $('.row').append(`<div class="alert alert-primary" role="alert">
        ${data.message}
      </div>`)
      }
    },
  })

  $('#submit-btn').click(function () {
    console.log()
    $.ajax({
      url: 'http://localhost/newspaper/backend/search.php',
      type: 'post',
      dataType: 'json',
      data: { keySearch: $('#search').val() },
      success: function (data) {
        console.log(data)
        $('.row').empty()
        if (data.status && data.data != null) {
          fillCard(data.data)
        } else {
          $('.row').append(`<div class="alert alert-primary" role="alert">
            ${data.message}
          </div>`)
        }
      },
      error: function (error) {
        console.log(error)
      },
    })
  })

  const fillCard = (data) => {
    data.forEach((item) => {
      console.log(item.image)
      let card = `
          <div class="card  mb-5" style="width: 20rem;">
          <img src="./assets/images/${
            item.image
          }" class="card-img-top" alt="...">
          <div class="card-body">
              <h5 class="card-title">${item.title.slice(0, title_length)}</h5>
              <h6 class="card-subtitle mb-2 text-muted">by: ${item.name}</h6>
              <p class="card-subtitle mb-2 text-muted">@${item.created_at}</p>
              <p class="card-text">${item.text.slice(0, text_length)}</p>
              <a href="#" class="btn btn-outline-success">Read More</a>
          </div>
      </div>
          `
      // console.log(card)
      $('.row').append(card)
    })
  }
})
