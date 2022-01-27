package §9=§
{
   import §'!P§.§29§;
   
   public class §?"C§ implements §29§
   {
       
      
      public var level:String;
      
      public var itemID:String;
      
      public var allowed:Boolean;
      
      public var balance:int;
      
      public var §;"j§:String;
      
      public var starCoins:Number;
      
      public function §?"C§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         this.level = param1.level;
         this.itemID = param1.item;
         this.allowed = param1.allowed;
         this.balance = param1.newBalance;
         this.§;"j§ = param1.playSessionToken;
         this.starCoins = param1.starCoins == undefined ? Number(NaN) : Number(param1.starCoins);
      }
   }
}
