package §+"E§
{
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §#!S§ extends Event
   {
      
      public static const §,"p§:String = "tabClicked";
      
      public static const §8!d§:String = "itemBuy";
       
      
      private var §]#+§:§2#i§;
      
      private var §9#A§:§!#q§;
      
      private var §0!f§:Point;
      
      private var §0!S§:String;
      
      public function §#!S§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§2#i§ = null, param6:§!#q§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§]#+§ = param5;
         this.§9#A§ = param6;
         this.§0!f§ = param7;
         this.§0!S§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§0!f§;
      }
      
      public function get pricePoint() : §!#q§
      {
         return this.§9#A§;
      }
      
      public function get §in§() : §2#i§
      {
         return this.§]#+§;
      }
      
      public function get §@#v§() : String
      {
         return this.§0!S§;
      }
   }
}
