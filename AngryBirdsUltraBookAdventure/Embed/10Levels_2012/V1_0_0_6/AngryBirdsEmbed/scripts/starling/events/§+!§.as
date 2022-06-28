package starling.events
{
   import §,_§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §+!§
   {
      
      private static var §!!G§:Matrix = new Matrix();
       
      
      private var §8!8§:int;
      
      private var §]!&§:Number;
      
      private var §-!>§:Number;
      
      private var §[?§:Number;
      
      private var final:Number;
      
      private var §in §:int;
      
      private var § !0§:String;
      
      private var §#B§:DisplayObject;
      
      private var §58§:Number;
      
      public function §+!§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§8!8§ = param1;
         this.§]!&§ = this.§[?§ = param2;
         this.§-!>§ = this.final = param3;
         this.§in § = 0;
         this.§ !0§ = param4;
         this.§#B§ = param5;
      }
      
      public function §>!5§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§]!&§,this.§-!>§);
         this.§#B§.root.§>!>§(param1,§!!G§);
         return §!!G§.transformPoint(_loc2_);
      }
      
      public function §+d§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[?§,this.final);
         this.§#B§.root.§>!>§(param1,§!!G§);
         return §!!G§.transformPoint(_loc2_);
      }
      
      public function clone() : §+!§
      {
         var _loc1_:§+!§ = new §+!§(this.§8!8§,this.§]!&§,this.§-!>§,this.§ !0§,this.§#B§);
         _loc1_.§[?§ = this.§[?§;
         _loc1_.final = this.final;
         _loc1_.§in § = this.§in §;
         _loc1_.§58§ = this.§58§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8!8§;
      }
      
      public function get globalX() : Number
      {
         return this.§]!&§;
      }
      
      public function get globalY() : Number
      {
         return this.§-!>§;
      }
      
      public function get §[V§() : Number
      {
         return this.§[?§;
      }
      
      public function get §;H§() : Number
      {
         return this.final;
      }
      
      public function get §1!B§() : int
      {
         return this.§in §;
      }
      
      public function get phase() : String
      {
         return this.§ !0§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§#B§;
      }
      
      public function get timestamp() : Number
      {
         return this.§58§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§[?§ = this.§]!&§;
         this.final = this.§-!>§;
         this.§]!&§ = param1;
         this.§-!>§ = param2;
      }
      
      function §'r§(param1:String) : void
      {
         this.§ !0§ = param1;
      }
      
      function § s§(param1:int) : void
      {
         this.§in § = param1;
      }
      
      function §#^§(param1:DisplayObject) : void
      {
         this.§#B§ = param1;
      }
      
      function §+!'§(param1:Number) : void
      {
         this.§58§ = param1;
      }
   }
}
