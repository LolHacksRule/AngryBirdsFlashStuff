package §3V§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §`;§
   {
      
      private static const §@9§:Number = 1 / 255;
       
      
      private var §[!J§:TextField;
      
      private var § T§:uint;
      
      private var §,R§:uint;
      
      private var § !=§:uint;
      
      private var §4%§:ColorMatrixFilter;
      
      public function §`;§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§[!J§ = param1;
         this.§4%§ = new ColorMatrixFilter();
         this.§ T§ = param2;
         this.§ !=§ = param3;
         this.§,R§ = param4;
         this.§=E§();
      }
      
      public function set §'g§(param1:TextField) : void
      {
         this.§[!J§ = param1;
      }
      
      public function get §'g§() : TextField
      {
         return this.§[!J§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ T§ = param1;
         this.§=E§();
      }
      
      public function get textColor() : uint
      {
         return this.§ T§;
      }
      
      public function set §`!=§(param1:uint) : void
      {
         this.§ !=§ = param1;
         this.§=E§();
      }
      
      public function get §`!=§() : uint
      {
         return this.§ !=§;
      }
      
      public function set §5^§(param1:uint) : void
      {
         this.§,R§ = param1;
         this.§=E§();
      }
      
      public function get §5^§() : uint
      {
         return this.§,R§;
      }
      
      private function §=E§() : void
      {
         this.§[!J§.textColor = 16711680;
         var _loc1_:Array = this.§83§(this.§ !=§);
         var _loc2_:Array = this.§83§(this.§ T§);
         var _loc3_:Array = this.§83§(this.§,R§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §@9§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §@9§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §@9§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §@9§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §@9§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §@9§ + 1 - _loc9_;
         this.§4%§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§[!J§.filters = [this.§4%§];
      }
      
      private function §83§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§4%§ = null;
         this.§[!J§.filters = [];
         this.§[!J§ = null;
      }
   }
}
