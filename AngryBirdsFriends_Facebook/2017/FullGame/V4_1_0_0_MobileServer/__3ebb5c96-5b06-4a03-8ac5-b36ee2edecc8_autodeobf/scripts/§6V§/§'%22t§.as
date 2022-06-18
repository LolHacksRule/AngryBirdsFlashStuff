package §6V§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §'"t§
   {
      
      private static const §#!!§:Number = 1 / 255;
       
      
      private var §[!&§:TextField;
      
      private var §5g§:uint;
      
      private var §]!;§:uint;
      
      private var §%!P§:uint;
      
      private var §#"f§:ColorMatrixFilter;
      
      public function §'"t§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§[!&§ = param1;
         this.§#"f§ = new ColorMatrixFilter();
         this.§5g§ = param2;
         this.§%!P§ = param3;
         this.§]!;§ = param4;
         this.§=#x§();
      }
      
      public function set §extends§(param1:TextField) : void
      {
         this.§[!&§ = param1;
      }
      
      public function get §extends§() : TextField
      {
         return this.§[!&§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§5g§ = param1;
         this.§=#x§();
      }
      
      public function get textColor() : uint
      {
         return this.§5g§;
      }
      
      public function set §^!+§(param1:uint) : void
      {
         this.§%!P§ = param1;
         this.§=#x§();
      }
      
      public function get §^!+§() : uint
      {
         return this.§%!P§;
      }
      
      public function set §8!b§(param1:uint) : void
      {
         this.§]!;§ = param1;
         this.§=#x§();
      }
      
      public function get §8!b§() : uint
      {
         return this.§]!;§;
      }
      
      private function §=#x§() : void
      {
         this.§[!&§.textColor = 16711680;
         var _loc1_:Array = this.§<!0§(this.§%!P§);
         var _loc2_:Array = this.§<!0§(this.§5g§);
         var _loc3_:Array = this.§<!0§(this.§]!;§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §#!!§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §#!!§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §#!!§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §#!!§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §#!!§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §#!!§ + 1 - _loc9_;
         this.§#"f§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§[!&§.filters = [this.§#"f§];
      }
      
      private function §<!0§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§#"f§ = null;
         this.§[!&§.filters = [];
         this.§[!&§ = null;
      }
   }
}
