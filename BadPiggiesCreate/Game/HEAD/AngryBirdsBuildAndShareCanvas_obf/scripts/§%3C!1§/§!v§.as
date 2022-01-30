package §<!1§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!v§
   {
      
      private static const §-%§:Number = 1 / 255;
       
      
      private var §<!g§:TextField;
      
      private var §[%§:uint;
      
      private var §-m§:uint;
      
      private var §-!y§:uint;
      
      private var §#!3§:ColorMatrixFilter;
      
      public function §!v§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§<!g§ = param1;
         this.§#!3§ = new ColorMatrixFilter();
         this.§[%§ = param2;
         this.§-!y§ = param3;
         this.§-m§ = param4;
         this.§-7§();
      }
      
      public function set §5x§(param1:TextField) : void
      {
         this.§<!g§ = param1;
      }
      
      public function get §5x§() : TextField
      {
         return this.§<!g§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§[%§ = param1;
         this.§-7§();
      }
      
      public function get textColor() : uint
      {
         return this.§[%§;
      }
      
      public function set §-"%§(param1:uint) : void
      {
         this.§-!y§ = param1;
         this.§-7§();
      }
      
      public function get §-"%§() : uint
      {
         return this.§-!y§;
      }
      
      public function set §"![§(param1:uint) : void
      {
         this.§-m§ = param1;
         this.§-7§();
      }
      
      public function get §"![§() : uint
      {
         return this.§-m§;
      }
      
      private function §-7§() : void
      {
         this.§<!g§.textColor = 16711680;
         var _loc1_:Array = this.§<!P§(this.§-!y§);
         var _loc2_:Array = this.§<!P§(this.§[%§);
         var _loc3_:Array = this.§<!P§(this.§-m§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §-%§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §-%§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §-%§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §-%§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §-%§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §-%§ + 1 - _loc9_;
         this.§#!3§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§<!g§.filters = [this.§#!3§];
      }
      
      private function §<!P§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§#!3§ = null;
         this.§<!g§.filters = [];
         this.§<!g§ = null;
      }
   }
}
