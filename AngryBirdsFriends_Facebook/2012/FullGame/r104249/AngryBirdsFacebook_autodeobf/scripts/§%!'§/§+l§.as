package §%!'§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §+l§
   {
      
      private static const §5!v§:Number = 1 / 255;
       
      
      private var §`E§:TextField;
      
      private var §`""§:uint;
      
      private var §]&§:uint;
      
      private var §,6§:uint;
      
      private var §]6§:ColorMatrixFilter;
      
      public function §+l§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§`E§ = param1;
         this.§]6§ = new ColorMatrixFilter();
         this.§`""§ = param2;
         this.§,6§ = param3;
         this.§]&§ = param4;
         this.§2!t§();
      }
      
      public function set §@i§(param1:TextField) : void
      {
         this.§`E§ = param1;
      }
      
      public function get §@i§() : TextField
      {
         return this.§`E§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§`""§ = param1;
         this.§2!t§();
      }
      
      public function get textColor() : uint
      {
         return this.§`""§;
      }
      
      public function set §-!F§(param1:uint) : void
      {
         this.§,6§ = param1;
         this.§2!t§();
      }
      
      public function get §-!F§() : uint
      {
         return this.§,6§;
      }
      
      public function set §"!z§(param1:uint) : void
      {
         this.§]&§ = param1;
         this.§2!t§();
      }
      
      public function get §"!z§() : uint
      {
         return this.§]&§;
      }
      
      private function §2!t§() : void
      {
         this.§`E§.textColor = 16711680;
         var _loc1_:Array = this.§^w§(this.§,6§);
         var _loc2_:Array = this.§^w§(this.§`""§);
         var _loc3_:Array = this.§^w§(this.§]&§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §5!v§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §5!v§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §5!v§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §5!v§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §5!v§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §5!v§ + 1 - _loc9_;
         this.§]6§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§`E§.filters = [this.§]6§];
      }
      
      private function §^w§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§]6§ = null;
         this.§`E§.filters = [];
         this.§`E§ = null;
      }
   }
}
