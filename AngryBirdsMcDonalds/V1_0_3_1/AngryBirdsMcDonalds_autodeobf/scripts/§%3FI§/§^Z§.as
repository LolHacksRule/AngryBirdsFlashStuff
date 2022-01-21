package §?I§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §^Z§
   {
      
      private static const §1!J§:Number = 1 / 255;
       
      
      private var §0!j§:TextField;
      
      private var §]-§:uint;
      
      private var §5Y§:uint;
      
      private var §+Y§:uint;
      
      private var §"&§:ColorMatrixFilter;
      
      public function §^Z§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§0!j§ = param1;
         this.§"&§ = new ColorMatrixFilter();
         this.§]-§ = param2;
         this.§+Y§ = param3;
         this.§5Y§ = param4;
         this.§;!I§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§0!j§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§0!j§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§]-§ = param1;
         this.§;!I§();
      }
      
      public function get textColor() : uint
      {
         return this.§]-§;
      }
      
      public function set §-!b§(param1:uint) : void
      {
         this.§+Y§ = param1;
         this.§;!I§();
      }
      
      public function get §-!b§() : uint
      {
         return this.§+Y§;
      }
      
      public function set §0!5§(param1:uint) : void
      {
         this.§5Y§ = param1;
         this.§;!I§();
      }
      
      public function get §0!5§() : uint
      {
         return this.§5Y§;
      }
      
      private function §;!I§() : void
      {
         this.§0!j§.textColor = 16711680;
         var _loc1_:Array = this.§,!§(this.§+Y§);
         var _loc2_:Array = this.§,!§(this.§]-§);
         var _loc3_:Array = this.§,!§(this.§5Y§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §1!J§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §1!J§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §1!J§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §1!J§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §1!J§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §1!J§ + 1 - _loc9_;
         this.§"&§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§0!j§.filters = [this.§"&§];
      }
      
      private function §,!§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§"&§ = null;
         this.§0!j§.filters = [];
         this.§0!j§ = null;
      }
   }
}
