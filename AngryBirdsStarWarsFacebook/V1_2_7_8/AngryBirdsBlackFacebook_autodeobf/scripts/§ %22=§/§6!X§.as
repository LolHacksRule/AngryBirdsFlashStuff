package § "=§
{
   import §@##§.§#^§;
   
   public class §6!X§ implements §#^§
   {
       
      
      public var level:String;
      
      public var itemID:String;
      
      public var allowed:Boolean;
      
      public var balance:int;
      
      public var §2!'§:String;
      
      public var starCoins:Number;
      
      public function §6!X§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         this.level = param1.level;
         this.itemID = param1.item;
         this.allowed = param1.allowed;
         this.balance = param1.newBalance;
         this.§2!'§ = param1.playSessionToken;
         this.starCoins = param1.starCoins == undefined ? Number(NaN) : Number(param1.starCoins);
      }
   }
}
