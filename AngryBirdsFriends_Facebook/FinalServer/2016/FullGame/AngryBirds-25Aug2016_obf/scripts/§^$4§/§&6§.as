package §^$4§
{
   import §"!U§.§6!J§;
   import §"!U§.§=#V§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §&6§ extends Event
   {
      
      public static const §>#O§:String = "tabClicked";
      
      public static const §'#S§:String = "itemBuy";
       
      
      private var §""Q§:§=#V§;
      
      private var §3!@§:§6!J§;
      
      private var §84§:Point;
      
      private var §^"Q§:String;
      
      public function §&6§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§=#V§ = null, param6:§6!J§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§""Q§ = param5;
         this.§3!@§ = param6;
         this.§84§ = param7;
         this.§^"Q§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§84§;
      }
      
      public function get pricePoint() : §6!J§
      {
         return this.§3!@§;
      }
      
      public function get §^$2§() : §=#V§
      {
         return this.§""Q§;
      }
      
      public function get §^##§() : String
      {
         return this.§^"Q§;
      }
   }
}
