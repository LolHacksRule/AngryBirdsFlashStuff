package starling.events
{
   import §&!]§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §%!T§
   {
      
      private static var §<!d§:Matrix = new Matrix();
       
      
      private var §6M§:int;
      
      private var §<"6§:Number;
      
      private var §-Q§:Number;
      
      private var §%!O§:Number;
      
      private var §,!k§:Number;
      
      private var §76§:int;
      
      private var §3!,§:String;
      
      private var §4!v§:DisplayObject;
      
      private var § C§:Number;
      
      public function §%!T§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§6M§ = param1;
         this.§<"6§ = this.§%!O§ = param2;
         this.§-Q§ = this.§,!k§ = param3;
         this.§76§ = 0;
         this.§3!,§ = param4;
         this.§4!v§ = param5;
      }
      
      public function §<!g§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§<"6§,this.§-Q§);
         this.§4!v§.root.§^""§(param1,§<!d§);
         return §<!d§.transformPoint(_loc2_);
      }
      
      public function §^!=§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%!O§,this.§,!k§);
         this.§4!v§.root.§^""§(param1,§<!d§);
         return §<!d§.transformPoint(_loc2_);
      }
      
      public function clone() : §%!T§
      {
         var _loc1_:§%!T§ = new §%!T§(this.§6M§,this.§<"6§,this.§-Q§,this.§3!,§,this.§4!v§);
         _loc1_.§%!O§ = this.§%!O§;
         _loc1_.§,!k§ = this.§,!k§;
         _loc1_.§76§ = this.§76§;
         _loc1_.§ C§ = this.§ C§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§6M§;
      }
      
      public function get globalX() : Number
      {
         return this.§<"6§;
      }
      
      public function get globalY() : Number
      {
         return this.§-Q§;
      }
      
      public function get §&!F§() : Number
      {
         return this.§%!O§;
      }
      
      public function get §;!@§() : Number
      {
         return this.§,!k§;
      }
      
      public function get § "=§() : int
      {
         return this.§76§;
      }
      
      public function get phase() : String
      {
         return this.§3!,§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§4!v§;
      }
      
      public function get timestamp() : Number
      {
         return this.§ C§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§%!O§ = this.§<"6§;
         this.§,!k§ = this.§-Q§;
         this.§<"6§ = param1;
         this.§-Q§ = param2;
      }
      
      function §-A§(param1:String) : void
      {
         this.§3!,§ = param1;
      }
      
      function §6"B§(param1:int) : void
      {
         this.§76§ = param1;
      }
      
      function §!! §(param1:DisplayObject) : void
      {
         this.§4!v§ = param1;
      }
      
      function §!w§(param1:Number) : void
      {
         this.§ C§ = param1;
      }
   }
}
