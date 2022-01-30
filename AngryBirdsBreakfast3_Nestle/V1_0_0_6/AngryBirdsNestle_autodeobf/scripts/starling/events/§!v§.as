package starling.events
{
   import §,!q§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!v§
   {
      
      private static var §@Z§:Matrix = new Matrix();
       
      
      private var §^!D§:int;
      
      private var §[!x§:Number;
      
      private var §3K§:Number;
      
      private var §=n§:Number;
      
      private var §8!`§:Number;
      
      private var §#!?§:int;
      
      private var §65§:String;
      
      private var §7f§:DisplayObject;
      
      private var §;A§:Number;
      
      public function §!v§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§^!D§ = param1;
         this.§[!x§ = this.§=n§ = param2;
         this.§3K§ = this.§8!`§ = param3;
         this.§#!?§ = 0;
         this.§65§ = param4;
         this.§7f§ = param5;
      }
      
      public function §2!T§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§[!x§,this.§3K§);
         this.§7f§.root.§&!n§(param1,§@Z§);
         return §@Z§.transformPoint(_loc2_);
      }
      
      public function §&!K§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§=n§,this.§8!`§);
         this.§7f§.root.§&!n§(param1,§@Z§);
         return §@Z§.transformPoint(_loc2_);
      }
      
      public function clone() : §!v§
      {
         var _loc1_:§!v§ = new §!v§(this.§^!D§,this.§[!x§,this.§3K§,this.§65§,this.§7f§);
         _loc1_.§=n§ = this.§=n§;
         _loc1_.§8!`§ = this.§8!`§;
         _loc1_.§#!?§ = this.§#!?§;
         _loc1_.§;A§ = this.§;A§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§^!D§;
      }
      
      public function get globalX() : Number
      {
         return this.§[!x§;
      }
      
      public function get globalY() : Number
      {
         return this.§3K§;
      }
      
      public function get § k§() : Number
      {
         return this.§=n§;
      }
      
      public function get §'!r§() : Number
      {
         return this.§8!`§;
      }
      
      public function get § !7§() : int
      {
         return this.§#!?§;
      }
      
      public function get phase() : String
      {
         return this.§65§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§7f§;
      }
      
      public function get timestamp() : Number
      {
         return this.§;A§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§=n§ = this.§[!x§;
         this.§8!`§ = this.§3K§;
         this.§[!x§ = param1;
         this.§3K§ = param2;
      }
      
      function §#!'§(param1:String) : void
      {
         this.§65§ = param1;
      }
      
      function §?!X§(param1:int) : void
      {
         this.§#!?§ = param1;
      }
      
      function §2h§(param1:DisplayObject) : void
      {
         this.§7f§ = param1;
      }
      
      function §-"+§(param1:Number) : void
      {
         this.§;A§ = param1;
      }
   }
}
