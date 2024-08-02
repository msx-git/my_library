import '../models/file_model.dart';

class FileRepository {
  List<FileModel> books = [
    FileModel(
      id: 1,
      title: "Alibaba",
      author: "Jack Ma",
      rating: 4.7,
      price: 9.9,
      synopsis:
          "'Alibaba' offers a comprehensive look into the life of Jack Ma, the founder of Alibaba Group, and how he built one of the largest e-commerce companies in the world. It delves into his early life, the challenges he faced, and the innovative strategies he employed to overcome obstacles and achieve success. The book also explores the cultural and economic impact of Alibaba on China and the global market, providing valuable insights into the principles and values that guided Ma and his team.",
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225344.png?alt=media&token=0c29a2ce-b1a2-4549-a951-e2419f6e408c",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Alibaba.pdf?alt=media&token=965eb5c6-0053-4cc0-9187-1d1e9662ec40",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 2,
      title: "Oppog'oy va etti gnom",
      author: "Author 2",
      rating: 4.5,
      price: 7.9,
      synopsis:
          '"Oppog\'oy va etti gnom" is a delightful retelling of the classic fairy tale of Snow White and the Seven Dwarfs. It follows the journey of Oppog\'oy, a beautiful young girl who is forced to flee from her wicked stepmother. She finds refuge with seven kind-hearted dwarfs who help her navigate the challenges posed by her stepmother\'s relentless pursuit. The story is rich with themes of friendship, bravery, and the triumph of good over evil, making it a timeless tale cherished by readers of all ages.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225407.png?alt=media&token=677eea8e-0824-4929-9d47-4d0334c02c50",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Oppog'oy%20va%20etti%20gnom.%20Ertak.pdf?alt=media&token=b09aca8b-f0fc-4323-b23f-8ce5fc01ec26",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 3,
      title: "Qizil qalpoqcha",
      author: "Author 3",
      rating: 4.3,
      price: 5.6,
      synopsis:
          '"Qizil qalpoqcha" presents a captivating version of the beloved story of Little Red Riding Hood. It narrates the adventures of Qizil qalpoqcha, a young girl who embarks on a journey through the forest to visit her grandmother. Along the way, she encounters a cunning wolf who devises a plan to eat both her and her grandmother. The tale highlights themes of caution, cleverness, and the importance of listening to wise advice. This classic story is brought to life with vivid descriptions and engaging storytelling.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225428.png?alt=media&token=beae30ca-ef2d-497a-85fa-4d5284eaf821",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Qizil%20qalpoqcha.%20Ertak.pdf?alt=media&token=8a88ffc4-857d-4b4e-876f-5834d140f353",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 4,
      title: "Жаҳолат қурбонлари",
      author: "Author 4",
      rating: 4.6,
      price: 7.9,
      synopsis:
          '"Жаҳолат қурбонлари" is a poignant exploration of the devastating effects of ignorance and superstition on individuals and communities. The book presents a series of interconnected stories that illustrate how lack of education and understanding can lead to tragic consequences. Through its compelling narratives, the book calls for greater awareness and enlightenment, urging readers to challenge prejudices and seek knowledge. It is a powerful reminder of the human cost of ignorance and the transformative power of education.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225442.png?alt=media&token=a7cd6e3c-1869-446c-8dae-073247ccad76",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%96%D0%B0%D2%B3%D0%BE%D0%BB%D0%B0%D1%82%20%D2%9B%D1%83%D1%80%D0%B1%D0%BE%D0%BD%D0%BB%D0%B0%D1%80%D0%B8.pdf?alt=media&token=1ae9d80b-55df-453c-bb9d-414318ae2bea",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 5,
      title: "Мен ва пул",
      author: "Author 5",
      rating: 4.4,
      price: 6.8,
      synopsis:
          '"Мен ва пул" is a practical guide to personal finance and money management. The book offers actionable advice on a wide range of financial topics, including budgeting, saving, investing, and debt management. It also addresses the psychological aspects of money, helping readers understand their financial behaviors and attitudes. Through real-life examples and step-by-step strategies, the book empowers readers to take control of their finances, achieve their financial goals, and build a secure financial future.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225456.png?alt=media&token=5ba55ba7-6f83-4b87-a6e2-eb588ee8291b",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%9C%D0%B5%D0%BD%20%D0%B2%D0%B0%20%D0%BF%D1%83%D0%BB.pdf?alt=media&token=d852ea03-ebab-4708-b39e-5590a31565d9",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 6,
      title: "Салим Ашур -Атиргул",
      author: "Salim Ashur",
      rating: 4.8,
      price: 6.2,
      synopsis:
          '"Салим Ашур -Атиргул" is a beautifully crafted narrative by Salim Ashur that explores the symbolism and cultural significance of the Atirgul flower. The book weaves together folklore, history, and personal anecdotes to paint a vivid picture of how this flower has been revered in various cultures. It delves into the botanical characteristics of Atirgul, its medicinal properties, and its role in art and literature. The book is a celebration of nature\'s beauty and a testament to the deep connections between humans and the natural world.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225509.png?alt=media&token=62759091-cdd7-466e-90e2-e213874e81a3",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%A1%D0%B0%D0%BB%D0%B8%D0%BC%20%D0%90%D1%88%D1%83%D1%80%20-%D0%90%D1%82%D0%B8%D1%80%D0%B3%D1%83%D0%BB.pdf?alt=media&token=db6f2c62-3fb7-481e-9836-c4a7164b21eb",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 7,
      title: "Самые_мудрые_притчи_и_афоризмы_Омара_Хайяма",
      author: "Omar Khayyam",
      rating: 4.9,
      price: 12.5,
      synopsis:
          '"Самые_мудрые_притчи_и_афоризмы_Омара_Хайяма" is a collection of the wisest parables and aphorisms of Omar Khayyam, the renowned Persian poet, philosopher, and mathematician. Each entry in this book offers profound insights into life, love, and the human condition. The parables are thought-provoking and timeless, encouraging readers to reflect on their own lives and the world around them. This collection is a treasure trove of wisdom that continues to resonate with readers across generations.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225524.png?alt=media&token=ffcc3338-9c47-46d4-af4f-10b083032a3c",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%A1%D0%B0%D0%BC%D1%8B%D0%B5_%D0%BC%D1%83%D0%B4%D1%80%D1%8B%D0%B5_%D0%BF%D1%80%D0%B8%D1%82%D1%87%D0%B8_%D0%B8_%D0%B0%D1%84%D0%BE%D1%80%D0%B8%D0%B7%D0%BC%D1%8B_%D0%9E%D0%BC%D0%B0%D1%80%D0%B0_%D0%A5%D0%B0%D0%B9%D1%8F%D0%BC%D0%B0.pdf?alt=media&token=15e4fac8-2216-4a85-a8ec-48fd9e6edf34",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 8,
      title: "Скотный двор",
      author: "George Orwell",
      rating: 4.7,
      price: 3.6,
      synopsis:
          '"Скотный двор" (Animal Farm) by George Orwell is a satirical novella that uses a farm and its inhabitants to allegorically represent the Russian Revolution of 1917 and the subsequent rise of the Soviet Union. The story follows the animals on Mr. Jones\'s farm as they revolt against their human owner, only to find themselves under the tyranny of a pig named Napoleon. The book explores themes of power, corruption, and betrayal, highlighting how ideals can be subverted by those in authority. It remains a powerful critique of totalitarianism and a cautionary tale about the fragility of freedom.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225548.png?alt=media&token=70420ac6-600d-456d-9670-d8877afa5091",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%A1%D0%BA%D0%BE%D1%82%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%B2%D0%BE%D1%80.pdf?alt=media&token=361cf0d0-3081-4a64-89ef-efd45839cf29",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 9,
      title: "Тренируем мозг и память",
      author: "Author 9",
      rating: 4.2,
      price: 15.8,
      synopsis:
          '"Тренируем мозг и память" is an engaging guide designed to help readers improve their cognitive abilities and memory retention. The book offers a variety of exercises, techniques, and tips for boosting brain function and enhancing mental agility. It covers topics such as neuroplasticity, the impact of lifestyle choices on brain health, and strategies for maintaining cognitive sharpness as one ages. With practical advice and scientifically-backed methods, this book is an invaluable resource for anyone looking to keep their mind active and healthy.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225606.png?alt=media&token=eede2a19-890d-4bbc-81d0-9922e1eef0b1",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%A2%D1%80%D0%B5%D0%BD%D0%B8%D1%80%D1%83%D0%B5%D0%BC%20%D0%BC%D0%BE%D0%B7%D0%B3%20%D0%B8%20%D0%BF%D0%B0%D0%BC%D1%8F%D1%82%D1%8C.pdf?alt=media&token=7292ddae-793c-4797-9af7-e95a5b35c114",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
    FileModel(
      id: 10,
      title: "Эрнест_Хемингуэй_Иметь_или_не_иметь",
      author: "Ernest Hemingway",
      rating: 4.6,
      price: 4.6,
      synopsis:
          '"Эрнест_Хемингуэй_Иметь_или_не_иметь" (To Have and Have Not) by Ernest Hemingway is a gripping tale set in the tumultuous era of the Great Depression. The story follows Harry Morgan, a fishing boat captain in Key West, Florida, who turns to smuggling to support his family. As he navigates the dangerous world of illegal trade, Harry grapples with moral dilemmas and the harsh realities of survival. The book is a powerful exploration of human resilience, economic disparity, and the complexities of right and wrong in desperate times.',
      coverUrl:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/Screenshot%202024-08-01%20225619.png?alt=media&token=4245701a-17ce-422a-8332-ff5dfba54a33",
      url:
          "https://firebasestorage.googleapis.com/v0/b/flutter-day-46.appspot.com/o/%D0%AD%D1%80%D0%BD%D0%B5%D1%81%D1%82_%D0%A5%D0%B5%D0%BC%D0%B8%D0%BD%D0%B3%D1%83%D1%8D%D0%B8%CC%86_%D0%98%D0%BC%D0%B5%D1%82%D1%8C_%D0%B8%D0%BB%D0%B8_%D0%BD%D0%B5_%D0%B8%D0%BC%D0%B5%D1%82%D1%8C.pdf?alt=media&token=8603d36d-5160-4284-b845-1b670f13ab67",
      savePath: "",
      progress: 0,
      isLoading: false,
      isDownloaded: false,
    ),
  ];
}
