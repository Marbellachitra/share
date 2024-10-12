class AITool {
  String name;
  String category;
  String description;
  String imageAsset;
  String link;

  AITool({
    required this.name,
    required this.category,
    required this.description,
    required this.imageAsset,
    required this.link,
  });
}

var aiToolList = [
  AITool(
    name: 'ChatGPT',
    category: 'Natural Language Processing',
    description: 'AI chatbot yang mampu melakukan percakapan dan menghasilkan teks alami berdasarkan input pengguna.',
    imageAsset: 'assets/images/chatgpt.jpg',
    link: 'https://chat.openai.com/',
  ),
  AITool(
    name: 'DALL·E',
    category: 'Generative AI',
    description: 'Model AI yang dapat menghasilkan gambar realistis dari deskripsi teks.',
    imageAsset: 'assets/images/dalle.jpg',
    link: 'https://openai.com/dall-e',
  ),
  AITool(
    name: 'Copy.ai',
    category: 'Content Creation',
    description: 'Platform AI yang membantu dalam menulis teks seperti artikel, posting media sosial, dan konten pemasaran.',
    imageAsset: 'assets/images/copyai.jpg',
    link: 'https://www.copy.ai/',
  ),
  AITool(
    name: 'Revoicer',
    category: 'Voice Synthesis',
    description: 'AI yang menghasilkan suara realistis untuk berbagai keperluan, seperti video, podcast, dan iklan.',
    imageAsset: 'assets/images/revoicer.jpg',
    link: 'https://revoicer.com/',
  ),
  AITool(
    name: 'Synthesia',
    category: 'Video Generation',
    description: 'Platform AI yang memungkinkan pembuatan video dari teks, dengan avatar digital yang berbicara.',
    imageAsset: 'assets/images/synthesia.jpg',
    link: 'https://www.synthesia.io/',
  ),
  AITool(
    name: 'Gemini AI',
    category: 'Advanced AI Systems',
    description: 'AI terbaru dari Google yang dirancang untuk menjadi lebih pintar dan lebih cepat dalam pemahaman konteks dan data.',
    imageAsset: 'assets/images/gemini.jpg',
    link: 'https://blog.google/technology/ai/introducing-google-gemini/',
  ),
  AITool(
    name: 'Beautiful AI',
    category: 'Presentation Design',
    description: 'AI yang membantu membuat presentasi yang indah dan profesional secara otomatis.',
    imageAsset: 'assets/images/beautifulai.jpg',
    link: 'https://www.beautiful.ai/',
  ),
  AITool(
    name: 'Lucidpic',
    category: 'Image Generation',
    description: 'AI yang dapat menghasilkan gambar-gambar profil profesional hanya dengan sedikit instruksi.',
    imageAsset: 'assets/images/lucidpic.jpg',
    link: 'https://www.lucidpic.com/',
  ),
  AITool(
    name: 'Plai',
    category: 'Marketing Automation',
    description: 'Platform AI yang memudahkan pembuatan kampanye pemasaran digital secara otomatis dan terukur.',
    imageAsset: 'assets/images/plai.jpg',
    link: 'https://www.plai.io/',
  ),
  AITool(
    name: 'LongShot',
    category: 'Content Research & Generation',
    description: 'AI yang membantu menghasilkan artikel panjang dan konten dengan riset mendalam dari berbagai sumber.',
    imageAsset: 'assets/images/longshot.jpg',
    link: 'https://www.longshot.ai/',
  ),
];
