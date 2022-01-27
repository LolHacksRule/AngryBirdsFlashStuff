package §!V§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §-!I§
   {
      
      private static const §-a§:Number = 1 / 255;
       
      
      private var §2!%§:TextField;
      
      private var §`U§:uint;
      
      private var §6![§:uint;
      
      private var §,!"§:uint;
      
      private var §8!§:ColorMatrixFilter;
      
      public function §-!I§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§2!%§ = param1;
         this.§8!§ = new ColorMatrixFilter();
         this.§`U§ = param2;
         this.§,!"§ = param3;
         this.§6![§ = param4;
         this.§6t§();
      }
      
      public function set §2!e§(param1:TextField) : void
      {
         this.§2!%§ = param1;
      }
      
      public function get §2!e§() : TextField
      {
         return this.§2!%§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§`U§ = param1;
         this.§6t§();
      }
      
      public function get textColor() : uint
      {
         return this.§`U§;
      }
      
      public function set §2L§(param1:uint) : void
      {
         this.§,!"§ = param1;
         this.§6t§();
      }
      
      public function get §2L§() : uint
      {
         return this.§,!"§;
      }
      
      public function set §`!^§(param1:uint) : void
      {
         this.§6![§ = param1;
         this.§6t§();
      }
      
      public function get §`!^§() : uint
      {
         return this.§6![§;
      }
      
      private function §6t§() : void
      {
         this.§2!%§.textColor = 16711680;
         var _loc1_:Array = this.§4!a§(this.§,!"§);
         var _loc2_:Array = this.§4!a§(this.§`U§);
         var _loc3_:Array = this.§4!a§(this.§6![§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §-a§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §-a§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §-a§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §-a§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §-a§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §-a§ + 1 - _loc9_;
         this.§8!§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§2!%§.filters = [this.§8!§];
      }
      
      private function §4!a§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§8!§ = null;
         this.§2!%§.filters = [];
         this.§2!%§ = null;
      }
   }
}
