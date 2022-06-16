package §2"5§
{
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class include extends Event
   {
      
      public static const §#]§:String = "tabClicked";
      
      public static const §@"s§:String = "itemBuy";
       
      
      private var §!!b§:§"#x§;
      
      private var §+$'§:§##P§;
      
      private var §0$4§:Point;
      
      private var §]!l§:String;
      
      public function include(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:§"#x§ = null, param6:§##P§ = null, param7:Point = null)
      {
         super(param1,param3,param4);
         this.§!!b§ = param5;
         this.§+$'§ = param6;
         this.§0$4§ = param7;
         this.§]!l§ = param2;
      }
      
      public function get point() : Point
      {
         return this.§0$4§;
      }
      
      public function get pricePoint() : §##P§
      {
         return this.§+$'§;
      }
      
      public function get §2"X§() : §"#x§
      {
         return this.§!!b§;
      }
      
      public function get §"!Q§() : String
      {
         return this.§]!l§;
      }
   }
}
