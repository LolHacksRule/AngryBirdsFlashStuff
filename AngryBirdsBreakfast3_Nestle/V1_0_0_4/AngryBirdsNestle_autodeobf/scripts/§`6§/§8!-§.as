package §`6§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §8!-§
   {
      
      private static const §<!§:Number = 1 / 255;
       
      
      private var §<!=§:TextField;
      
      private var §[!4§:uint;
      
      private var §9@§:uint;
      
      private var §9!K§:uint;
      
      private var §?D§:ColorMatrixFilter;
      
      public function §8!-§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§<!=§ = param1;
         this.§?D§ = new ColorMatrixFilter();
         this.§[!4§ = param2;
         this.§9!K§ = param3;
         this.§9@§ = param4;
         this.§3!?§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§<!=§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§<!=§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§[!4§ = param1;
         this.§3!?§();
      }
      
      public function get textColor() : uint
      {
         return this.§[!4§;
      }
      
      public function set §?!q§(param1:uint) : void
      {
         this.§9!K§ = param1;
         this.§3!?§();
      }
      
      public function get §?!q§() : uint
      {
         return this.§9!K§;
      }
      
      public function set §%`§(param1:uint) : void
      {
         this.§9@§ = param1;
         this.§3!?§();
      }
      
      public function get §%`§() : uint
      {
         return this.§9@§;
      }
      
      private function §3!?§() : void
      {
         this.§<!=§.textColor = 16711680;
         var _loc1_:Array = this.§0!i§(this.§9!K§);
         var _loc2_:Array = this.§0!i§(this.§[!4§);
         var _loc3_:Array = this.§0!i§(this.§9@§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §<!§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §<!§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §<!§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §<!§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §<!§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §<!§ + 1 - _loc9_;
         this.§?D§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§<!=§.filters = [this.§?D§];
      }
      
      private function §0!i§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§?D§ = null;
         this.§<!=§.filters = [];
         this.§<!=§ = null;
      }
   }
}
