package §"z§
{
   import flash.events.Event;
   
   public class §]#q§ extends Event
   {
      
      public static const OPEN_COIN_SHOP:String = "openCoinShop";
      
      public static const §3#g§:String = "amountChanged";
       
      
      public var §>!2§:int;
      
      public var §!"B§:int;
      
      public function §]#q§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0)
      {
         super(param1,param2,param3);
         this.§>!2§ = param4;
         this.§!"B§ = param5;
      }
   }
}
