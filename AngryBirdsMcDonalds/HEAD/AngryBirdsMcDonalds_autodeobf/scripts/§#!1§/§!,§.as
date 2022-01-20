package §#!1§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!,§
   {
      
      private static const §"W§:Number = 1 / 255;
       
      
      private var §>!3§:TextField;
      
      private var §<q§:uint;
      
      private var §;S§:uint;
      
      private var §9!S§:uint;
      
      private var §7!Z§:ColorMatrixFilter;
      
      public function §!,§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§>!3§ = param1;
         this.§7!Z§ = new ColorMatrixFilter();
         this.§<q§ = param2;
         this.§9!S§ = param3;
         this.§;S§ = param4;
         this.§]!N§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§>!3§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§>!3§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§<q§ = param1;
         this.§]!N§();
      }
      
      public function get textColor() : uint
      {
         return this.§<q§;
      }
      
      public function set §>#§(param1:uint) : void
      {
         this.§9!S§ = param1;
         this.§]!N§();
      }
      
      public function get §>#§() : uint
      {
         return this.§9!S§;
      }
      
      public function set §`w§(param1:uint) : void
      {
         this.§;S§ = param1;
         this.§]!N§();
      }
      
      public function get §`w§() : uint
      {
         return this.§;S§;
      }
      
      private function §]!N§() : void
      {
         this.§>!3§.textColor = 16711680;
         var _loc1_:Array = this.§]b§(this.§9!S§);
         var _loc2_:Array = this.§]b§(this.§<q§);
         var _loc3_:Array = this.§]b§(this.§;S§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §"W§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §"W§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §"W§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §"W§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §"W§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §"W§ + 1 - _loc9_;
         this.§7!Z§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§>!3§.filters = [this.§7!Z§];
      }
      
      private function §]b§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§7!Z§ = null;
         this.§>!3§.filters = [];
         this.§>!3§ = null;
      }
   }
}
