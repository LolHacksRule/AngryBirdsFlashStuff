package starling.events
{
   import §90§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#!<§
   {
      
      private static var §^n§:Matrix = new Matrix();
       
      
      private var §?G§:int;
      
      private var § if§:Number;
      
      private var §?!<§:Number;
      
      private var §+J§:Number;
      
      private var §!!J§:Number;
      
      private var §!v§:int;
      
      private var §5d§:String;
      
      private var §=r§:DisplayObject;
      
      private var §2!-§:Number;
      
      public function §#!<§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?G§ = param1;
         this.§ if§ = this.§+J§ = param2;
         this.§?!<§ = this.§!!J§ = param3;
         this.§!v§ = 0;
         this.§5d§ = param4;
         this.§=r§ = param5;
      }
      
      public function §2!@§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ if§,this.§?!<§);
         this.§=r§.root.§?!#§(param1,§^n§);
         return §^n§.transformPoint(_loc2_);
      }
      
      public function §7!?§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§+J§,this.§!!J§);
         this.§=r§.root.§?!#§(param1,§^n§);
         return §^n§.transformPoint(_loc2_);
      }
      
      public function clone() : §#!<§
      {
         var _loc1_:§#!<§ = new §#!<§(this.§?G§,this.§ if§,this.§?!<§,this.§5d§,this.§=r§);
         _loc1_.§+J§ = this.§+J§;
         _loc1_.§!!J§ = this.§!!J§;
         _loc1_.§!v§ = this.§!v§;
         _loc1_.§2!-§ = this.§2!-§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?G§;
      }
      
      public function get globalX() : Number
      {
         return this.§ if§;
      }
      
      public function get globalY() : Number
      {
         return this.§?!<§;
      }
      
      public function get §0e§() : Number
      {
         return this.§+J§;
      }
      
      public function get §-<§() : Number
      {
         return this.§!!J§;
      }
      
      public function get §1!A§() : int
      {
         return this.§!v§;
      }
      
      public function get phase() : String
      {
         return this.§5d§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§=r§;
      }
      
      public function get timestamp() : Number
      {
         return this.§2!-§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§+J§ = this.§ if§;
         this.§!!J§ = this.§?!<§;
         this.§ if§ = param1;
         this.§?!<§ = param2;
      }
      
      function §2!O§(param1:String) : void
      {
         this.§5d§ = param1;
      }
      
      function § !-§(param1:int) : void
      {
         this.§!v§ = param1;
      }
      
      function §^§(param1:DisplayObject) : void
      {
         this.§=r§ = param1;
      }
      
      function §=!%§(param1:Number) : void
      {
         this.§2!-§ = param1;
      }
   }
}
