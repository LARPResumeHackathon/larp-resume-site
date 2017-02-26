# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170225235104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string   "name",            null: false
    t.text     "description"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organization_id"], name: "index_campaigns_on_organization_id", using: :btree
  end

  create_table "campaigns_editors", force: :cascade do |t|
    t.integer  "campaign_id", null: false
    t.integer  "editor_id",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["campaign_id"], name: "index_campaigns_editors_on_campaign_id", using: :btree
    t.index ["editor_id"], name: "index_campaigns_editors_on_editor_id", using: :btree
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_characters_on_game_id", using: :btree
  end

  create_table "characters_editors", force: :cascade do |t|
    t.integer  "character_id", null: false
    t.integer  "editor_id",    null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_characters_editors_on_character_id", using: :btree
    t.index ["editor_id"], name: "index_characters_editors_on_editor_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.string   "title",           null: false
    t.text     "description"
    t.string   "website"
    t.integer  "min_player_size"
    t.integer  "max_player_size"
    t.string   "run_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "games_authors", force: :cascade do |t|
    t.integer  "game_id",    null: false
    t.integer  "author_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_games_authors_on_author_id", using: :btree
    t.index ["game_id"], name: "index_games_authors_on_game_id", using: :btree
  end

  create_table "games_editors", force: :cascade do |t|
    t.integer  "game_id",    null: false
    t.integer  "editor_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["editor_id"], name: "index_games_editors_on_editor_id", using: :btree
    t.index ["game_id"], name: "index_games_editors_on_game_id", using: :btree
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "run_npcs", force: :cascade do |t|
    t.integer  "run_id",                       null: false
    t.integer  "npc_id",                       null: false
    t.integer  "character_id",                 null: false
    t.boolean  "private",      default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["character_id"], name: "index_run_npcs_on_character_id", using: :btree
    t.index ["npc_id"], name: "index_run_npcs_on_npc_id", using: :btree
    t.index ["run_id"], name: "index_run_npcs_on_run_id", using: :btree
  end

  create_table "run_players", force: :cascade do |t|
    t.integer  "run_id",                       null: false
    t.integer  "player_id",                    null: false
    t.integer  "character_id",                 null: false
    t.boolean  "private",      default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["character_id"], name: "index_run_players_on_character_id", using: :btree
    t.index ["player_id"], name: "index_run_players_on_player_id", using: :btree
    t.index ["run_id"], name: "index_run_players_on_run_id", using: :btree
  end

  create_table "runs", force: :cascade do |t|
    t.string   "website"
    t.text     "description"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "game_id",                        null: false
    t.string   "location"
    t.boolean  "private",        default: false, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["game_id"], name: "index_runs_on_game_id", using: :btree
  end

  create_table "runs_editors", force: :cascade do |t|
    t.integer  "run_id",     null: false
    t.integer  "editor_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["editor_id"], name: "index_runs_editors_on_editor_id", using: :btree
    t.index ["run_id"], name: "index_runs_editors_on_run_id", using: :btree
  end

  create_table "runs_gms", force: :cascade do |t|
    t.integer  "run_id",     null: false
    t.integer  "gm_id",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gm_id"], name: "index_runs_gms_on_gm_id", using: :btree
    t.index ["run_id"], name: "index_runs_gms_on_run_id", using: :btree
  end

  create_table "session_npcs", force: :cascade do |t|
    t.integer  "session_id",                   null: false
    t.integer  "npc_id",                       null: false
    t.integer  "character_id",                 null: false
    t.boolean  "private",      default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["character_id"], name: "index_session_npcs_on_character_id", using: :btree
    t.index ["npc_id"], name: "index_session_npcs_on_npc_id", using: :btree
    t.index ["session_id"], name: "index_session_npcs_on_session_id", using: :btree
  end

  create_table "session_players", force: :cascade do |t|
    t.integer  "session_id",                   null: false
    t.integer  "player_id",                    null: false
    t.integer  "character_id",                 null: false
    t.boolean  "private",      default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["character_id"], name: "index_session_players_on_character_id", using: :btree
    t.index ["player_id"], name: "index_session_players_on_player_id", using: :btree
    t.index ["session_id"], name: "index_session_players_on_session_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "title",                          null: false
    t.text     "description"
    t.string   "website"
    t.integer  "campaign_id",                    null: false
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "location"
    t.boolean  "private",        default: false, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["campaign_id"], name: "index_sessions_on_campaign_id", using: :btree
  end

  create_table "sessions_gms", force: :cascade do |t|
    t.integer  "session_id", null: false
    t.integer  "gm_id",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gm_id"], name: "index_sessions_gms_on_gm_id", using: :btree
    t.index ["session_id"], name: "index_sessions_gms_on_session_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.text     "about_me"
    t.string   "display_name",                           null: false
    t.boolean  "admin",                  default: false, null: false
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "campaigns", "organizations"
  add_foreign_key "campaigns_editors", "campaigns"
  add_foreign_key "campaigns_editors", "users", column: "editor_id"
  add_foreign_key "characters", "games"
  add_foreign_key "characters_editors", "characters"
  add_foreign_key "characters_editors", "users", column: "editor_id"
  add_foreign_key "games_authors", "games"
  add_foreign_key "games_authors", "users", column: "author_id"
  add_foreign_key "games_editors", "games"
  add_foreign_key "games_editors", "users", column: "editor_id"
  add_foreign_key "run_npcs", "characters"
  add_foreign_key "run_npcs", "runs"
  add_foreign_key "run_npcs", "users", column: "npc_id"
  add_foreign_key "run_players", "characters"
  add_foreign_key "run_players", "runs"
  add_foreign_key "run_players", "users", column: "player_id"
  add_foreign_key "runs", "games"
  add_foreign_key "runs_editors", "runs"
  add_foreign_key "runs_editors", "users", column: "editor_id"
  add_foreign_key "runs_gms", "runs"
  add_foreign_key "runs_gms", "users", column: "gm_id"
  add_foreign_key "session_npcs", "characters"
  add_foreign_key "session_npcs", "sessions"
  add_foreign_key "session_npcs", "users", column: "npc_id"
  add_foreign_key "session_players", "characters"
  add_foreign_key "session_players", "sessions"
  add_foreign_key "session_players", "users", column: "player_id"
  add_foreign_key "sessions", "campaigns"
  add_foreign_key "sessions_gms", "sessions"
  add_foreign_key "sessions_gms", "users", column: "gm_id"
end
