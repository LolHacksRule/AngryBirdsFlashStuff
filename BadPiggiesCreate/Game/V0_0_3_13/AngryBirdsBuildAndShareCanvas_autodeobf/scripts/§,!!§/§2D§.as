package §,!!§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §2D§
   {
      
      private static const §>!s§:Number = 1 / 255;
       
      
      private var §7!n§:TextField;
      
      private var §0+§:uint;
      
      private var §2v§:uint;
      
      private var §>j§:uint;
      
      private var set:ColorMatrixFilter;
      
      public function §2D§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§7!n§ = param1;
         this.set = new ColorMatrixFilter();
         this.§0+§ = param2;
         this.§>j§ = param3;
         this.§2v§ = param4;
         this.§4"8§();
      }
      
      public function set §^A§(param1:TextField) : void
      {
         this.§7!n§ = param1;
      }
      
      public function get §^A§() : TextField
      {
         return this.§7!n§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§0+§ = param1;
         this.§4"8§();
      }
      
      public function get textColor() : uint
      {
         return this.§0+§;
      }
      
      public function set §@%§(param1:uint) : void
      {
         this.§>j§ = param1;
         this.§4"8§();
      }
      
      public function get §@%§() : uint
      {
         return this.§>j§;
      }
      
      public function set §#V§(param1:uint) : void
      {
         this.§2v§ = param1;
         this.§4"8§();
      }
      
      public function get §#V§() : uint
      {
         return this.§2v§;
      }
      
      private function §4"8§() : void
      {
         this.§7!n§.textColor = 16711680;
         var _loc1_:Array = this.§<R§(this.§>j§);
         var _loc2_:Array = this.§<R§(this.§0+§);
         var _loc3_:Array = this.§<R§(this.§2v§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §>!s§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §>!s§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §>!s§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §>!s§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §>!s§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §>!s§ + 1 - _loc9_;
         this.set.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§7!n§.filters = [this.set];
      }
      
      private function §<R§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.set = null;
         this.§7!n§.filters = [];
         this.§7!n§ = null;
      }
   }
}
