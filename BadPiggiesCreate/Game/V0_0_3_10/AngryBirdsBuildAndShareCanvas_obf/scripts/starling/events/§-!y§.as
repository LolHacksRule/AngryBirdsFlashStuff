package starling.events
{
   import §^I§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §-!y§
   {
      
      private static var §-!z§:Matrix = new Matrix();
       
      
      private var §3!?§:int;
      
      private var § e§:Number;
      
      private var §@"8§:Number;
      
      private var §`!'§:Number;
      
      private var §?!Z§:Number;
      
      private var §"q§:int;
      
      private var §7#§:String;
      
      private var §<6§:DisplayObject;
      
      private var §7!S§:Number;
      
      public function §-!y§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§3!?§ = param1;
         this.§ e§ = this.§`!'§ = param2;
         this.§@"8§ = this.§?!Z§ = param3;
         this.§"q§ = 0;
         this.§7#§ = param4;
         this.§<6§ = param5;
      }
      
      public function §?!A§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§ e§,this.§@"8§);
         this.§<6§.root.§,,§(param1,§-!z§);
         return §-!z§.transformPoint(_loc2_);
      }
      
      public function §[E§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§`!'§,this.§?!Z§);
         this.§<6§.root.§,,§(param1,§-!z§);
         return §-!z§.transformPoint(_loc2_);
      }
      
      public function clone() : §-!y§
      {
         var _loc1_:§-!y§ = new §-!y§(this.§3!?§,this.§ e§,this.§@"8§,this.§7#§,this.§<6§);
         _loc1_.§`!'§ = this.§`!'§;
         _loc1_.§?!Z§ = this.§?!Z§;
         _loc1_.§"q§ = this.§"q§;
         _loc1_.§7!S§ = this.§7!S§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§3!?§;
      }
      
      public function get globalX() : Number
      {
         return this.§ e§;
      }
      
      public function get globalY() : Number
      {
         return this.§@"8§;
      }
      
      public function get §-!x§() : Number
      {
         return this.§`!'§;
      }
      
      public function get §6>§() : Number
      {
         return this.§?!Z§;
      }
      
      public function get §>L§() : int
      {
         return this.§"q§;
      }
      
      public function get phase() : String
      {
         return this.§7#§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§<6§;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!S§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§`!'§ = this.§ e§;
         this.§?!Z§ = this.§@"8§;
         this.§ e§ = param1;
         this.§@"8§ = param2;
      }
      
      function §=k§(param1:String) : void
      {
         this.§7#§ = param1;
      }
      
      function §-?§(param1:int) : void
      {
         this.§"q§ = param1;
      }
      
      function §<T§(param1:DisplayObject) : void
      {
         this.§<6§ = param1;
      }
      
      function §=!a§(param1:Number) : void
      {
         this.§7!S§ = param1;
      }
   }
}
