package starling.events
{
   import §1!A§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §0+§
   {
      
      private static var §!k§:Matrix = new Matrix();
       
      
      private var §?3§:int;
      
      private var §4!=§:Number;
      
      private var §;x§:Number;
      
      private var §"'§:Number;
      
      private var §"E§:Number;
      
      private var §7!"§:int;
      
      private var §>e§:String;
      
      private var §5^§:DisplayObject;
      
      private var §#_§:Number;
      
      public function §0+§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§?3§ = param1;
         this.§4!=§ = this.§"'§ = param2;
         this.§;x§ = this.§"E§ = param3;
         this.§7!"§ = 0;
         this.§>e§ = param4;
         this.§5^§ = param5;
      }
      
      public function §'P§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§4!=§,this.§;x§);
         this.§5^§.root.§0!V§(param1,§!k§);
         return §!k§.transformPoint(_loc2_);
      }
      
      public function § !D§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"'§,this.§"E§);
         this.§5^§.root.§0!V§(param1,§!k§);
         return §!k§.transformPoint(_loc2_);
      }
      
      public function clone() : §0+§
      {
         var _loc1_:§0+§ = new §0+§(this.§?3§,this.§4!=§,this.§;x§,this.§>e§,this.§5^§);
         _loc1_.§"'§ = this.§"'§;
         _loc1_.§"E§ = this.§"E§;
         _loc1_.§7!"§ = this.§7!"§;
         _loc1_.§#_§ = this.§#_§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§?3§;
      }
      
      public function get globalX() : Number
      {
         return this.§4!=§;
      }
      
      public function get globalY() : Number
      {
         return this.§;x§;
      }
      
      public function get §2!O§() : Number
      {
         return this.§"'§;
      }
      
      public function get §>!X§() : Number
      {
         return this.§"E§;
      }
      
      public function get § !<§() : int
      {
         return this.§7!"§;
      }
      
      public function get phase() : String
      {
         return this.§>e§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§5^§;
      }
      
      public function get timestamp() : Number
      {
         return this.§#_§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§"'§ = this.§4!=§;
         this.§"E§ = this.§;x§;
         this.§4!=§ = param1;
         this.§;x§ = param2;
      }
      
      function §switch§(param1:String) : void
      {
         this.§>e§ = param1;
      }
      
      function §false§(param1:int) : void
      {
         this.§7!"§ = param1;
      }
      
      function §#!-§(param1:DisplayObject) : void
      {
         this.§5^§ = param1;
      }
      
      function §9!5§(param1:Number) : void
      {
         this.§#_§ = param1;
      }
   }
}
