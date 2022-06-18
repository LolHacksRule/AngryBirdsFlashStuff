package starling.events
{
   import §#!@§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4F§
   {
      
      private static var §'!§:Matrix = new Matrix();
       
      
      private var §%u§:int;
      
      private var §!R§:Number;
      
      private var §>H§:Number;
      
      private var §6v§:Number;
      
      private var §6!=§:Number;
      
      private var §^X§:int;
      
      private var §3!4§:String;
      
      private var §?!<§:DisplayObject;
      
      private var §^n§:Number;
      
      public function §4F§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§%u§ = param1;
         this.§!R§ = this.§6v§ = param2;
         this.§>H§ = this.§6!=§ = param3;
         this.§^X§ = 0;
         this.§3!4§ = param4;
         this.§?!<§ = param5;
      }
      
      public function §-!=§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§!R§,this.§>H§);
         this.§?!<§.root.§^k§(param1,§'!§);
         return §'!§.transformPoint(_loc2_);
      }
      
      public function §]%§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§6v§,this.§6!=§);
         this.§?!<§.root.§^k§(param1,§'!§);
         return §'!§.transformPoint(_loc2_);
      }
      
      public function clone() : §4F§
      {
         var _loc1_:§4F§ = new §4F§(this.§%u§,this.§!R§,this.§>H§,this.§3!4§,this.§?!<§);
         _loc1_.§6v§ = this.§6v§;
         _loc1_.§6!=§ = this.§6!=§;
         _loc1_.§^X§ = this.§^X§;
         _loc1_.§^n§ = this.§^n§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§%u§;
      }
      
      public function get globalX() : Number
      {
         return this.§!R§;
      }
      
      public function get globalY() : Number
      {
         return this.§>H§;
      }
      
      public function get §#g§() : Number
      {
         return this.§6v§;
      }
      
      public function get §<=§() : Number
      {
         return this.§6!=§;
      }
      
      public function get §8! §() : int
      {
         return this.§^X§;
      }
      
      public function get phase() : String
      {
         return this.§3!4§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§?!<§;
      }
      
      public function get timestamp() : Number
      {
         return this.§^n§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§6v§ = this.§!R§;
         this.§6!=§ = this.§>H§;
         this.§!R§ = param1;
         this.§>H§ = param2;
      }
      
      function §+!5§(param1:String) : void
      {
         this.§3!4§ = param1;
      }
      
      function §<?§(param1:int) : void
      {
         this.§^X§ = param1;
      }
      
      function § <§(param1:DisplayObject) : void
      {
         this.§?!<§ = param1;
      }
      
      function §1!B§(param1:Number) : void
      {
         this.§^n§ = param1;
      }
   }
}
