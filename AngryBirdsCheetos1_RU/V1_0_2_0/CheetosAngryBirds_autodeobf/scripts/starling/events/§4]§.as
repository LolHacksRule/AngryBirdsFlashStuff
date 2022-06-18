package starling.events
{
   import §,H§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §4]§
   {
      
      private static var § g§:Matrix = new Matrix();
       
      
      private var §6T§:int;
      
      private var §?6§:Number;
      
      private var §7@§:Number;
      
      private var §,@§:Number;
      
      private var §?y§:Number;
      
      private var §>l§:int;
      
      private var §8,§:String;
      
      private var §8+§:DisplayObject;
      
      private var §-!?§:Number;
      
      public function §4]§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.§6T§ = param1;
         this.§?6§ = this.§,@§ = param2;
         this.§7@§ = this.§?y§ = param3;
         this.§>l§ = 0;
         this.§8,§ = param4;
         this.§8+§ = param5;
      }
      
      public function §7[§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§?6§,this.§7@§);
         this.§8+§.root.§implements§(param1,§ g§);
         return § g§.transformPoint(_loc2_);
      }
      
      public function §5!R§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§,@§,this.§?y§);
         this.§8+§.root.§implements§(param1,§ g§);
         return § g§.transformPoint(_loc2_);
      }
      
      public function clone() : §4]§
      {
         var _loc1_:§4]§ = new §4]§(this.§6T§,this.§?6§,this.§7@§,this.§8,§,this.§8+§);
         _loc1_.§,@§ = this.§,@§;
         _loc1_.§?y§ = this.§?y§;
         _loc1_.§>l§ = this.§>l§;
         _loc1_.§-!?§ = this.§-!?§;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§6T§;
      }
      
      public function get globalX() : Number
      {
         return this.§?6§;
      }
      
      public function get globalY() : Number
      {
         return this.§7@§;
      }
      
      public function get §7a§() : Number
      {
         return this.§,@§;
      }
      
      public function get §9!?§() : Number
      {
         return this.§?y§;
      }
      
      public function get §%d§() : int
      {
         return this.§>l§;
      }
      
      public function get phase() : String
      {
         return this.§8,§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§8+§;
      }
      
      public function get timestamp() : Number
      {
         return this.§-!?§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.§,@§ = this.§?6§;
         this.§?y§ = this.§7@§;
         this.§?6§ = param1;
         this.§7@§ = param2;
      }
      
      function §9F§(param1:String) : void
      {
         this.§8,§ = param1;
      }
      
      function §#C§(param1:int) : void
      {
         this.§>l§ = param1;
      }
      
      function §7f§(param1:DisplayObject) : void
      {
         this.§8+§ = param1;
      }
      
      function §"!R§(param1:Number) : void
      {
         this.§-!?§ = param1;
      }
   }
}
