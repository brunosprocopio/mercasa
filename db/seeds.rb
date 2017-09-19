# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
{name: 'Limpeza', id: 1},
{name: 'Bebidas', id: 2},
{name: 'Carnes', id: 3},
{name: 'Bebês', id: 4},
{name: 'Alimentos', id: 5},
{name: 'Perfumaria', id: 6},
{name: 'Pets', id: 7}
])

SubCategory.create([
{name: 'Álcool & Removedores', category: Category.find(1)},
{name: 'Cozinha', category: Category.find(1)},
{name: 'Inseticida', category: Category.find(1)},
{name: 'Refrigerantes', category: Category.find(2)},
{name: 'Bovinos', category: Category.find(3)},
{name: 'Fraldas', category: Category.find(4)},
{name: 'Arroz', category: Category.find(5)},
{name: 'Sabonetes', category: Category.find(6)},
{name: 'Ração', category: Category.find(7)}
])