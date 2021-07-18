package §>!#§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!!E§
   {
      
      private static const §##J§:Number = 1 / 255;
       
      
      private var §@]§:TextField;
      
      private var §4"A§:uint;
      
      private var §#$!§:uint;
      
      private var §0R§:uint;
      
      private var § "u§:ColorMatrixFilter;
      
      public function §!!E§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§@]§ = param1;
         this.§ "u§ = new ColorMatrixFilter();
         this.§4"A§ = param2;
         this.§0R§ = param3;
         this.§#$!§ = param4;
         this.§#p§();
      }
      
      public function set §!!W§(param1:TextField) : void
      {
         this.§@]§ = param1;
      }
      
      public function get §!!W§() : TextField
      {
         return this.§@]§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§4"A§ = param1;
         this.§#p§();
      }
      
      public function get textColor() : uint
      {
         return this.§4"A§;
      }
      
      public function set § !g§(param1:uint) : void
      {
         this.§0R§ = param1;
         this.§#p§();
      }
      
      public function get § !g§() : uint
      {
         return this.§0R§;
      }
      
      public function set §-!L§(param1:uint) : void
      {
         this.§#$!§ = param1;
         this.§#p§();
      }
      
      public function get §-!L§() : uint
      {
         return this.§#$!§;
      }
      
      private function §#p§() : void
      {
         this.§@]§.textColor = 16711680;
         var _loc1_:Array = this.§6A§(this.§0R§);
         var _loc2_:Array = this.§6A§(this.§4"A§);
         var _loc3_:Array = this.§6A§(this.§#$!§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §##J§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §##J§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §##J§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §##J§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §##J§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §##J§ + 1 - _loc9_;
         this.§ "u§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§@]§.filters = [this.§ "u§];
      }
      
      private function §6A§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§ "u§ = null;
         this.§@]§.filters = [];
         this.§@]§ = null;
      }
   }
}
