package starling.events
{
   import §2!g§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §'t§
   {
      
      private static var §#f§:Matrix = new Matrix();
       
      
      private var §0V§:int;
      
      private var §,7§:Number;
      
      private var §?!1§:Number;
      
      private var §38§:Number;
      
      private var §=!d§:Number;
      
      private var §!q§:int;
      
      private var §?!Q§:String;
      
      private var §[e§:DisplayObject;
      
      private var §-w§:Number;
      
      public function §'t§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§0V§ = param1;
         this.§,7§ = this.§38§ = param2;
         this.§?!1§ = this.§=!d§ = param3;
         this.§!q§ = 0;
         this.§?!Q§ = param4;
         this.§[e§ = param5;
      }
      
      public function §+!k§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§,7§,this.§?!1§);
         this.§[e§.root.§^i§(param1,§#f§);
         return §#f§.transformPoint(_loc2_);
      }
      
      public function §3!U§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§38§,this.§=!d§);
         this.§[e§.root.§^i§(param1,§#f§);
         return §#f§.transformPoint(_loc2_);
      }
      
      public function clone() : §'t§
      {
         var _loc1_:§'t§ = new §'t§(this.§0V§,this.§,7§,this.§?!1§,this.§?!Q§,this.§[e§);
         _loc1_.§38§ = this.§38§;
         _loc1_.§=!d§ = this.§=!d§;
         _loc1_.§!q§ = this.§!q§;
         _loc1_.§-w§ = this.§-w§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§0V§;
      }
      
      public function get globalX() : Number
      {
         return this.§,7§;
      }
      
      public function get globalY() : Number
      {
         return this.§?!1§;
      }
      
      public function get §'L§() : Number
      {
         return this.§38§;
      }
      
      public function get §7l§() : Number
      {
         return this.§=!d§;
      }
      
      public function get §8@§() : int
      {
         return this.§!q§;
      }
      
      public function get phase() : String
      {
         return this.§?!Q§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§[e§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-w§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§38§ = this.§,7§;
         this.§=!d§ = this.§?!1§;
         this.§,7§ = param1;
         this.§?!1§ = param2;
      }
      
      function §6!I§(param1:String) : void
      {
         this.§?!Q§ = param1;
      }
      
      function §4%§(param1:int) : void
      {
         this.§!q§ = param1;
      }
      
      function §3E§(param1:DisplayObject) : void
      {
         this.§[e§ = param1;
      }
      
      function §[a§(param1:Number) : void
      {
         this.§-w§ = param1;
      }
   }
}
