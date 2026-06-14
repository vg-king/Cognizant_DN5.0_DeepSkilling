package EcommercePlatformSearchFunction;

public class SearchDemo {
    public static Product linearSearch(Product products[],String target){
        for (Product product:products){
            if (product.productName.equalsIgnoreCase(target)){
                return product;
            }
        }
        return null;
    }
    public static Product binarySearch(Product products[],String target){
        int l=0;
        int r = products.length-1;
        while (l<=r){
            int mid = (l+r)/2;
            int compare = products[mid].productName.compareToIgnoreCase(target);
            if (compare==0) return products[mid];
            else if (compare<0) l=mid+1;
            else r=mid-1;
        }
        return null;
    }

    public static void main(String[] args) {
        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Mobile", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories")
        };
        Product ans = linearSearch(products,"Shoes");
        if (ans!=null){
            System.out.println("Linear Search Found: "+ans.productName);
        }
        Product ans2 = binarySearch(products,"Shoes");
        if (ans2!=null) System.out.println("Binary Search Found: "+ans2.productName);
    }
}
