package starling.events
{
   import §'!&§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §^!w§
   {
      
      private static var §9O§:Matrix = new Matrix();
       
      
      private var §&B§:int;
      
      private var §"!W§:Number;
      
      private var §;",§:Number;
      
      private var §@!p§:Number;
      
      private var §>8§:Number;
      
      private var § f§:int;
      
      private var §?">§:String;
      
      private var §+!>§:DisplayObject;
      
      private var §&F§:Number;
      
      public function §^!w§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§&B§ = param1;
         this.§"!W§ = this.§@!p§ = param2;
         this.§;",§ = this.§>8§ = param3;
         this.§ f§ = 0;
         this.§?">§ = param4;
         this.§+!>§ = param5;
      }
      
      public function §&T§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"!W§,this.§;",§);
         this.§+!>§.root.§+"F§(param1,§9O§);
         return §9O§.transformPoint(_loc2_);
      }
      
      public function §>!^§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§@!p§,this.§>8§);
         this.§+!>§.root.§+"F§(param1,§9O§);
         return §9O§.transformPoint(_loc2_);
      }
      
      public function clone() : §^!w§
      {
         var _loc1_:§^!w§ = new §^!w§(this.§&B§,this.§"!W§,this.§;",§,this.§?">§,this.§+!>§);
         _loc1_.§@!p§ = this.§@!p§;
         _loc1_.§>8§ = this.§>8§;
         _loc1_.§ f§ = this.§ f§;
         _loc1_.§&F§ = this.§&F§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§&B§;
      }
      
      public function get globalX() : Number
      {
         return this.§"!W§;
      }
      
      public function get globalY() : Number
      {
         return this.§;",§;
      }
      
      public function get §4W§() : Number
      {
         return this.§@!p§;
      }
      
      public function get §7![§() : Number
      {
         return this.§>8§;
      }
      
      public function get §6!>§() : int
      {
         return this.§ f§;
      }
      
      public function get phase() : String
      {
         return this.§?">§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§+!>§;
      }
      
      public function get timestamp() : Number
      {
         return this.§&F§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§@!p§ = this.§"!W§;
         this.§>8§ = this.§;",§;
         this.§"!W§ = param1;
         this.§;",§ = param2;
      }
      
      function §`R§(param1:String) : void
      {
         this.§?">§ = param1;
      }
      
      function §-!6§(param1:int) : void
      {
         this.§ f§ = param1;
      }
      
      function §&X§(param1:DisplayObject) : void
      {
         this.§+!>§ = param1;
      }
      
      function §0![§(param1:Number) : void
      {
         this.§&F§ = param1;
      }
   }
}
