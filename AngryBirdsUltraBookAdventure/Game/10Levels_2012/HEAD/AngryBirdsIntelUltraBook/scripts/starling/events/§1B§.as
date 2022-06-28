package starling.events
{
   import §1!&§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §1B§
   {
      
      private static var §4!g§:Matrix = new Matrix();
       
      
      private var §7m§:int;
      
      private var §5!g§:Number;
      
      private var §=9§:Number;
      
      private var §^!!§:Number;
      
      private var §5i§:Number;
      
      private var §,'§:int;
      
      private var §`'§:String;
      
      private var §`N§:DisplayObject;
      
      private var §const§:Number;
      
      public function §1B§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§7m§ = param1;
         this.§5!g§ = this.§^!!§ = param2;
         this.§=9§ = this.§5i§ = param3;
         this.§,'§ = 0;
         this.§`'§ = param4;
         this.§`N§ = param5;
      }
      
      public function §-![§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§5!g§,this.§=9§);
         this.§`N§.root.§&!R§(param1,§4!g§);
         return §4!g§.transformPoint(_loc2_);
      }
      
      public function §^1§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!!§,this.§5i§);
         this.§`N§.root.§&!R§(param1,§4!g§);
         return §4!g§.transformPoint(_loc2_);
      }
      
      public function clone() : §1B§
      {
         var _loc1_:§1B§ = new §1B§(this.§7m§,this.§5!g§,this.§=9§,this.§`'§,this.§`N§);
         _loc1_.§^!!§ = this.§^!!§;
         _loc1_.§5i§ = this.§5i§;
         _loc1_.§,'§ = this.§,'§;
         _loc1_.§const§ = this.§const§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§7m§;
      }
      
      public function get globalX() : Number
      {
         return this.§5!g§;
      }
      
      public function get globalY() : Number
      {
         return this.§=9§;
      }
      
      public function get §#l§() : Number
      {
         return this.§^!!§;
      }
      
      public function get §6x§() : Number
      {
         return this.§5i§;
      }
      
      public function get §'!c§() : int
      {
         return this.§,'§;
      }
      
      public function get phase() : String
      {
         return this.§`'§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§`N§;
      }
      
      public function get timestamp() : Number
      {
         return this.§const§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^!!§ = this.§5!g§;
         this.§5i§ = this.§=9§;
         this.§5!g§ = param1;
         this.§=9§ = param2;
      }
      
      function § A§(param1:String) : void
      {
         this.§`'§ = param1;
      }
      
      function §9C§(param1:int) : void
      {
         this.§,'§ = param1;
      }
      
      function §&z§(param1:DisplayObject) : void
      {
         this.§`N§ = param1;
      }
      
      function §>! §(param1:Number) : void
      {
         this.§const§ = param1;
      }
   }
}
