package starling.events
{
   import §<!-§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §9!;§
   {
      
      private static var § c§:Matrix = new Matrix();
       
      
      private var §!2§:int;
      
      private var §do§:Number;
      
      private var §9S§:Number;
      
      private var §%!R§:Number;
      
      private var §4!]§:Number;
      
      private var §?S§:int;
      
      private var §4F§:String;
      
      private var §2[§:DisplayObject;
      
      private var §2W§:Number;
      
      public function §9!;§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§!2§ = param1;
         this.§do§ = this.§%!R§ = param2;
         this.§9S§ = this.§4!]§ = param3;
         this.§?S§ = 0;
         this.§4F§ = param4;
         this.§2[§ = param5;
      }
      
      public function §27§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§do§,this.§9S§);
         this.§2[§.root.§^!V§(param1,§ c§);
         return § c§.transformPoint(_loc2_);
      }
      
      public function §@^§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§%!R§,this.§4!]§);
         this.§2[§.root.§^!V§(param1,§ c§);
         return § c§.transformPoint(_loc2_);
      }
      
      public function clone() : §9!;§
      {
         var _loc1_:§9!;§ = new §9!;§(this.§!2§,this.§do§,this.§9S§,this.§4F§,this.§2[§);
         _loc1_.§%!R§ = this.§%!R§;
         _loc1_.§4!]§ = this.§4!]§;
         _loc1_.§?S§ = this.§?S§;
         _loc1_.§2W§ = this.§2W§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§!2§;
      }
      
      public function get globalX() : Number
      {
         return this.§do§;
      }
      
      public function get globalY() : Number
      {
         return this.§9S§;
      }
      
      public function get §=R§() : Number
      {
         return this.§%!R§;
      }
      
      public function get §9!C§() : Number
      {
         return this.§4!]§;
      }
      
      public function get §=!J§() : int
      {
         return this.§?S§;
      }
      
      public function get phase() : String
      {
         return this.§4F§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§2[§;
      }
      
      public function get timestamp() : Number
      {
         return this.§2W§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§%!R§ = this.§do§;
         this.§4!]§ = this.§9S§;
         this.§do§ = param1;
         this.§9S§ = param2;
      }
      
      function §#!,§(param1:String) : void
      {
         this.§4F§ = param1;
      }
      
      function §26§(param1:int) : void
      {
         this.§?S§ = param1;
      }
      
      function §<!P§(param1:DisplayObject) : void
      {
         this.§2[§ = param1;
      }
      
      function §0K§(param1:Number) : void
      {
         this.§2W§ = param1;
      }
   }
}
