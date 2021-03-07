#userテーブル
|  Column          | Type       | Options                 |
| ---------------- | ---------- | ------------------------|
|email             |   string   | unique: true  null:false|
|encrypted_password|   string   |    NOT NULL             |
|nickname          |   string   |    NOT NULL             |
|name              |   string   |    NOT NULL             |
|height            |  integer   |    NOT NULL             |
|sex_id               |  integer   |    NOT NULL             |
|age               |  integer   |    NOT NULL             |



### Association
- has_many :posts
- has_many :comment

##postテーブル
|  Column          | Type       | Options                 |
| ---------------- | ---------- |  -----------------------|
|outer             |   string   |                         |
|tops              |   string   |    NOT NULL             |
|pants             |   string   |    NOT NULL             |
|shoes             |   string   |    NOT NULL             |
|hat               |   string   |                         |
|accessory         |   string   |                         |
|posted_date       |   date     |    NOT NULL             |
|season_id         |   integer  |    NOT NULL             |
|user              | references |   foreign_key: true     |

### Association
- has_many   :comment
- belongs_to :user

##commentテーブル
|  Column     | Type       | Options                  |
| ----------- | ---------- |  ------------------------|
|user         | references |   foreign_key: true      |
|post         | references |   foreign_key: true      |
|text         |    text    |    NOT NULL              |

### Association
- belongs_to :user
- belongs_to :post
