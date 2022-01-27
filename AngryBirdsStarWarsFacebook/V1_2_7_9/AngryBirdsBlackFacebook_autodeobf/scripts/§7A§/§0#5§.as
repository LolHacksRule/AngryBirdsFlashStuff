package §7A§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §0#5§
   {
      
      private static const §5!n§:Number = 1 / 255;
       
      
      private var §?x§:TextField;
      
      private var §6"r§:uint;
      
      private var §<!,§:uint;
      
      private var §#b§:uint;
      
      private var §7%§:ColorMatrixFilter;
      
      public function §0#5§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§?x§ = param1;
         this.§7%§ = new ColorMatrixFilter();
         this.§6"r§ = param2;
         this.§#b§ = param3;
         this.§<!,§ = param4;
         this.§<!_§();
      }
      
      public function set §5!§(param1:TextField) : void
      {
         this.§?x§ = param1;
      }
      
      public function get §5!§() : TextField
      {
         return this.§?x§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§6"r§ = param1;
         this.§<!_§();
      }
      
      public function get textColor() : uint
      {
         return this.§6"r§;
      }
      
      public function set §4"B§(param1:uint) : void
      {
         this.§#b§ = param1;
         this.§<!_§();
      }
      
      public function get §4"B§() : uint
      {
         return this.§#b§;
      }
      
      public function set §=!i§(param1:uint) : void
      {
         this.§<!,§ = param1;
         this.§<!_§();
      }
      
      public function get §=!i§() : uint
      {
         return this.§<!,§;
      }
      
      private function §<!_§() : void
      {
         this.§?x§.textColor = 16711680;
         var _loc1_:Array = this.§ "7§(this.§#b§);
         var _loc2_:Array = this.§ "7§(this.§6"r§);
         var _loc3_:Array = this.§ "7§(this.§<!,§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §5!n§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §5!n§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §5!n§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §5!n§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §5!n§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §5!n§ + 1 - _loc9_;
         this.§7%§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§?x§.filters = [this.§7%§];
      }
      
      private function § "7§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§7%§ = null;
         this.§?x§.filters = [];
         this.§?x§ = null;
      }
   }
}
