package §"n§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §;Z§
   {
      
      private static const §?8§:Number = 1 / 255;
       
      
      private var §"v§:TextField;
      
      private var § %§:uint;
      
      private var §%!D§:uint;
      
      private var §%!5§:uint;
      
      private var §8h§:ColorMatrixFilter;
      
      public function §;Z§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§"v§ = param1;
         this.§8h§ = new ColorMatrixFilter();
         this.§ %§ = param2;
         this.§%!5§ = param3;
         this.§%!D§ = param4;
         this.§`@§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§"v§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§"v§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ %§ = param1;
         this.§`@§();
      }
      
      public function get textColor() : uint
      {
         return this.§ %§;
      }
      
      public function set §!I§(param1:uint) : void
      {
         this.§%!5§ = param1;
         this.§`@§();
      }
      
      public function get §!I§() : uint
      {
         return this.§%!5§;
      }
      
      public function set § !Q§(param1:uint) : void
      {
         this.§%!D§ = param1;
         this.§`@§();
      }
      
      public function get § !Q§() : uint
      {
         return this.§%!D§;
      }
      
      private function §`@§() : void
      {
         this.§"v§.textColor = 16711680;
         var _loc1_:Array = this.§3!3§(this.§%!5§);
         var _loc2_:Array = this.§3!3§(this.§ %§);
         var _loc3_:Array = this.§3!3§(this.§%!D§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §?8§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §?8§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §?8§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §?8§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §?8§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §?8§ + 1 - _loc9_;
         this.§8h§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§"v§.filters = [this.§8h§];
      }
      
      private function §3!3§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§8h§ = null;
         this.§"v§.filters = [];
         this.§"v§ = null;
      }
   }
}
