package starling.events
{
   import §@!i§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6!,§
   {
      
      private static var §>J§:Matrix = new Matrix();
       
      
      private var §?;§:int;
      
      private var §6L§:Number;
      
      private var §'!K§:Number;
      
      private var §8"'§:Number;
      
      private var §try §:Number;
      
      private var §,x§:int;
      
      private var §^!8§:String;
      
      private var §%"6§:DisplayObject;
      
      private var §`0§:Number;
      
      public function §6!,§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?;§ = param1;
         this.§6L§ = this.§8"'§ = param2;
         this.§'!K§ = this.§try § = param3;
         this.§,x§ = 0;
         this.§^!8§ = param4;
         this.§%"6§ = param5;
      }
      
      public function §27§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6L§,this.§'!K§);
         this.§%"6§.root.§2b§(param1,§>J§);
         return §>J§.transformPoint(_loc2_);
      }
      
      public function §5D§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8"'§,this.§try §);
         this.§%"6§.root.§2b§(param1,§>J§);
         return §>J§.transformPoint(_loc2_);
      }
      
      public function clone() : §6!,§
      {
         var _loc1_:§6!,§ = new §6!,§(this.§?;§,this.§6L§,this.§'!K§,this.§^!8§,this.§%"6§);
         _loc1_.§8"'§ = this.§8"'§;
         _loc1_.§try § = this.§try §;
         _loc1_.§,x§ = this.§,x§;
         _loc1_.§`0§ = this.§`0§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?;§;
      }
      
      public function get globalX() : Number
      {
         return this.§6L§;
      }
      
      public function get globalY() : Number
      {
         return this.§'!K§;
      }
      
      public function get §,8§() : Number
      {
         return this.§8"'§;
      }
      
      public function get §7i§() : Number
      {
         return this.§try §;
      }
      
      public function get §>G§() : int
      {
         return this.§,x§;
      }
      
      public function get phase() : String
      {
         return this.§^!8§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§%"6§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`0§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§8"'§ = this.§6L§;
         this.§try § = this.§'!K§;
         this.§6L§ = param1;
         this.§'!K§ = param2;
      }
      
      function §!!L§(param1:String) : void
      {
         this.§^!8§ = param1;
      }
      
      function §""9§(param1:int) : void
      {
         this.§,x§ = param1;
      }
      
      function §';§(param1:DisplayObject) : void
      {
         this.§%"6§ = param1;
      }
      
      function §+!g§(param1:Number) : void
      {
         this.§`0§ = param1;
      }
   }
}
