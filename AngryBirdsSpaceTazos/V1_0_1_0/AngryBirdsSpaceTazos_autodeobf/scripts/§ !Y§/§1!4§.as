package § !Y§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §1!4§
   {
      
      private static const §1!h§:Number = 1 / 255;
       
      
      private var § !'§:TextField;
      
      private var §2O§:uint;
      
      private var §8r§:uint;
      
      private var §0!-§:uint;
      
      private var §&A§:ColorMatrixFilter;
      
      public function §1!4§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§ !'§ = param1;
         this.§&A§ = new ColorMatrixFilter();
         this.§2O§ = param2;
         this.§0!-§ = param3;
         this.§8r§ = param4;
         this.§%""§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§ !'§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§ !'§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§2O§ = param1;
         this.§%""§();
      }
      
      public function get textColor() : uint
      {
         return this.§2O§;
      }
      
      public function set §-!P§(param1:uint) : void
      {
         this.§0!-§ = param1;
         this.§%""§();
      }
      
      public function get §-!P§() : uint
      {
         return this.§0!-§;
      }
      
      public function set §]#§(param1:uint) : void
      {
         this.§8r§ = param1;
         this.§%""§();
      }
      
      public function get §]#§() : uint
      {
         return this.§8r§;
      }
      
      private function §%""§() : void
      {
         this.§ !'§.textColor = 16711680;
         var _loc1_:Array = this.§]k§(this.§0!-§);
         var _loc2_:Array = this.§]k§(this.§2O§);
         var _loc3_:Array = this.§]k§(this.§8r§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §1!h§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §1!h§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §1!h§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §1!h§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §1!h§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §1!h§ + 1 - _loc9_;
         this.§&A§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§ !'§.filters = [this.§&A§];
      }
      
      private function §]k§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§&A§ = null;
         this.§ !'§.filters = [];
         this.§ !'§ = null;
      }
   }
}
