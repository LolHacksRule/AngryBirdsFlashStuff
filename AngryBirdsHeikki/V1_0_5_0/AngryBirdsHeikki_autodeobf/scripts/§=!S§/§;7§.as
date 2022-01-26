package §=!S§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §;7§
   {
      
      private static const §;!G§:Number = 1 / 255;
       
      
      private var §5!R§:TextField;
      
      private var §1$§:uint;
      
      private var §7U§:uint;
      
      private var §6s§:uint;
      
      private var §%<§:ColorMatrixFilter;
      
      public function §;7§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§5!R§ = param1;
         this.§%<§ = new ColorMatrixFilter();
         this.§1$§ = param2;
         this.§6s§ = param3;
         this.§7U§ = param4;
         this.§%C§();
      }
      
      private static function §31§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function set §=!+§(param1:TextField) : void
      {
         this.§5!R§ = param1;
      }
      
      public function get §=!+§() : TextField
      {
         return this.§5!R§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§1$§ = param1;
         this.§%C§();
      }
      
      public function get textColor() : uint
      {
         return this.§1$§;
      }
      
      public function set §=!'§(param1:uint) : void
      {
         this.§6s§ = param1;
         this.§%C§();
      }
      
      public function get §=!'§() : uint
      {
         return this.§6s§;
      }
      
      public function set §&!a§(param1:uint) : void
      {
         this.§7U§ = param1;
         this.§%C§();
      }
      
      public function get §&!a§() : uint
      {
         return this.§7U§;
      }
      
      private function §%C§() : void
      {
         this.§5!R§.textColor = 16711680;
         var _loc1_:Array = §31§(this.§6s§);
         var _loc2_:Array = §31§(this.§1$§);
         var _loc3_:Array = §31§(this.§7U§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §;!G§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §;!G§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §;!G§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §;!G§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §;!G§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §;!G§ + 1 - _loc9_;
         this.§%<§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§5!R§.filters = [this.§%<§];
      }
   }
}
