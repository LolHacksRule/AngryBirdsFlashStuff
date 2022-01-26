package starling.events
{
   import §!!R§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4F§
   {
      
      private static var §9]§:Matrix = new Matrix();
       
      
      private var §"!D§:int;
      
      private var §="§:Number;
      
      private var §3d§:Number;
      
      private var §[s§:Number;
      
      private var §@!R§:Number;
      
      private var §=!8§:int;
      
      private var §1l§:String;
      
      private var §2L§:DisplayObject;
      
      private var §5!'§:Number;
      
      public function §4F§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§"!D§ = param1;
         this.§="§ = this.§[s§ = param2;
         this.§3d§ = this.§@!R§ = param3;
         this.§=!8§ = 0;
         this.§1l§ = param4;
         this.§2L§ = param5;
      }
      
      public function §,X§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§="§,this.§3d§);
         this.§2L§.root.§,r§(param1,§9]§);
         return §9]§.transformPoint(_loc2_);
      }
      
      public function §^P§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[s§,this.§@!R§);
         this.§2L§.root.§,r§(param1,§9]§);
         return §9]§.transformPoint(_loc2_);
      }
      
      public function clone() : §4F§
      {
         var _loc1_:§4F§ = new §4F§(this.§"!D§,this.§="§,this.§3d§,this.§1l§,this.§2L§);
         _loc1_.§[s§ = this.§[s§;
         _loc1_.§@!R§ = this.§@!R§;
         _loc1_.§=!8§ = this.§=!8§;
         _loc1_.§5!'§ = this.§5!'§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§"!D§;
      }
      
      public function get globalX() : Number
      {
         return this.§="§;
      }
      
      public function get globalY() : Number
      {
         return this.§3d§;
      }
      
      public function get §@!D§() : Number
      {
         return this.§[s§;
      }
      
      public function get §%N§() : Number
      {
         return this.§@!R§;
      }
      
      public function get §6!Q§() : int
      {
         return this.§=!8§;
      }
      
      public function get phase() : String
      {
         return this.§1l§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§2L§;
      }
      
      public function get timestamp() : Number
      {
         return this.§5!'§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§[s§ = this.§="§;
         this.§@!R§ = this.§3d§;
         this.§="§ = param1;
         this.§3d§ = param2;
      }
      
      function §+!%§(param1:String) : void
      {
         this.§1l§ = param1;
      }
      
      function §9m§(param1:int) : void
      {
         this.§=!8§ = param1;
      }
      
      function §[v§(param1:DisplayObject) : void
      {
         this.§2L§ = param1;
      }
      
      function §;!M§(param1:Number) : void
      {
         this.§5!'§ = param1;
      }
   }
}
