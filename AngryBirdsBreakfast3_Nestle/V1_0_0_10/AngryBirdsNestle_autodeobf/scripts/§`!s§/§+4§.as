package §`!s§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §+4§
   {
      
      private static const §=""§:Number = 1 / 255;
       
      
      private var §"S§:TextField;
      
      private var §6""§:uint;
      
      private var §;"+§:uint;
      
      private var §`b§:uint;
      
      private var §33§:ColorMatrixFilter;
      
      public function §+4§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§"S§ = param1;
         this.§33§ = new ColorMatrixFilter();
         this.§6""§ = param2;
         this.§`b§ = param3;
         this.§;"+§ = param4;
         this.§^N§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§"S§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§"S§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§6""§ = param1;
         this.§^N§();
      }
      
      public function get textColor() : uint
      {
         return this.§6""§;
      }
      
      public function set §>z§(param1:uint) : void
      {
         this.§`b§ = param1;
         this.§^N§();
      }
      
      public function get §>z§() : uint
      {
         return this.§`b§;
      }
      
      public function set §">§(param1:uint) : void
      {
         this.§;"+§ = param1;
         this.§^N§();
      }
      
      public function get §">§() : uint
      {
         return this.§;"+§;
      }
      
      private function §^N§() : void
      {
         this.§"S§.textColor = 16711680;
         var _loc1_:Array = this.§7"'§(this.§`b§);
         var _loc2_:Array = this.§7"'§(this.§6""§);
         var _loc3_:Array = this.§7"'§(this.§;"+§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §=""§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §=""§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §=""§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §=""§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §=""§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §=""§ + 1 - _loc9_;
         this.§33§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§"S§.filters = [this.§33§];
      }
      
      private function §7"'§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§33§ = null;
         this.§"S§.filters = [];
         this.§"S§ = null;
      }
   }
}
