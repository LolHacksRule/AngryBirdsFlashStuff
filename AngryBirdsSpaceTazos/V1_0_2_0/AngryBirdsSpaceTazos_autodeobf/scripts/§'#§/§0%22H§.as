package §'#§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §0"H§
   {
      
      private static const §`?§:Number = 1 / 255;
       
      
      private var §8!o§:TextField;
      
      private var §^!F§:uint;
      
      private var §9k§:uint;
      
      private var §%!9§:uint;
      
      private var §1a§:ColorMatrixFilter;
      
      public function §0"H§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§8!o§ = param1;
         this.§1a§ = new ColorMatrixFilter();
         this.§^!F§ = param2;
         this.§%!9§ = param3;
         this.§9k§ = param4;
         this.§<!A§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§8!o§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§8!o§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§^!F§ = param1;
         this.§<!A§();
      }
      
      public function get textColor() : uint
      {
         return this.§^!F§;
      }
      
      public function set §[B§(param1:uint) : void
      {
         this.§%!9§ = param1;
         this.§<!A§();
      }
      
      public function get §[B§() : uint
      {
         return this.§%!9§;
      }
      
      public function set §9w§(param1:uint) : void
      {
         this.§9k§ = param1;
         this.§<!A§();
      }
      
      public function get §9w§() : uint
      {
         return this.§9k§;
      }
      
      private function §<!A§() : void
      {
         this.§8!o§.textColor = 16711680;
         var _loc1_:Array = this.§^Q§(this.§%!9§);
         var _loc2_:Array = this.§^Q§(this.§^!F§);
         var _loc3_:Array = this.§^Q§(this.§9k§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §`?§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §`?§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §`?§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §`?§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §`?§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §`?§ + 1 - _loc9_;
         this.§1a§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§8!o§.filters = [this.§1a§];
      }
      
      private function §^Q§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§1a§ = null;
         this.§8!o§.filters = [];
         this.§8!o§ = null;
      }
   }
}
