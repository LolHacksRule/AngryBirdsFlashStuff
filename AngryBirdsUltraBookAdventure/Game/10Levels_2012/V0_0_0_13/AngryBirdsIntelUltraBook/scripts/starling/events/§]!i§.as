package starling.events
{
   import §6!7§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §]!i§
   {
      
      private static var §18§:Matrix = new Matrix();
       
      
      private var §-!G§:int;
      
      private var §"a§:Number;
      
      private var §-P§:Number;
      
      private var §,!`§:Number;
      
      private var §^>§:Number;
      
      private var §3m§:int;
      
      private var §&2§:String;
      
      private var §#!+§:DisplayObject;
      
      private var §-7§:Number;
      
      public function §]!i§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§-!G§ = param1;
         this.§"a§ = this.§,!`§ = param2;
         this.§-P§ = this.§^>§ = param3;
         this.§3m§ = 0;
         this.§&2§ = param4;
         this.§#!+§ = param5;
      }
      
      public function §='§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"a§,this.§-P§);
         this.§#!+§.root.§[!4§(param1,§18§);
         return §18§.transformPoint(_loc2_);
      }
      
      public function §<!a§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§,!`§,this.§^>§);
         this.§#!+§.root.§[!4§(param1,§18§);
         return §18§.transformPoint(_loc2_);
      }
      
      public function clone() : §]!i§
      {
         var _loc1_:§]!i§ = new §]!i§(this.§-!G§,this.§"a§,this.§-P§,this.§&2§,this.§#!+§);
         _loc1_.§,!`§ = this.§,!`§;
         _loc1_.§^>§ = this.§^>§;
         _loc1_.§3m§ = this.§3m§;
         _loc1_.§-7§ = this.§-7§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§-!G§;
      }
      
      public function get globalX() : Number
      {
         return this.§"a§;
      }
      
      public function get globalY() : Number
      {
         return this.§-P§;
      }
      
      public function get §1a§() : Number
      {
         return this.§,!`§;
      }
      
      public function get §<!P§() : Number
      {
         return this.§^>§;
      }
      
      public function get §else §() : int
      {
         return this.§3m§;
      }
      
      public function get phase() : String
      {
         return this.§&2§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§#!+§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-7§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§,!`§ = this.§"a§;
         this.§^>§ = this.§-P§;
         this.§"a§ = param1;
         this.§-P§ = param2;
      }
      
      function §`!"§(param1:String) : void
      {
         this.§&2§ = param1;
      }
      
      function §;!i§(param1:int) : void
      {
         this.§3m§ = param1;
      }
      
      function §,!g§(param1:DisplayObject) : void
      {
         this.§#!+§ = param1;
      }
      
      function §7Q§(param1:Number) : void
      {
         this.§-7§ = param1;
      }
   }
}
