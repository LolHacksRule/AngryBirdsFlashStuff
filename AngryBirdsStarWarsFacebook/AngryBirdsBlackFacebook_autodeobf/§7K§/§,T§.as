package §7K§
{
   public class §,T§
   {
       
      
      public var itemID:String;
      
      public var quantity:int;
      
      public var price:int;
      
      public var normalPrice:int;
      
      public var singlePrice:int;
      
      public var §%D§:Boolean;
      
      public var text:String;
      
      public function §,T§(param1:String, param2:int, param3:int, param4:String = "", param5:Boolean = false, param6:int = -1, param7:int = -1)
      {
         super();
         this.itemID = param1;
         this.quantity = param2;
         this.price = param3;
         this.text = param4;
         this.§%D§ = param5;
         this.normalPrice = param6;
         this.singlePrice = param7;
      }
      
      public function toString() : String
      {
         return "[Prices itemID[" + this.itemID + "], quantity:" + this.quantity + ", price:" + this.price + ", normalPrice:" + this.normalPrice + ", singlePrice:" + this.singlePrice + ", sale:" + this.§%D§ + "]";
      }
   }
}
