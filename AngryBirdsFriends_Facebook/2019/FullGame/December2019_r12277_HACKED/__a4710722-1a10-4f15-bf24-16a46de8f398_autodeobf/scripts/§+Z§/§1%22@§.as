package §+Z§
{
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §1"@§ extends Event
   {
      
      public static const §3$9§:String = "tabClicked";
      
      public static const §1+§:String = "itemBuy";
       
      
      private var §=#Q§:§8#E§;
      
      private var §[!'§:§>"`§;
      
      private var §%""§:Point;
      
      private var §>!D§:String;
      
      public function §1"@§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§8#E§ = null, param6:§>"`§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§=#Q§ = param5;
         this.§[!'§ = param6;
         this.§%""§ = param7;
         this.§>!D§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§%""§;
      }
      
      public function get pricePoint() : §>"`§
      {
         return this.§[!'§;
      }
      
      public function get §"^§() : §8#E§
      {
         return this.§=#Q§;
      }
      
      public function get §`#V§() : String
      {
         return this.§>!D§;
      }
   }
}
