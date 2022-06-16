package §3y§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!<§
   {
      
      private static const §<W§:Number = 1 / 255;
       
      
      private var §#!B§:TextField;
      
      private var §?5§:uint;
      
      private var §]@§:uint;
      
      private var §[q§:uint;
      
      private var §>L§:ColorMatrixFilter;
      
      public function §!<§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§#!B§ = param1;
         this.§>L§ = new ColorMatrixFilter();
         this.§?5§ = param2;
         this.§[q§ = param3;
         this.§]@§ = param4;
         this.§=!0§();
      }
      
      public function set §@8§(param1:TextField) : void
      {
         this.§#!B§ = param1;
      }
      
      public function get §@8§() : TextField
      {
         return this.§#!B§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§?5§ = param1;
         this.§=!0§();
      }
      
      public function get textColor() : uint
      {
         return this.§?5§;
      }
      
      public function set §<f§(param1:uint) : void
      {
         this.§[q§ = param1;
         this.§=!0§();
      }
      
      public function get §<f§() : uint
      {
         return this.§[q§;
      }
      
      public function set §%!F§(param1:uint) : void
      {
         this.§]@§ = param1;
         this.§=!0§();
      }
      
      public function get §%!F§() : uint
      {
         return this.§]@§;
      }
      
      private function §=!0§() : void
      {
         this.§#!B§.textColor = 16711680;
         var _loc1_:Array = this.§1z§(this.§[q§);
         var _loc2_:Array = this.§1z§(this.§?5§);
         var _loc3_:Array = this.§1z§(this.§]@§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §<W§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §<W§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §<W§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §<W§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §<W§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §<W§ + 1 - _loc9_;
         this.§>L§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§#!B§.filters = [this.§>L§];
      }
      
      private function §1z§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§>L§ = null;
         this.§#!B§.filters = [];
         this.§#!B§ = null;
      }
   }
}
