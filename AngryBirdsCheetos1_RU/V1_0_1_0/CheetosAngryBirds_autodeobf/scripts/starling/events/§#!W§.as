package starling.events
{
   import §&!5§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#!W§
   {
      
      private static var §?!9§:Matrix = new Matrix();
       
      
      private var §8!F§:int;
      
      private var §?y§:Number;
      
      private var §19§:Number;
      
      private var §3>§:Number;
      
      private var §]c§:Number;
      
      private var §]!G§:int;
      
      private var §9!Y§:String;
      
      private var §&7§:DisplayObject;
      
      private var §9!N§:Number;
      
      public function §#!W§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§8!F§ = param1;
         this.§?y§ = this.§3>§ = param2;
         this.§19§ = this.§]c§ = param3;
         this.§]!G§ = 0;
         this.§9!Y§ = param4;
         this.§&7§ = param5;
      }
      
      public function §return§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§?y§,this.§19§);
         this.§&7§.root.§@!X§(param1,§?!9§);
         return §?!9§.transformPoint(_loc2_);
      }
      
      public function §!k§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§3>§,this.§]c§);
         this.§&7§.root.§@!X§(param1,§?!9§);
         return §?!9§.transformPoint(_loc2_);
      }
      
      public function clone() : §#!W§
      {
         var _loc1_:§#!W§ = new §#!W§(this.§8!F§,this.§?y§,this.§19§,this.§9!Y§,this.§&7§);
         _loc1_.§3>§ = this.§3>§;
         _loc1_.§]c§ = this.§]c§;
         _loc1_.§]!G§ = this.§]!G§;
         _loc1_.§9!N§ = this.§9!N§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8!F§;
      }
      
      public function get globalX() : Number
      {
         return this.§?y§;
      }
      
      public function get globalY() : Number
      {
         return this.§19§;
      }
      
      public function get §8!G§() : Number
      {
         return this.§3>§;
      }
      
      public function get §%!X§() : Number
      {
         return this.§]c§;
      }
      
      public function get §9!O§() : int
      {
         return this.§]!G§;
      }
      
      public function get phase() : String
      {
         return this.§9!Y§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&7§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9!N§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§3>§ = this.§?y§;
         this.§]c§ = this.§19§;
         this.§?y§ = param1;
         this.§19§ = param2;
      }
      
      function §try§(param1:String) : void
      {
         this.§9!Y§ = param1;
      }
      
      function § !Z§(param1:int) : void
      {
         this.§]!G§ = param1;
      }
      
      function §;S§(param1:DisplayObject) : void
      {
         this.§&7§ = param1;
      }
      
      function §6!U§(param1:Number) : void
      {
         this.§9!N§ = param1;
      }
   }
}
