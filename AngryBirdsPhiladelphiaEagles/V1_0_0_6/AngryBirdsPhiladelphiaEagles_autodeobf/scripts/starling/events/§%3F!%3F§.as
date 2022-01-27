package starling.events
{
   import §86§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?!?§
   {
      
      private static var §'!D§:Matrix = new Matrix();
       
      
      private var §&!8§:int;
      
      private var §'r§:Number;
      
      private var §;#§:Number;
      
      private var §]m§:Number;
      
      private var §9t§:Number;
      
      private var §;!2§:int;
      
      private var § x§:String;
      
      private var §6!-§:DisplayObject;
      
      private var §9n§:Number;
      
      public function §?!?§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§&!8§ = param1;
         this.§'r§ = this.§]m§ = param2;
         this.§;#§ = this.§9t§ = param3;
         this.§;!2§ = 0;
         this.§ x§ = param4;
         this.§6!-§ = param5;
      }
      
      public function §'!4§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§'r§,this.§;#§);
         this.§6!-§.root.§0!#§(param1,§'!D§);
         return §'!D§.transformPoint(_loc2_);
      }
      
      public function §=!P§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§]m§,this.§9t§);
         this.§6!-§.root.§0!#§(param1,§'!D§);
         return §'!D§.transformPoint(_loc2_);
      }
      
      public function clone() : §?!?§
      {
         var _loc1_:§?!?§ = new §?!?§(this.§&!8§,this.§'r§,this.§;#§,this.§ x§,this.§6!-§);
         _loc1_.§]m§ = this.§]m§;
         _loc1_.§9t§ = this.§9t§;
         _loc1_.§;!2§ = this.§;!2§;
         _loc1_.§9n§ = this.§9n§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§&!8§;
      }
      
      public function get globalX() : Number
      {
         return this.§'r§;
      }
      
      public function get globalY() : Number
      {
         return this.§;#§;
      }
      
      public function get §03§() : Number
      {
         return this.§]m§;
      }
      
      public function get §0!<§() : Number
      {
         return this.§9t§;
      }
      
      public function get §6o§() : int
      {
         return this.§;!2§;
      }
      
      public function get phase() : String
      {
         return this.§ x§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§6!-§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9n§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§]m§ = this.§'r§;
         this.§9t§ = this.§;#§;
         this.§'r§ = param1;
         this.§;#§ = param2;
      }
      
      function §`!L§(param1:String) : void
      {
         this.§ x§ = param1;
      }
      
      function §"?§(param1:int) : void
      {
         this.§;!2§ = param1;
      }
      
      function §5-§(param1:DisplayObject) : void
      {
         this.§6!-§ = param1;
      }
      
      function §9!F§(param1:Number) : void
      {
         this.§9n§ = param1;
      }
   }
}
