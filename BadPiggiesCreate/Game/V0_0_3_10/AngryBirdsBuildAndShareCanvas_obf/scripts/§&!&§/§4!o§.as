package §&!&§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §4!o§
   {
      
      private static const §[S§:Number = 1 / 255;
       
      
      private var §?B§:TextField;
      
      private var §>%§:uint;
      
      private var §+!l§:uint;
      
      private var §]+§:uint;
      
      private var §^T§:ColorMatrixFilter;
      
      public function §4!o§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§?B§ = param1;
         this.§^T§ = new ColorMatrixFilter();
         this.§>%§ = param2;
         this.§]+§ = param3;
         this.§+!l§ = param4;
         this.§3t§();
      }
      
      public function set §!v§(param1:TextField) : void
      {
         this.§?B§ = param1;
      }
      
      public function get §!v§() : TextField
      {
         return this.§?B§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§>%§ = param1;
         this.§3t§();
      }
      
      public function get textColor() : uint
      {
         return this.§>%§;
      }
      
      public function set § "1§(param1:uint) : void
      {
         this.§]+§ = param1;
         this.§3t§();
      }
      
      public function get § "1§() : uint
      {
         return this.§]+§;
      }
      
      public function set §^! §(param1:uint) : void
      {
         this.§+!l§ = param1;
         this.§3t§();
      }
      
      public function get §^! §() : uint
      {
         return this.§+!l§;
      }
      
      private function §3t§() : void
      {
         this.§?B§.textColor = 16711680;
         var _loc1_:Array = this.§4!Y§(this.§]+§);
         var _loc2_:Array = this.§4!Y§(this.§>%§);
         var _loc3_:Array = this.§4!Y§(this.§+!l§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §[S§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §[S§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §[S§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §[S§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §[S§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §[S§ + 1 - _loc9_;
         this.§^T§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§?B§.filters = [this.§^T§];
      }
      
      private function §4!Y§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§^T§ = null;
         this.§?B§.filters = [];
         this.§?B§ = null;
      }
   }
}
