package §0!E§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §>q§
   {
      
      private static const §4`§:Number = 1 / 255;
       
      
      private var §!!@§:TextField;
      
      private var §^!,§:uint;
      
      private var §6!?§:uint;
      
      private var §=^§:uint;
      
      private var §?I§:ColorMatrixFilter;
      
      public function §>q§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§!!@§ = param1;
         this.§?I§ = new ColorMatrixFilter();
         this.§^!,§ = param2;
         this.§=^§ = param3;
         this.§6!?§ = param4;
         this.§%T§();
      }
      
      public function set §2!L§(param1:TextField) : void
      {
         this.§!!@§ = param1;
      }
      
      public function get §2!L§() : TextField
      {
         return this.§!!@§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§^!,§ = param1;
         this.§%T§();
      }
      
      public function get textColor() : uint
      {
         return this.§^!,§;
      }
      
      public function set §`!A§(param1:uint) : void
      {
         this.§=^§ = param1;
         this.§%T§();
      }
      
      public function get §`!A§() : uint
      {
         return this.§=^§;
      }
      
      public function set §9C§(param1:uint) : void
      {
         this.§6!?§ = param1;
         this.§%T§();
      }
      
      public function get §9C§() : uint
      {
         return this.§6!?§;
      }
      
      private function §%T§() : void
      {
         this.§!!@§.textColor = 16711680;
         var _loc1_:Array = this.§`!-§(this.§=^§);
         var _loc2_:Array = this.§`!-§(this.§^!,§);
         var _loc3_:Array = this.§`!-§(this.§6!?§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §4`§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §4`§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §4`§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §4`§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §4`§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §4`§ + 1 - _loc9_;
         this.§?I§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§!!@§.filters = [this.§?I§];
      }
      
      private function §`!-§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§?I§ = null;
         this.§!!@§.filters = [];
         this.§!!@§ = null;
      }
   }
}
