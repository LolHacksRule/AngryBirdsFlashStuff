package starling.events
{
   import §7u§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §2!P§
   {
      
      private static var §[C§:Matrix = new Matrix();
       
      
      private var §<!5§:int;
      
      private var §9!U§:Number;
      
      private var §=!X§:Number;
      
      private var §]r§:Number;
      
      private var §;K§:Number;
      
      private var § @§:int;
      
      private var §+>§:String;
      
      private var §>M§:DisplayObject;
      
      private var §1!T§:Number;
      
      public function §2!P§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§<!5§ = param1;
         this.§9!U§ = this.§]r§ = param2;
         this.§=!X§ = this.§;K§ = param3;
         this.§ @§ = 0;
         this.§+>§ = param4;
         this.§>M§ = param5;
      }
      
      public function §4Q§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§9!U§,this.§=!X§);
         this.§>M§.root.§9P§(param1,§[C§);
         return §[C§.transformPoint(_loc2_);
      }
      
      public function §[f§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§]r§,this.§;K§);
         this.§>M§.root.§9P§(param1,§[C§);
         return §[C§.transformPoint(_loc2_);
      }
      
      public function clone() : §2!P§
      {
         var _loc1_:§2!P§ = new §2!P§(this.§<!5§,this.§9!U§,this.§=!X§,this.§+>§,this.§>M§);
         _loc1_.§]r§ = this.§]r§;
         _loc1_.§;K§ = this.§;K§;
         _loc1_.§ @§ = this.§ @§;
         _loc1_.§1!T§ = this.§1!T§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§<!5§;
      }
      
      public function get globalX() : Number
      {
         return this.§9!U§;
      }
      
      public function get globalY() : Number
      {
         return this.§=!X§;
      }
      
      public function get §?A§() : Number
      {
         return this.§]r§;
      }
      
      public function get §2r§() : Number
      {
         return this.§;K§;
      }
      
      public function get §4w§() : int
      {
         return this.§ @§;
      }
      
      public function get phase() : String
      {
         return this.§+>§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§>M§;
      }
      
      public function get timestamp() : Number
      {
         return this.§1!T§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§]r§ = this.§9!U§;
         this.§;K§ = this.§=!X§;
         this.§9!U§ = param1;
         this.§=!X§ = param2;
      }
      
      function §&!M§(param1:String) : void
      {
         this.§+>§ = param1;
      }
      
      function §@!Q§(param1:int) : void
      {
         this.§ @§ = param1;
      }
      
      function §"!I§(param1:DisplayObject) : void
      {
         this.§>M§ = param1;
      }
      
      function §1X§(param1:Number) : void
      {
         this.§1!T§ = param1;
      }
   }
}
