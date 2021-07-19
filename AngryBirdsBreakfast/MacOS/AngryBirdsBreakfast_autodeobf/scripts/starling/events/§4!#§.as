package starling.events
{
   import §6![§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4!#§
   {
      
      private static var §7=§:Matrix = new Matrix();
       
      
      private var §]&§:int;
      
      private var §7t§:Number;
      
      private var §1W§:Number;
      
      private var §^!s§:Number;
      
      private var §#!i§:Number;
      
      private var §3!s§:int;
      
      private var §&_§:String;
      
      private var §9U§:DisplayObject;
      
      private var §!_§:Number;
      
      public function §4!#§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§]&§ = param1;
         this.§7t§ = this.§^!s§ = param2;
         this.§1W§ = this.§#!i§ = param3;
         this.§3!s§ = 0;
         this.§&_§ = param4;
         this.§9U§ = param5;
      }
      
      public function §?"&§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§7t§,this.§1W§);
         this.§9U§.root.§3!+§(param1,§7=§);
         return §7=§.transformPoint(_loc2_);
      }
      
      public function §@!q§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!s§,this.§#!i§);
         this.§9U§.root.§3!+§(param1,§7=§);
         return §7=§.transformPoint(_loc2_);
      }
      
      public function clone() : §4!#§
      {
         var _loc1_:§4!#§ = new §4!#§(this.§]&§,this.§7t§,this.§1W§,this.§&_§,this.§9U§);
         _loc1_.§^!s§ = this.§^!s§;
         _loc1_.§#!i§ = this.§#!i§;
         _loc1_.§3!s§ = this.§3!s§;
         _loc1_.§!_§ = this.§!_§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§]&§;
      }
      
      public function get globalX() : Number
      {
         return this.§7t§;
      }
      
      public function get globalY() : Number
      {
         return this.§1W§;
      }
      
      public function get §&!A§() : Number
      {
         return this.§^!s§;
      }
      
      public function get §"@§() : Number
      {
         return this.§#!i§;
      }
      
      public function get §7!L§() : int
      {
         return this.§3!s§;
      }
      
      public function get phase() : String
      {
         return this.§&_§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§9U§;
      }
      
      public function get timestamp() : Number
      {
         return this.§!_§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^!s§ = this.§7t§;
         this.§#!i§ = this.§1W§;
         this.§7t§ = param1;
         this.§1W§ = param2;
      }
      
      function §=9§(param1:String) : void
      {
         this.§&_§ = param1;
      }
      
      function §3!]§(param1:int) : void
      {
         this.§3!s§ = param1;
      }
      
      function §5",§(param1:DisplayObject) : void
      {
         this.§9U§ = param1;
      }
      
      function § Z§(param1:Number) : void
      {
         this.§!_§ = param1;
      }
   }
}
