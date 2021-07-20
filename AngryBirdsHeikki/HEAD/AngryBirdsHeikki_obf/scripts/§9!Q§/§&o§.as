package §9!Q§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §&o§
   {
      
      private static const §'5§:Number = 1 / 255;
       
      
      private var §;+§:TextField;
      
      private var §9%§:uint;
      
      private var §6!'§:uint;
      
      private var §each §:uint;
      
      private var §]A§:ColorMatrixFilter;
      
      public function §&o§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§;+§ = param1;
         this.§]A§ = new ColorMatrixFilter();
         this.§9%§ = param2;
         this.§each § = param3;
         this.§6!'§ = param4;
         this.§"=§();
      }
      
      public function set §4I§(param1:TextField) : void
      {
         this.§;+§ = param1;
      }
      
      public function get §4I§() : TextField
      {
         return this.§;+§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§9%§ = param1;
         this.§"=§();
      }
      
      public function get textColor() : uint
      {
         return this.§9%§;
      }
      
      public function set §=!R§(param1:uint) : void
      {
         this.§each § = param1;
         this.§"=§();
      }
      
      public function get §=!R§() : uint
      {
         return this.§each §;
      }
      
      public function set §"!§(param1:uint) : void
      {
         this.§6!'§ = param1;
         this.§"=§();
      }
      
      public function get §"!§() : uint
      {
         return this.§6!'§;
      }
      
      private function §"=§() : void
      {
         this.§;+§.textColor = 16711680;
         var _loc1_:Array = this.§"O§(this.§each §);
         var _loc2_:Array = this.§"O§(this.§9%§);
         var _loc3_:Array = this.§"O§(this.§6!'§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §'5§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §'5§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §'5§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §'5§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §'5§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §'5§ + 1 - _loc9_;
         this.§]A§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§;+§.filters = [this.§]A§];
      }
      
      private function §"O§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§]A§ = null;
         this.§;+§.filters = [];
         this.§;+§ = null;
      }
   }
}
