package starling.events
{
   import §-!f§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §`!=§
   {
      
      private static var §^4§:Matrix = new Matrix();
       
      
      private var §7X§:int;
      
      private var §4!q§:Number;
      
      private var §3;§:Number;
      
      private var §"!<§:Number;
      
      private var §!"!§:Number;
      
      private var §;!X§:int;
      
      private var §2"$§:String;
      
      private var §7!_§:DisplayObject;
      
      private var §^!Y§:Number;
      
      public function §`!=§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§7X§ = param1;
         this.§4!q§ = this.§"!<§ = param2;
         this.§3;§ = this.§!"!§ = param3;
         this.§;!X§ = 0;
         this.§2"$§ = param4;
         this.§7!_§ = param5;
      }
      
      public function §<!5§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§4!q§,this.§3;§);
         this.§7!_§.root.§"!$§(param1,§^4§);
         return §^4§.transformPoint(_loc2_);
      }
      
      public function § 0§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§"!<§,this.§!"!§);
         this.§7!_§.root.§"!$§(param1,§^4§);
         return §^4§.transformPoint(_loc2_);
      }
      
      public function clone() : §`!=§
      {
         var _loc1_:§`!=§ = new §`!=§(this.§7X§,this.§4!q§,this.§3;§,this.§2"$§,this.§7!_§);
         _loc1_.§"!<§ = this.§"!<§;
         _loc1_.§!"!§ = this.§!"!§;
         _loc1_.§;!X§ = this.§;!X§;
         _loc1_.§^!Y§ = this.§^!Y§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§7X§;
      }
      
      public function get globalX() : Number
      {
         return this.§4!q§;
      }
      
      public function get globalY() : Number
      {
         return this.§3;§;
      }
      
      public function get §[F§() : Number
      {
         return this.§"!<§;
      }
      
      public function get §%!4§() : Number
      {
         return this.§!"!§;
      }
      
      public function get §,!U§() : int
      {
         return this.§;!X§;
      }
      
      public function get phase() : String
      {
         return this.§2"$§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§7!_§;
      }
      
      public function get timestamp() : Number
      {
         return this.§^!Y§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§"!<§ = this.§4!q§;
         this.§!"!§ = this.§3;§;
         this.§4!q§ = param1;
         this.§3;§ = param2;
      }
      
      function §"S§(param1:String) : void
      {
         this.§2"$§ = param1;
      }
      
      function §6m§(param1:int) : void
      {
         this.§;!X§ = param1;
      }
      
      function §&g§(param1:DisplayObject) : void
      {
         this.§7!_§ = param1;
      }
      
      function §,!v§(param1:Number) : void
      {
         this.§^!Y§ = param1;
      }
   }
}
