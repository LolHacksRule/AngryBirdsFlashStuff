package starling.events
{
   import §'!6§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §;!G§
   {
      
      private static var §`+§:Matrix = new Matrix();
       
      
      private var §-P§:int;
      
      private var §7%§:Number;
      
      private var §2!?§:Number;
      
      private var §]!>§:Number;
      
      private var §;!t§:Number;
      
      private var §2F§:int;
      
      private var §6!Z§:String;
      
      private var §1"'§:DisplayObject;
      
      private var §7!y§:Number;
      
      public function §;!G§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§-P§ = param1;
         this.§7%§ = this.§]!>§ = param2;
         this.§2!?§ = this.§;!t§ = param3;
         this.§2F§ = 0;
         this.§6!Z§ = param4;
         this.§1"'§ = param5;
      }
      
      public function §""=§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§7%§,this.§2!?§);
         this.§1"'§.root.§'!D§(param1,§`+§);
         return §`+§.transformPoint(_loc2_);
      }
      
      public function §>g§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§]!>§,this.§;!t§);
         this.§1"'§.root.§'!D§(param1,§`+§);
         return §`+§.transformPoint(_loc2_);
      }
      
      public function clone() : §;!G§
      {
         var _loc1_:§;!G§ = new §;!G§(this.§-P§,this.§7%§,this.§2!?§,this.§6!Z§,this.§1"'§);
         _loc1_.§]!>§ = this.§]!>§;
         _loc1_.§;!t§ = this.§;!t§;
         _loc1_.§2F§ = this.§2F§;
         _loc1_.§7!y§ = this.§7!y§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§-P§;
      }
      
      public function get globalX() : Number
      {
         return this.§7%§;
      }
      
      public function get globalY() : Number
      {
         return this.§2!?§;
      }
      
      public function get §@!A§() : Number
      {
         return this.§]!>§;
      }
      
      public function get §,!;§() : Number
      {
         return this.§;!t§;
      }
      
      public function get §]!<§() : int
      {
         return this.§2F§;
      }
      
      public function get phase() : String
      {
         return this.§6!Z§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§1"'§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!y§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§]!>§ = this.§7%§;
         this.§;!t§ = this.§2!?§;
         this.§7%§ = param1;
         this.§2!?§ = param2;
      }
      
      function §`!K§(param1:String) : void
      {
         this.§6!Z§ = param1;
      }
      
      function §8"Y§(param1:int) : void
      {
         this.§2F§ = param1;
      }
      
      function §#O§(param1:DisplayObject) : void
      {
         this.§1"'§ = param1;
      }
      
      function § !#§(param1:Number) : void
      {
         this.§7!y§ = param1;
      }
   }
}
