package §+!B§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §[y§
   {
      
      private static const §=[§:Number = 1 / 255;
       
      
      private var §@w§:TextField;
      
      private var §'!§:uint;
      
      private var §<'§:uint;
      
      private var §?!D§:uint;
      
      private var §7!K§:ColorMatrixFilter;
      
      public function §[y§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§@w§ = param1;
         this.§7!K§ = new ColorMatrixFilter();
         this.§'!§ = param2;
         this.§?!D§ = param3;
         this.§<'§ = param4;
         this.§]!%§();
      }
      
      public function set §-,§(param1:TextField) : void
      {
         this.§@w§ = param1;
      }
      
      public function get §-,§() : TextField
      {
         return this.§@w§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§'!§ = param1;
         this.§]!%§();
      }
      
      public function get textColor() : uint
      {
         return this.§'!§;
      }
      
      public function set §9&§(param1:uint) : void
      {
         this.§?!D§ = param1;
         this.§]!%§();
      }
      
      public function get §9&§() : uint
      {
         return this.§?!D§;
      }
      
      public function set §[S§(param1:uint) : void
      {
         this.§<'§ = param1;
         this.§]!%§();
      }
      
      public function get §[S§() : uint
      {
         return this.§<'§;
      }
      
      private function §]!%§() : void
      {
         this.§@w§.textColor = 16711680;
         var _loc1_:Array = this.§]-§(this.§?!D§);
         var _loc2_:Array = this.§]-§(this.§'!§);
         var _loc3_:Array = this.§]-§(this.§<'§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §=[§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §=[§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §=[§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §=[§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §=[§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §=[§ + 1 - _loc9_;
         this.§7!K§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§@w§.filters = [this.§7!K§];
      }
      
      private function §]-§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§7!K§ = null;
         this.§@w§.filters = [];
         this.§@w§ = null;
      }
   }
}
