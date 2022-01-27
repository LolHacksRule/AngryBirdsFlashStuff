package §2!!§
{
   import §;#Q§.§>#I§;
   
   public class §7#7§ implements §>#I§
   {
       
      
      public var level:String;
      
      public var itemID:String;
      
      public var allowed:Boolean;
      
      public var balance:int;
      
      public var §3""§:String;
      
      public var starCoins:Number;
      
      public function §7#7§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         this.level = param1.level;
         this.itemID = param1.item;
         this.allowed = param1.allowed;
         this.balance = param1.newBalance;
         this.§3""§ = param1.playSessionToken;
         this.starCoins = param1.starCoins == undefined ? Number(NaN) : Number(param1.starCoins);
      }
   }
}
