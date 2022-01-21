package § e§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §#!N§
   {
      
      private static const §<!I§:Number = 1 / 255;
       
      
      private var §&t§:TextField;
      
      private var §46§:uint;
      
      private var §<!L§:uint;
      
      private var §&Q§:uint;
      
      private var §]S§:ColorMatrixFilter;
      
      public function §#!N§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§&t§ = param1;
         this.§]S§ = new ColorMatrixFilter();
         this.§46§ = param2;
         this.§&Q§ = param3;
         this.§<!L§ = param4;
         this.§2!d§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§&t§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§&t§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§46§ = param1;
         this.§2!d§();
      }
      
      public function get textColor() : uint
      {
         return this.§46§;
      }
      
      public function set §&!G§(param1:uint) : void
      {
         this.§&Q§ = param1;
         this.§2!d§();
      }
      
      public function get §&!G§() : uint
      {
         return this.§&Q§;
      }
      
      public function set §!s§(param1:uint) : void
      {
         this.§<!L§ = param1;
         this.§2!d§();
      }
      
      public function get §!s§() : uint
      {
         return this.§<!L§;
      }
      
      private function §2!d§() : void
      {
         this.§&t§.textColor = 16711680;
         var _loc1_:Array = this.§3!m§(this.§&Q§);
         var _loc2_:Array = this.§3!m§(this.§46§);
         var _loc3_:Array = this.§3!m§(this.§<!L§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §<!I§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §<!I§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §<!I§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §<!I§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §<!I§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §<!I§ + 1 - _loc9_;
         this.§]S§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§&t§.filters = [this.§]S§];
      }
      
      private function §3!m§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§]S§ = null;
         this.§&t§.filters = [];
         this.§&t§ = null;
      }
   }
}
