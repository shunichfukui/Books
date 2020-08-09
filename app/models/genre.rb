class Genre < ActiveHash::Base
  self.data = [
    { id: 1, type: '哲学・宗教' },
    { id: 2, type: '文学・評論' },
    { id: 3, type: '自己啓発' },
    { id: 4, type: 'ビジネス・経済' },
    { id: 5, type: 'IT・テクノロジー' },
    { id: 6, type: 'エンタメ' },
    { id: 7, type: '歴史' },
    { id: 8, type: '政治' },
    { id: 9, type: '趣味' },
    { id: 10, type: '料理' },
    { id: 11, type: '漫画' },
    { id: 12, type: 'その他' }
  ]
end
