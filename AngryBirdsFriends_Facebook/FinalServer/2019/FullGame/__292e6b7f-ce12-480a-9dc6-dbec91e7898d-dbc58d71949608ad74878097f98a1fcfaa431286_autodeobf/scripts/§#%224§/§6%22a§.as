package §#"4§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §6"a§
   {
      
      private static const §2#h§:Number = 1 / 255;
       
      
      private var §%!8§:TextField;
      
      private var § #h§:uint;
      
      private var § !Z§:uint;
      
      private var §1#V§:uint;
      
      private var §^$ §:ColorMatrixFilter;
      
      public function §6"a§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§%!8§ = param1;
         this.§^$ § = new ColorMatrixFilter();
         this.§ #h§ = param2;
         this.§1#V§ = param3;
         this.§ !Z§ = param4;
         this.§<"@§();
      }
      
      public function set §+"0§(param1:TextField) : void
      {
         this.§%!8§ = param1;
      }
      
      public function get §+"0§() : TextField
      {
         return this.§%!8§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ #h§ = param1;
         this.§<"@§();
      }
      
      public function get textColor() : uint
      {
         return this.§ #h§;
      }
      
      public function set §2#I§(param1:uint) : void
      {
         this.§1#V§ = param1;
         this.§<"@§();
      }
      
      public function get §2#I§() : uint
      {
         return this.§1#V§;
      }
      
      public function set §5X§(param1:uint) : void
      {
         this.§ !Z§ = param1;
         this.§<"@§();
      }
      
      public function get §5X§() : uint
      {
         return this.§ !Z§;
      }
      
      private function §<"@§() : void
      {
         this.§%!8§.textColor = 16711680;
         var _loc1_:Array = this.§?#X§(this.§1#V§);
         var _loc2_:Array = this.§?#X§(this.§ #h§);
         var _loc3_:Array = this.§?#X§(this.§ !Z§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §2#h§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §2#h§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §2#h§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §2#h§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §2#h§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §2#h§ + 1 - _loc9_;
         this.§^$ §.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§%!8§.filters = [this.§^$ §];
      }
      
      private function §?#X§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§^$ § = null;
         this.§%!8§.filters = [];
         this.§%!8§ = null;
      }
   }
}
