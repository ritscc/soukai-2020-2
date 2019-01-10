# frozen_string_literal: true

require_relative '../template'

class InitializeService
  include ::Template

  README_PATH       = File.expand_path('../../../../README.md', __FILE__)
  #DOCUMENT_TEX_PATH = File.expand_path('../../README.md', __FILE__)
  ASSIGNEE_YML_PATH = File.expand_path('../../../../assignee.yml', __FILE__)

  def initialize(config)
    @config = config
  end

  # 設定を元に総会文書を初期化する
  def initialize_project(readme_path)
    readme = ReadmeTemplate.new
    readme.date = @config.project_config.date
    readme.repository = @config.bitbucket_config.repository
    readme.save(README_PATH)

    document_tex = DocumentTemplate.new
    document_tex.meeting = @config.general_config.meeting
    document_tex.save(DOCUMENT_TEX_PATH)
  end
end