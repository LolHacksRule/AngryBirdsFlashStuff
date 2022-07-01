package starling.events
{
   import §+!-§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;g§
   {
      
      private static var §^L§:Matrix = new Matrix();
       
      
      private var §2!?§:int;
      
      private var §8!q§:Number;
      
      private var § P§:Number;
      
      private var §-!o§:Number;
      
      private var §,"5§:Number;
      
      private var §]A§:int;
      
      private var §=?§:String;
      
      private var §&d§:DisplayObject;
      
      private var §8^§:Number;
      
      public function §;g§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§2!?§ = param1;
         this.§8!q§ = this.§-!o§ = param2;
         this.§ P§ = this.§,"5§ = param3;
         this.§]A§ = 0;
         this.§=?§ = param4;
         this.§&d§ = param5;
      }
      
      public function §%g§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§8!q§,this.§ P§);
         this.§&d§.root.§1!%§(param1,§^L§);
         return §^L§.transformPoint(_loc2_);
      }
      
      public function §'!g§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§-!o§,this.§,"5§);
         this.§&d§.root.§1!%§(param1,§^L§);
         return §^L§.transformPoint(_loc2_);
      }
      
      public function clone() : §;g§
      {
         var _loc1_:§;g§ = new §;g§(this.§2!?§,this.§8!q§,this.§ P§,this.§=?§,this.§&d§);
         _loc1_.§-!o§ = this.§-!o§;
         _loc1_.§,"5§ = this.§,"5§;
         _loc1_.§]A§ = this.§]A§;
         _loc1_.§8^§ = this.§8^§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§2!?§;
      }
      
      public function get globalX() : Number
      {
         return this.§8!q§;
      }
      
      public function get globalY() : Number
      {
         return this.§ P§;
      }
      
      public function get §?!?§() : Number
      {
         return this.§-!o§;
      }
      
      public function get §2!G§() : Number
      {
         return this.§,"5§;
      }
      
      public function get §=w§() : int
      {
         return this.§]A§;
      }
      
      public function get phase() : String
      {
         return this.§=?§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§&d§;
      }
      
      public function get timestamp() : Number
      {
         return this.§8^§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§-!o§ = this.§8!q§;
         this.§,"5§ = this.§ P§;
         this.§8!q§ = param1;
         this.§ P§ = param2;
      }
      
      function § Y§(param1:String) : void
      {
         this.§=?§ = param1;
      }
      
      function §1!=§(param1:int) : void
      {
         this.§]A§ = param1;
      }
      
      function § !!§(param1:DisplayObject) : void
      {
         this.§&d§ = param1;
      }
      
      function §8!4§(param1:Number) : void
      {
         this.§8^§ = param1;
      }
   }
}
