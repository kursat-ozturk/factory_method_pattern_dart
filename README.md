# factory_method_pattern_dart

# Factory Method Pattern

Factory Method Pattern, nesne odaklı programlamada nesne oluşturma işlemini soyutlamak ve esneklik sağlamak için kullanılan bir kalıptır. Amacı, hangi nesnenin oluşturulacağını kod içinde açıkça belirtmek yerine, bir fabrika yöntemi aracılığıyla kararlaştırmaktır. Bu sayede, farklı nesne türleri kolayca eklenebilir veya değiştirilebilir ve kod daha bakımı kolay hale gelir.

İşte kalıbın temel özellikleri:

## Factory Method: 

- Factory Method: Nesne oluşturma logic'sinin bulunduğu bir yöntemdir. Bu yöntem genellikle soyut sınıf veya arayüzde tanımlanır.
- Alt Sınıflar(Subclass): Soyut sınıf veya arayüzü miras alan alt sınıflar, kendilerine ait nesne oluşturma logic'sini fabrika yöntemini yeniden yazarak belirlerler.
- Client: Factory yöntemini çağırarak nesne oluşturan kod bölümüdür. Client, hangi alt sınıfın fabrika yönteminin kullanılacağını bilmez ve sadece soyut sınıf veya arayüz referansı ile çalışır.

## Factory Methot Pattern'ın faydaları şunlardır:

- Esneklik: Yeni nesne türleri eklemek veya var olanları değiştirmek kolaydır.
- Kodun Daha Bakılabilir Olması: Nesne oluşturma logic'si tek bir yerde toplanır ve yeniden kullanılabilir.
- Bağımlılık Yönetimi: Client, hangi nesne türünün oluşturulacağını bilmediği için, alt sınıfların detaylarına bağlı değildir.
- Factory Method Pattern, çeşitli durumlarda kullanılabilir. Örneğin, bir oyun geliştirirken farklı düşman türleri oluşturabilir, bir grafik programında farklı - şekiller çizebilir veya bir ağ uygulamasında farklı bağlantı protokolleri kullanabilirsiniz.
