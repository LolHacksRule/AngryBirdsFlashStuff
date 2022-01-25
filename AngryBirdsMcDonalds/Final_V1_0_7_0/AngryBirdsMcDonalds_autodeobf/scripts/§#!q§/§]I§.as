package §#!q§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §]I§
   {
      
      private static const §+5§:Number = 1 / 255;
       
      
      private var § !K§:TextField;
      
      private var §,!M§:uint;
      
      private var §%_§:uint;
      
      private var §@I§:uint;
      
      private var §true§:ColorMatrixFilter;
      
      public function §]I§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§ !K§ = param1;
         this.§true§ = new ColorMatrixFilter();
         this.§,!M§ = param2;
         this.§@I§ = param3;
         this.§%_§ = param4;
         this.§-7§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§ !K§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§ !K§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§,!M§ = param1;
         this.§-7§();
      }
      
      public function get textColor() : uint
      {
         return this.§,!M§;
      }
      
      public function set §%!V§(param1:uint) : void
      {
         this.§@I§ = param1;
         this.§-7§();
      }
      
      public function get §%!V§() : uint
      {
         return this.§@I§;
      }
      
      public function set §7!9§(param1:uint) : void
      {
         this.§%_§ = param1;
         this.§-7§();
      }
      
      public function get §7!9§() : uint
      {
         return this.§%_§;
      }
      
      private function §-7§() : void
      {
         this.§ !K§.textColor = 16711680;
         var _loc1_:Array = this.§`!e§(this.§@I§);
         var _loc2_:Array = this.§`!e§(this.§,!M§);
         var _loc3_:Array = this.§`!e§(this.§%_§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §+5§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §+5§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §+5§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §+5§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §+5§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §+5§ + 1 - _loc9_;
         this.§true§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§ !K§.filters = [this.§true§];
      }
      
      private function §`!e§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§true§ = null;
         this.§ !K§.filters = [];
         this.§ !K§ = null;
      }
   }
}
