package §3r§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §+!G§
   {
      
      private static const §"U§:Number = 1 / 255;
       
      
      private var §9!"§:TextField;
      
      private var §>,§:uint;
      
      private var §4![§:uint;
      
      private var §!!I§:uint;
      
      private var §,s§:ColorMatrixFilter;
      
      public function §+!G§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§9!"§ = param1;
         this.§,s§ = new ColorMatrixFilter();
         this.§>,§ = param2;
         this.§!!I§ = param3;
         this.§4![§ = param4;
         this.§]!H§();
      }
      
      public function set §@!A§(param1:TextField) : void
      {
         this.§9!"§ = param1;
      }
      
      public function get §@!A§() : TextField
      {
         return this.§9!"§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§>,§ = param1;
         this.§]!H§();
      }
      
      public function get textColor() : uint
      {
         return this.§>,§;
      }
      
      public function set §package§(param1:uint) : void
      {
         this.§!!I§ = param1;
         this.§]!H§();
      }
      
      public function get §package§() : uint
      {
         return this.§!!I§;
      }
      
      public function set §>l§(param1:uint) : void
      {
         this.§4![§ = param1;
         this.§]!H§();
      }
      
      public function get §>l§() : uint
      {
         return this.§4![§;
      }
      
      private function §]!H§() : void
      {
         this.§9!"§.textColor = 16711680;
         var _loc1_:Array = this.§51§(this.§!!I§);
         var _loc2_:Array = this.§51§(this.§>,§);
         var _loc3_:Array = this.§51§(this.§4![§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §"U§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §"U§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §"U§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §"U§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §"U§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §"U§ + 1 - _loc9_;
         this.§,s§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§9!"§.filters = [this.§,s§];
      }
      
      private function §51§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§,s§ = null;
         this.§9!"§.filters = [];
         this.§9!"§ = null;
      }
   }
}
