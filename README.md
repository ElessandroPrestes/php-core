# Imagem Docker PHP Core para Laravel

[![Docker Pulls](https://img.shields.io/docker/pulls/elessandrodev/php-core?style=for-the-badge&logo=docker)](https://hub.docker.com/r/elessandrodev/php-core)
[![PHP Version](https://img.shields.io/badge/PHP-8.4-777BB4?style=for-the-badge&logo=php)](https://www.php.net/)


Uma imagem Docker otimizada com **PHP 8.4-FPM**, criada para servir como base para projetos **Laravel**. Inclui extensões essenciais, ferramentas de desenvolvimento e configurações de performance.

## 🚀 Principais Recursos

- **Baseada na Imagem Oficial:** Construída sobre a imagem `php:8.4-fpm`, garantindo estabilidade e segurança.
- **Pronta para Laravel:** Inclui as extensões mais comuns necessárias para o ecossistema Laravel, como `pdo_mysql`, `redis`, `gd`, `zip` e `bcmath`.
- **Ferramentas de Desenvolvimento:** Vem com `Composer` para gerenciamento de dependências, `Xdebug` para debugging e `Supervisor` para gerenciamento de processos (como workers de fila).
- **Otimizada para Containers:** Projetada para funcionar perfeitamente em um ambiente de microserviços com Nginx, MySQL/PostgreSQL, Redis, etc.
- **Leve e Eficiente:** Configurações otimizadas para um bom equilíbrio entre performance e funcionalidades.

## 🛠️ Como Usar

### 1. Usando em um docker-compose.yml

Você pode usar esta imagem como base para seu serviço PHP/Laravel em um ambiente Docker:

```yaml
services:
  app:
    image: elessandrodev/php-core:v1.0.2
    container_name: laravel_app
    working_dir: /var/www
    volumes:
      - .:/var/www
    command: php-fpm
    ports:
      - "9000:9000"
    networks:
      - laravel_net

networks:
  laravel_net:
    driver: bridge

```
## 📄 Licença

Este projeto está licenciado sob os termos da [MIT License](LICENSE).
