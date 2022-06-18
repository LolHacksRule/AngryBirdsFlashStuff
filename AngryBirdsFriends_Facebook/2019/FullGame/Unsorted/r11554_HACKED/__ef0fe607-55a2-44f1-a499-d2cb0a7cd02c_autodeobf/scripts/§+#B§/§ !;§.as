package §+#B§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class § !;§
   {
      
      private static const §`#@§:Number = 1 / 255;
       
      
      private var §^g§:TextField;
      
      private var §1>§:uint;
      
      private var §4"i§:uint;
      
      private var §for §:uint;
      
      private var §+!<§:ColorMatrixFilter;
      
      public function § !;§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§^g§ = param1;
         this.§+!<§ = new ColorMatrixFilter();
         this.§1>§ = param2;
         this.§for § = param3;
         this.§4"i§ = param4;
         this.§@$C§();
      }
      
      public function set §6"m§(param1:TextField) : void
      {
         this.§^g§ = param1;
      }
      
      public function get §6"m§() : TextField
      {
         return this.§^g§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§1>§ = param1;
         this.§@$C§();
      }
      
      public function get textColor() : uint
      {
         return this.§1>§;
      }
      
      public function set §[#i§(param1:uint) : void
      {
         this.§for § = param1;
         this.§@$C§();
      }
      
      public function get §[#i§() : uint
      {
         return this.§for §;
      }
      
      public function set §!! §(param1:uint) : void
      {
         this.§4"i§ = param1;
         this.§@$C§();
      }
      
      public function get §!! §() : uint
      {
         return this.§4"i§;
      }
      
      private function §@$C§() : void
      {
         this.§^g§.textColor = 16711680;
         var _loc1_:Array = this.§'#V§(this.§for §);
         var _loc2_:Array = this.§'#V§(this.§1>§);
         var _loc3_:Array = this.§'#V§(this.§4"i§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §`#@§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §`#@§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §`#@§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §`#@§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §`#@§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §`#@§ + 1 - _loc9_;
         this.§+!<§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§^g§.filters = [this.§+!<§];
      }
      
      private function §'#V§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§+!<§ = null;
         this.§^g§.filters = [];
         this.§^g§ = null;
      }
   }
}
