class WordsController < ApplicationController
  def show
    if params[:word_1].nil? || params[:word_2].nil? || params[:word_3].nil? || params[:word_1] == '' || params[:word_2] == '' || params[:word_3] == ''
      @word = Word.find_by(text: '全部で12種類あリます！')
    else
      words = params[:word_1] + params[:word_2] + params[:word_3]
      @word = Word.find_by(text: words)
      if @word
        @word
      else
        @word = Word.find_by(text: '残念ながらハズレです。')
      end
    end
  end
end
