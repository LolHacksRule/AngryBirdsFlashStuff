package starling.events
{
   import §=!E§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?!$§
   {
      
      private static var §+u§:Matrix = new Matrix();
       
      
      private var §8!!§:int;
      
      private var §3K§:Number;
      
      private var §!![§:Number;
      
      private var §^!F§:Number;
      
      private var §8p§:Number;
      
      private var §&U§:int;
      
      private var §2!^§:String;
      
      private var §8j§:DisplayObject;
      
      private var §9§:Number;
      
      public function §?!$§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§8!!§ = param1;
         this.§3K§ = this.§^!F§ = param2;
         this.§!![§ = this.§8p§ = param3;
         this.§&U§ = 0;
         this.§2!^§ = param4;
         this.§8j§ = param5;
      }
      
      public function §"!`§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§3K§,this.§!![§);
         this.§8j§.root.§!;§(param1,§+u§);
         return §+u§.transformPoint(_loc2_);
      }
      
      public function §3!G§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§^!F§,this.§8p§);
         this.§8j§.root.§!;§(param1,§+u§);
         return §+u§.transformPoint(_loc2_);
      }
      
      public function clone() : §?!$§
      {
         var _loc1_:§?!$§ = new §?!$§(this.§8!!§,this.§3K§,this.§!![§,this.§2!^§,this.§8j§);
         _loc1_.§^!F§ = this.§^!F§;
         _loc1_.§8p§ = this.§8p§;
         _loc1_.§&U§ = this.§&U§;
         _loc1_.§9§ = this.§9§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8!!§;
      }
      
      public function get globalX() : Number
      {
         return this.§3K§;
      }
      
      public function get globalY() : Number
      {
         return this.§!![§;
      }
      
      public function get §+!§() : Number
      {
         return this.§^!F§;
      }
      
      public function get §0!P§() : Number
      {
         return this.§8p§;
      }
      
      public function get §9y§() : int
      {
         return this.§&U§;
      }
      
      public function get phase() : String
      {
         return this.§2!^§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§8j§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§^!F§ = this.§3K§;
         this.§8p§ = this.§!![§;
         this.§3K§ = param1;
         this.§!![§ = param2;
      }
      
      function §^"§(param1:String) : void
      {
         this.§2!^§ = param1;
      }
      
      function §,!T§(param1:int) : void
      {
         this.§&U§ = param1;
      }
      
      function §@m§(param1:DisplayObject) : void
      {
         this.§8j§ = param1;
      }
      
      function §7!_§(param1:Number) : void
      {
         this.§9§ = param1;
      }
   }
}
