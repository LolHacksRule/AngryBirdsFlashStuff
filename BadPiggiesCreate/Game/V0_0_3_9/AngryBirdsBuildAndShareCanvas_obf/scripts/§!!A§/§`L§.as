package §!!A§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §`L§
   {
      
      private static const §1A§:Number = 1 / 255;
       
      
      private var §"!_§:TextField;
      
      private var §3%§:uint;
      
      private var §"!z§:uint;
      
      private var §]"8§:uint;
      
      private var §#!^§:ColorMatrixFilter;
      
      public function §`L§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§"!_§ = param1;
         this.§#!^§ = new ColorMatrixFilter();
         this.§3%§ = param2;
         this.§]"8§ = param3;
         this.§"!z§ = param4;
         this.§7[§();
      }
      
      public function set §]N§(param1:TextField) : void
      {
         this.§"!_§ = param1;
      }
      
      public function get §]N§() : TextField
      {
         return this.§"!_§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§3%§ = param1;
         this.§7[§();
      }
      
      public function get textColor() : uint
      {
         return this.§3%§;
      }
      
      public function set §-!"§(param1:uint) : void
      {
         this.§]"8§ = param1;
         this.§7[§();
      }
      
      public function get §-!"§() : uint
      {
         return this.§]"8§;
      }
      
      public function set §`!8§(param1:uint) : void
      {
         this.§"!z§ = param1;
         this.§7[§();
      }
      
      public function get §`!8§() : uint
      {
         return this.§"!z§;
      }
      
      private function §7[§() : void
      {
         this.§"!_§.textColor = 16711680;
         var _loc1_:Array = this.§'!X§(this.§]"8§);
         var _loc2_:Array = this.§'!X§(this.§3%§);
         var _loc3_:Array = this.§'!X§(this.§"!z§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §1A§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §1A§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §1A§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §1A§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §1A§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §1A§ + 1 - _loc9_;
         this.§#!^§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§"!_§.filters = [this.§#!^§];
      }
      
      private function §'!X§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§#!^§ = null;
         this.§"!_§.filters = [];
         this.§"!_§ = null;
      }
   }
}
