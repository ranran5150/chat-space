## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: false, unique: true|
|e-mail|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :groups,through::menbers
- has_many :members
- has_many :messages

## Groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index :true, null: false|


### Association
- has_many :users,through::menbers
- has_many :menbers
- has_many :messages

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|group_id|reference| null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference| null: false, foreign_key: true|
|group_id|reference|null: false, foreign_key: true|
|body|text|null: false|
|image|text|null: false|

### Association
- belongs_to :group
- belongs_to :user
