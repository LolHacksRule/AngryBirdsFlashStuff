package §!!&§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §,d§
   {
      
      private static const §&!r§:Number = 1 / 255;
       
      
      private var §=!=§:TextField;
      
      private var §&!P§:uint;
      
      private var §8!i§:uint;
      
      private var §,&§:uint;
      
      private var §]""§:ColorMatrixFilter;
      
      public function §,d§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§=!=§ = param1;
         this.§]""§ = new ColorMatrixFilter();
         this.§&!P§ = param2;
         this.§,&§ = param3;
         this.§8!i§ = param4;
         this.§`!R§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§=!=§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§=!=§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§&!P§ = param1;
         this.§`!R§();
      }
      
      public function get textColor() : uint
      {
         return this.§&!P§;
      }
      
      public function set §8!<§(param1:uint) : void
      {
         this.§,&§ = param1;
         this.§`!R§();
      }
      
      public function get §8!<§() : uint
      {
         return this.§,&§;
      }
      
      public function set §`%§(param1:uint) : void
      {
         this.§8!i§ = param1;
         this.§`!R§();
      }
      
      public function get §`%§() : uint
      {
         return this.§8!i§;
      }
      
      private function §`!R§() : void
      {
         this.§=!=§.textColor = 16711680;
         var _loc1_:Array = this.§,_§(this.§,&§);
         var _loc2_:Array = this.§,_§(this.§&!P§);
         var _loc3_:Array = this.§,_§(this.§8!i§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §&!r§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §&!r§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §&!r§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §&!r§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §&!r§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §&!r§ + 1 - _loc9_;
         this.§]""§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§=!=§.filters = [this.§]""§];
      }
      
      private function §,_§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§]""§ = null;
         this.§=!=§.filters = [];
         this.§=!=§ = null;
      }
   }
}
