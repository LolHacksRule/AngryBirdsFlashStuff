package §<a§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §>!i§
   {
      
      private static const §%!C§:Number = 1 / 255;
       
      
      private var §5!=§:TextField;
      
      private var § 2§:uint;
      
      private var §#!P§:uint;
      
      private var §;"+§:uint;
      
      private var §7!Q§:ColorMatrixFilter;
      
      public function §>!i§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§5!=§ = param1;
         this.§7!Q§ = new ColorMatrixFilter();
         this.§ 2§ = param2;
         this.§;"+§ = param3;
         this.§#!P§ = param4;
         this.§'O§();
      }
      
      public function set §6]§(param1:TextField) : void
      {
         this.§5!=§ = param1;
      }
      
      public function get §6]§() : TextField
      {
         return this.§5!=§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ 2§ = param1;
         this.§'O§();
      }
      
      public function get textColor() : uint
      {
         return this.§ 2§;
      }
      
      public function set §?!$§(param1:uint) : void
      {
         this.§;"+§ = param1;
         this.§'O§();
      }
      
      public function get §?!$§() : uint
      {
         return this.§;"+§;
      }
      
      public function set §5!2§(param1:uint) : void
      {
         this.§#!P§ = param1;
         this.§'O§();
      }
      
      public function get §5!2§() : uint
      {
         return this.§#!P§;
      }
      
      private function §'O§() : void
      {
         this.§5!=§.textColor = 16711680;
         var _loc1_:Array = this.§2!j§(this.§;"+§);
         var _loc2_:Array = this.§2!j§(this.§ 2§);
         var _loc3_:Array = this.§2!j§(this.§#!P§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §%!C§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §%!C§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §%!C§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §%!C§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §%!C§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §%!C§ + 1 - _loc9_;
         this.§7!Q§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§5!=§.filters = [this.§7!Q§];
      }
      
      private function §2!j§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§7!Q§ = null;
         this.§5!=§.filters = [];
         this.§5!=§ = null;
      }
   }
}
