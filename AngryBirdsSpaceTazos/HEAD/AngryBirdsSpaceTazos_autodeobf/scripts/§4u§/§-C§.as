package §4u§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §-C§
   {
      
      private static const §#"6§:Number = 1 / 255;
       
      
      private var §';§:TextField;
      
      private var §,!F§:uint;
      
      private var §1!X§:uint;
      
      private var §`U§:uint;
      
      private var §>&§:ColorMatrixFilter;
      
      public function §-C§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§';§ = param1;
         this.§>&§ = new ColorMatrixFilter();
         this.§,!F§ = param2;
         this.§`U§ = param3;
         this.§1!X§ = param4;
         this.§4_§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§';§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§';§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§,!F§ = param1;
         this.§4_§();
      }
      
      public function get textColor() : uint
      {
         return this.§,!F§;
      }
      
      public function set §%K§(param1:uint) : void
      {
         this.§`U§ = param1;
         this.§4_§();
      }
      
      public function get §%K§() : uint
      {
         return this.§`U§;
      }
      
      public function set §>3§(param1:uint) : void
      {
         this.§1!X§ = param1;
         this.§4_§();
      }
      
      public function get §>3§() : uint
      {
         return this.§1!X§;
      }
      
      private function §4_§() : void
      {
         this.§';§.textColor = 16711680;
         var _loc1_:Array = this.§ <§(this.§`U§);
         var _loc2_:Array = this.§ <§(this.§,!F§);
         var _loc3_:Array = this.§ <§(this.§1!X§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §#"6§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §#"6§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §#"6§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §#"6§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §#"6§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §#"6§ + 1 - _loc9_;
         this.§>&§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§';§.filters = [this.§>&§];
      }
      
      private function § <§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§>&§ = null;
         this.§';§.filters = [];
         this.§';§ = null;
      }
   }
}
