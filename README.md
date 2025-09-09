# Imagem Docker PHP Core para Laravel

[![Docker Pulls](https://img.shields.io/docker/pulls/elessandrodev/php-core?style=for-the-badge&logo=docker)](https://hub.docker.com/r/elessandrodev/php-core)
[![PHP Version](https://img.shields.io/badge/PHP-8.3-777BB4?style=for-the-badge&logo=php)](https://www.php.net/)

Uma imagem Docker otimizada com **PHP 8.3-FPM**, criada para servir como base para projetos **Laravel**. Inclui extensões essenciais, ferramentas de desenvolvimento e configurações de performance.

## 🚀 Principais Recursos

- **Baseada na Imagem Oficial:** Construída sobre a imagem `php:8.3-fpm`, garantindo estabilidade e segurança.
- **Pronta para Laravel:** Inclui as extensões mais comuns necessárias para o ecossistema Laravel, como `pdo_mysql`, `redis`, `gd`, `zip` e `bcmath`.
- **Ferramentas de Desenvolvimento:** Vem com `Composer` para gerenciamento de dependências, `Xdebug` para debugging e `Supervisor` para gerenciamento de processos (como workers de fila).
- **Otimizada para Containers:** Projetada para funcionar perfeitamente em um ambiente de microserviços com Nginx, MySQL/PostgreSQL, Redis, etc.
- **Leve e Eficiente:** Configurações otimizadas para um bom equilíbrio entre performance e funcionalidades.

## 🛠️ Como Usar

### 1. Puxando a Imagem do Docker Hub

Você pode baixar a imagem diretamente do Docker Hub com o seguinte comando:

```bash
docker pull elessandrodev/php-core:php8.3