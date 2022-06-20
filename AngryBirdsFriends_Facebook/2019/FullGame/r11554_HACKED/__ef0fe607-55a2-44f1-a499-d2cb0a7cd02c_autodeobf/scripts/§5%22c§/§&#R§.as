package §5"c§
{
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §&#R§ extends Event
   {
      
      public static const §4"V§:String = "tabClicked";
      
      public static const §+!a§:String = "itemBuy";
       
      
      private var §'$$§:§,!K§;
      
      private var §^"v§:§<#a§;
      
      private var § -§:Point;
      
      private var §5C§:String;
      
      public function §&#R§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§,!K§ = null, param6:§<#a§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§'$$§ = param5;
         this.§^"v§ = param6;
         this.§ -§ = param7;
         this.§5C§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§ -§;
      }
      
      public function get pricePoint() : §<#a§
      {
         return this.§^"v§;
      }
      
      public function get §4">§() : §,!K§
      {
         return this.§'$$§;
      }
      
      public function get §^!b§() : String
      {
         return this.§5C§;
      }
   }
}
