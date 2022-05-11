module ApplicationHelper
  def default_meta_tags
    {
      site:'つらいで押韻！',
      title: '「つらい」で韻を踏むつらい言葉を作りましょう！',
      reverse: true,
      charset: 'utf-8',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
    }
  end
end
