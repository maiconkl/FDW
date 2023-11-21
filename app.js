// Adicione um ouvinte de evento quando o conteúdo do DOM estiver carregado
document.addEventListener('DOMContentLoaded', function () {
  // Seletor para todos os links "Saiba Mais"
  const saibaMaisLinks = document.querySelectorAll('.saiba-mais-link');

  // Adicione um ouvinte de evento para cada link
  saibaMaisLinks.forEach(link => {
    link.addEventListener('click', function (event) {
      // Impedir o comportamento padrão do link para evitar o redirecionamento imediato
      event.preventDefault();

      // Obter o ID do serviço da URL do link
      const urlParams = new URLSearchParams(link.href.split('?')[1]);
      const idServico = urlParams.get('id');

      // Chamar a função listar com o ID do serviço
      if (idServico) {
        listar(idServico);
      } else {
        console.error("ID do serviço não especificado no link.");
      }
    });
  });

  // Restante do seu código...
});

// Modificar a função listar para aceitar o ID do serviço como parâmetro
function listar(id) {
  let url = `./back/listar_serv.php`;
  let req = new XMLHttpRequest();
  req.open('GET', url, false);
  req.send();
  let resposta = JSON.parse(req.responseText);

  console.log(resposta);

  let t = document.getElementById(`servico`);

  // Verificar se o elemento com o ID 'servico' existe
  if (t) {
    t.innerHTML = '';

    // Certifique-se de que 'resposta[id-1]' existe
    if (resposta[id - 1]) {
      t.innerHTML = `<title>TIÃO PINTURAS</title>
      </head>
      <body>
        <header>
            <a class="navbar-brand" href="index.html"><img src="logo.png" width="60" height="60" class="fonte_menu" alt="">TIÃO PINTURAS</a>
        </header>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                  <img class="card-img" class="img-fluid" src="serv1.jpg" alt="Imagem do card">
                    <div class="card bg-dark text-white">
                        <div class="card-img-overlay" id="servico">
                          <h5 class="card-title">${resposta[id - 1].nome_servico}</h5>
                          <p class="card-text">${resposta[id - 1].descricao}</p>
                          <p class="card-text">Para informações de valores favor solicitar orçamento</p>
                          <a href="index.html" type="button" class="btn btn-primary btn-lg btn-block">voltar</a>
                        </div>
                      </div>
                </div>
            </div>
        </div>`;
    } else {
      console.error(`Serviço com ID ${id} não encontrado.`);
    }
  } else {
    console.error("Elemento com ID 'servico' não encontrado.");
  }
}
