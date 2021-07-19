package starling.events
{
   import §`a§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §"!D§
   {
      
      private static var §,!?§:Matrix = new Matrix();
       
      
      private var §="§:int;
      
      private var §3d§:Number;
      
      private var §[s§:Number;
      
      private var §@!R§:Number;
      
      private var §=!8§:Number;
      
      private var §1l§:int;
      
      private var §,X§:String;
      
      private var §5!F§:DisplayObject;
      
      private var §'X§:Number;
      
      public function §"!D§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§="§ = param1;
         this.§3d§ = this.§@!R§ = param2;
         this.§[s§ = this.§=!8§ = param3;
         this.§1l§ = 0;
         this.§,X§ = param4;
         this.§5!F§ = param5;
      }
      
      public function §^P§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§3d§,this.§[s§);
         this.§5!F§.root.§`! §(param1,§,!?§);
         return §,!?§.transformPoint(_loc2_);
      }
      
      public function §@!D§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@!R§,this.§=!8§);
         this.§5!F§.root.§`! §(param1,§,!?§);
         return §,!?§.transformPoint(_loc2_);
      }
      
      public function clone() : §"!D§
      {
         var _loc1_:§"!D§ = new §"!D§(this.§="§,this.§3d§,this.§[s§,this.§,X§,this.§5!F§);
         _loc1_.§@!R§ = this.§@!R§;
         _loc1_.§=!8§ = this.§=!8§;
         _loc1_.§1l§ = this.§1l§;
         _loc1_.§'X§ = this.§'X§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§="§;
      }
      
      public function get globalX() : Number
      {
         return this.§3d§;
      }
      
      public function get globalY() : Number
      {
         return this.§[s§;
      }
      
      public function get §%N§() : Number
      {
         return this.§@!R§;
      }
      
      public function get §6!Q§() : Number
      {
         return this.§=!8§;
      }
      
      public function get §+!%§() : int
      {
         return this.§1l§;
      }
      
      public function get phase() : String
      {
         return this.§,X§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§5!F§;
      }
      
      public function get timestamp() : Number
      {
         return this.§'X§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§@!R§ = this.§3d§;
         this.§=!8§ = this.§[s§;
         this.§3d§ = param1;
         this.§[s§ = param2;
      }
      
      function §9m§(param1:String) : void
      {
         this.§,X§ = param1;
      }
      
      function §;!M§(param1:int) : void
      {
         this.§1l§ = param1;
      }
      
      function §%!;§(param1:DisplayObject) : void
      {
         this.§5!F§ = param1;
      }
      
      function §9]§(param1:Number) : void
      {
         this.§'X§ = param1;
      }
   }
}
