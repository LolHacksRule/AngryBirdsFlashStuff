package §4!i§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §0!8§
   {
      
      private static const §'"§:Number = 1 / 255;
       
      
      private var §'!"§:TextField;
      
      private var §8I§:uint;
      
      private var §]"$§:uint;
      
      private var §7!E§:uint;
      
      private var §3f§:ColorMatrixFilter;
      
      public function §0!8§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§'!"§ = param1;
         this.§3f§ = new ColorMatrixFilter();
         this.§8I§ = param2;
         this.§7!E§ = param3;
         this.§]"$§ = param4;
         this.§!V§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§'!"§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§'!"§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§8I§ = param1;
         this.§!V§();
      }
      
      public function get textColor() : uint
      {
         return this.§8I§;
      }
      
      public function set § y§(param1:uint) : void
      {
         this.§7!E§ = param1;
         this.§!V§();
      }
      
      public function get § y§() : uint
      {
         return this.§7!E§;
      }
      
      public function set §@7§(param1:uint) : void
      {
         this.§]"$§ = param1;
         this.§!V§();
      }
      
      public function get §@7§() : uint
      {
         return this.§]"$§;
      }
      
      private function §!V§() : void
      {
         this.§'!"§.textColor = 16711680;
         var _loc1_:Array = this.§6!0§(this.§7!E§);
         var _loc2_:Array = this.§6!0§(this.§8I§);
         var _loc3_:Array = this.§6!0§(this.§]"$§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §'"§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §'"§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §'"§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §'"§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §'"§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §'"§ + 1 - _loc9_;
         this.§3f§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§'!"§.filters = [this.§3f§];
      }
      
      private function §6!0§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§3f§ = null;
         this.§'!"§.filters = [];
         this.§'!"§ = null;
      }
   }
}
