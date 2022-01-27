package starling.events
{
   import §-!'§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §+l§
   {
      
      private static var §0y§:Matrix = new Matrix();
       
      
      private var §;#§:int;
      
      private var §-!C§:Number;
      
      private var §@!%§:Number;
      
      private var §7!$§:Number;
      
      private var §1!0§:Number;
      
      private var §8!"§:int;
      
      private var §0h§:String;
      
      private var §3j§:DisplayObject;
      
      private var §9i§:Number;
      
      public function §+l§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§;#§ = param1;
         this.§-!C§ = this.§7!$§ = param2;
         this.§@!%§ = this.§1!0§ = param3;
         this.§8!"§ = 0;
         this.§0h§ = param4;
         this.§3j§ = param5;
      }
      
      public function §^X§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§-!C§,this.§@!%§);
         this.§3j§.root.§0N§(param1,§0y§);
         return §0y§.transformPoint(_loc2_);
      }
      
      public function §[v§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§7!$§,this.§1!0§);
         this.§3j§.root.§0N§(param1,§0y§);
         return §0y§.transformPoint(_loc2_);
      }
      
      public function clone() : §+l§
      {
         var _loc1_:§+l§ = new §+l§(this.§;#§,this.§-!C§,this.§@!%§,this.§0h§,this.§3j§);
         _loc1_.§7!$§ = this.§7!$§;
         _loc1_.§1!0§ = this.§1!0§;
         _loc1_.§8!"§ = this.§8!"§;
         _loc1_.§9i§ = this.§9i§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§;#§;
      }
      
      public function get globalX() : Number
      {
         return this.§-!C§;
      }
      
      public function get globalY() : Number
      {
         return this.§@!%§;
      }
      
      public function get §%L§() : Number
      {
         return this.§7!$§;
      }
      
      public function get §"!E§() : Number
      {
         return this.§1!0§;
      }
      
      public function get §[N§() : int
      {
         return this.§8!"§;
      }
      
      public function get phase() : String
      {
         return this.§0h§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§3j§;
      }
      
      public function get timestamp() : Number
      {
         return this.§9i§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§7!$§ = this.§-!C§;
         this.§1!0§ = this.§@!%§;
         this.§-!C§ = param1;
         this.§@!%§ = param2;
      }
      
      function §@!0§(param1:String) : void
      {
         this.§0h§ = param1;
      }
      
      function §5W§(param1:int) : void
      {
         this.§8!"§ = param1;
      }
      
      function §,!?§(param1:DisplayObject) : void
      {
         this.§3j§ = param1;
      }
      
      function §2;§(param1:Number) : void
      {
         this.§9i§ = param1;
      }
   }
}
