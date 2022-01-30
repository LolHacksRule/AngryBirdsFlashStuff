package starling.events
{
   import §7q§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,"0§
   {
      
      private static var §+F§:Matrix = new Matrix();
       
      
      private var §+V§:int;
      
      private var § 5§:Number;
      
      private var §-!P§:Number;
      
      private var §=!U§:Number;
      
      private var §!!C§:Number;
      
      private var §'0§:int;
      
      private var §1"-§:String;
      
      private var §9#§:DisplayObject;
      
      private var §9!f§:Number;
      
      public function §,"0§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§+V§ = param1;
         this.§ 5§ = this.§=!U§ = param2;
         this.§-!P§ = this.§!!C§ = param3;
         this.§'0§ = 0;
         this.§1"-§ = param4;
         this.§9#§ = param5;
      }
      
      public function §8L§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ 5§,this.§-!P§);
         this.§9#§.root.§ !a§(param1,§+F§);
         return §+F§.transformPoint(_loc2_);
      }
      
      public function §1!p§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§=!U§,this.§!!C§);
         this.§9#§.root.§ !a§(param1,§+F§);
         return §+F§.transformPoint(_loc2_);
      }
      
      public function clone() : §,"0§
      {
         var _loc1_:§,"0§ = new §,"0§(this.§+V§,this.§ 5§,this.§-!P§,this.§1"-§,this.§9#§);
         _loc1_.§=!U§ = this.§=!U§;
         _loc1_.§!!C§ = this.§!!C§;
         _loc1_.§'0§ = this.§'0§;
         _loc1_.§9!f§ = this.§9!f§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§+V§;
      }
      
      public function get globalX() : Number
      {
         return this.§ 5§;
      }
      
      public function get globalY() : Number
      {
         return this.§-!P§;
      }
      
      public function get §5!y§() : Number
      {
         return this.§=!U§;
      }
      
      public function get §[!@§() : Number
      {
         return this.§!!C§;
      }
      
      public function get §;N§() : int
      {
         return this.§'0§;
      }
      
      public function get phase() : String
      {
         return this.§1"-§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§9#§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9!f§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§=!U§ = this.§ 5§;
         this.§!!C§ = this.§-!P§;
         this.§ 5§ = param1;
         this.§-!P§ = param2;
      }
      
      function §<"2§(param1:String) : void
      {
         this.§1"-§ = param1;
      }
      
      function §+!§(param1:int) : void
      {
         this.§'0§ = param1;
      }
      
      function §-!u§(param1:DisplayObject) : void
      {
         this.§9#§ = param1;
      }
      
      function §6!?§(param1:Number) : void
      {
         this.§9!f§ = param1;
      }
   }
}
