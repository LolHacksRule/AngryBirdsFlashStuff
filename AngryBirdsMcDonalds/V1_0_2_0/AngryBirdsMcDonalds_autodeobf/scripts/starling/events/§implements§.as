package starling.events
{
   import §5x§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §implements§
   {
      
      private static var §4U§:Matrix = new Matrix();
       
      
      private var §>Y§:int;
      
      private var §6-§:Number;
      
      private var §&g§:Number;
      
      private var §=!2§:Number;
      
      private var §#!h§:Number;
      
      private var §0,§:int;
      
      private var §3z§:String;
      
      private var §3!]§:DisplayObject;
      
      private var §"1§:Number;
      
      public function §implements§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§>Y§ = param1;
         this.§6-§ = this.§=!2§ = param2;
         this.§&g§ = this.§#!h§ = param3;
         this.§0,§ = 0;
         this.§3z§ = param4;
         this.§3!]§ = param5;
      }
      
      public function §9!G§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6-§,this.§&g§);
         this.§3!]§.root.§,!S§(param1,§4U§);
         return §4U§.transformPoint(_loc2_);
      }
      
      public function §^7§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§=!2§,this.§#!h§);
         this.§3!]§.root.§,!S§(param1,§4U§);
         return §4U§.transformPoint(_loc2_);
      }
      
      public function clone() : §implements§
      {
         var _loc1_:§implements§ = new §implements§(this.§>Y§,this.§6-§,this.§&g§,this.§3z§,this.§3!]§);
         _loc1_.§=!2§ = this.§=!2§;
         _loc1_.§#!h§ = this.§#!h§;
         _loc1_.§0,§ = this.§0,§;
         _loc1_.§"1§ = this.§"1§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§>Y§;
      }
      
      public function get globalX() : Number
      {
         return this.§6-§;
      }
      
      public function get globalY() : Number
      {
         return this.§&g§;
      }
      
      public function get § get§() : Number
      {
         return this.§=!2§;
      }
      
      public function get §@§() : Number
      {
         return this.§#!h§;
      }
      
      public function get §"@§() : int
      {
         return this.§0,§;
      }
      
      public function get phase() : String
      {
         return this.§3z§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§3!]§;
      }
      
      public function get timestamp() : Number
      {
         return this.§"1§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§=!2§ = this.§6-§;
         this.§#!h§ = this.§&g§;
         this.§6-§ = param1;
         this.§&g§ = param2;
      }
      
      function §6!%§(param1:String) : void
      {
         this.§3z§ = param1;
      }
      
      function §7!@§(param1:int) : void
      {
         this.§0,§ = param1;
      }
      
      function §!!l§(param1:DisplayObject) : void
      {
         this.§3!]§ = param1;
      }
      
      function §7A§(param1:Number) : void
      {
         this.§"1§ = param1;
      }
   }
}
