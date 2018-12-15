## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null: true, unique: true,foreign_key: false|
|e-mail|string|index: false, null: true, unique: true,foreign_key: false|
|password|string|index: false, null: true, unique: true,foreign_key: false|

### Association
- has_many :groups,through::menbers
- has_many :members
- has_many :messages

## Groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: false, null: true, unique: false,foreign_key: false|


### Association
- has_many :users,through::menbers
- has_many :menbers
- has_many :messages

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|index: true, null: false, unique: false, foreign_key: true|
|group_id|integer|index: false, null: false, unique: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|index: true, null: false, unique: false, foreign_key: true|
|group_id|integer|index: true, null: false, unique: false, foreign_key: true|
|body|text|index: false, null: true, unique: false, foreign_key: false|
|image|text|index: false, null: true, unique: false, foreign_key: false|

### Association
- belongs_to :group
- belongs_to :user
