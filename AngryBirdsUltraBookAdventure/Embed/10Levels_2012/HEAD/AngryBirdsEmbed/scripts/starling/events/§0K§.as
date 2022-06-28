package starling.events
{
   import §%-§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §0K§
   {
      
      private static var §+!>§:Matrix = new Matrix();
       
      
      private var §?l§:int;
      
      private var §+!§:Number;
      
      private var §->§:Number;
      
      private var §#<§:Number;
      
      private var §6c§:Number;
      
      private var §4C§:int;
      
      private var §!9§:String;
      
      private var §&l§:DisplayObject;
      
      private var §-x§:Number;
      
      public function §0K§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?l§ = param1;
         this.§+!§ = this.§#<§ = param2;
         this.§->§ = this.§6c§ = param3;
         this.§4C§ = 0;
         this.§!9§ = param4;
         this.§&l§ = param5;
      }
      
      public function §#!H§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§+!§,this.§->§);
         this.§&l§.root.§#!1§(param1,§+!>§);
         return §+!>§.transformPoint(_loc2_);
      }
      
      public function §^]§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§#<§,this.§6c§);
         this.§&l§.root.§#!1§(param1,§+!>§);
         return §+!>§.transformPoint(_loc2_);
      }
      
      public function clone() : §0K§
      {
         var _loc1_:§0K§ = new §0K§(this.§?l§,this.§+!§,this.§->§,this.§!9§,this.§&l§);
         _loc1_.§#<§ = this.§#<§;
         _loc1_.§6c§ = this.§6c§;
         _loc1_.§4C§ = this.§4C§;
         _loc1_.§-x§ = this.§-x§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?l§;
      }
      
      public function get globalX() : Number
      {
         return this.§+!§;
      }
      
      public function get globalY() : Number
      {
         return this.§->§;
      }
      
      public function get §1!$§() : Number
      {
         return this.§#<§;
      }
      
      public function get §,!H§() : Number
      {
         return this.§6c§;
      }
      
      public function get §2$§() : int
      {
         return this.§4C§;
      }
      
      public function get phase() : String
      {
         return this.§!9§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&l§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-x§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§#<§ = this.§+!§;
         this.§6c§ = this.§->§;
         this.§+!§ = param1;
         this.§->§ = param2;
      }
      
      function §5!G§(param1:String) : void
      {
         this.§!9§ = param1;
      }
      
      function §-_§(param1:int) : void
      {
         this.§4C§ = param1;
      }
      
      function §&!-§(param1:DisplayObject) : void
      {
         this.§&l§ = param1;
      }
      
      function §%!'§(param1:Number) : void
      {
         this.§-x§ = param1;
      }
   }
}
