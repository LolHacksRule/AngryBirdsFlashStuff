package starling.events
{
   import §?^§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?l§
   {
      
      private static var §-!#§:Matrix = new Matrix();
       
      
      private var §+!§:int;
      
      private var §->§:Number;
      
      private var §#<§:Number;
      
      private var §6c§:Number;
      
      private var §4C§:Number;
      
      private var §!9§:int;
      
      private var §#!H§:String;
      
      private var §"^§:DisplayObject;
      
      private var §`!§:Number;
      
      public function §?l§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§+!§ = param1;
         this.§->§ = this.§6c§ = param2;
         this.§#<§ = this.§4C§ = param3;
         this.§!9§ = 0;
         this.§#!H§ = param4;
         this.§"^§ = param5;
      }
      
      public function §^]§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§->§,this.§#<§);
         this.§"^§.root.§<^§(param1,§-!#§);
         return §-!#§.transformPoint(_loc2_);
      }
      
      public function §1!$§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6c§,this.§4C§);
         this.§"^§.root.§<^§(param1,§-!#§);
         return §-!#§.transformPoint(_loc2_);
      }
      
      public function clone() : §?l§
      {
         var _loc1_:§?l§ = new §?l§(this.§+!§,this.§->§,this.§#<§,this.§#!H§,this.§"^§);
         _loc1_.§6c§ = this.§6c§;
         _loc1_.§4C§ = this.§4C§;
         _loc1_.§!9§ = this.§!9§;
         _loc1_.§`!§ = this.§`!§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§+!§;
      }
      
      public function get globalX() : Number
      {
         return this.§->§;
      }
      
      public function get globalY() : Number
      {
         return this.§#<§;
      }
      
      public function get §,!H§() : Number
      {
         return this.§6c§;
      }
      
      public function get §2$§() : Number
      {
         return this.§4C§;
      }
      
      public function get §5!G§() : int
      {
         return this.§!9§;
      }
      
      public function get phase() : String
      {
         return this.§#!H§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§"^§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§6c§ = this.§->§;
         this.§4C§ = this.§#<§;
         this.§->§ = param1;
         this.§#<§ = param2;
      }
      
      function §-_§(param1:String) : void
      {
         this.§#!H§ = param1;
      }
      
      function §%!'§(param1:int) : void
      {
         this.§!9§ = param1;
      }
      
      function §8=§(param1:DisplayObject) : void
      {
         this.§"^§ = param1;
      }
      
      function §+!>§(param1:Number) : void
      {
         this.§`!§ = param1;
      }
   }
}
