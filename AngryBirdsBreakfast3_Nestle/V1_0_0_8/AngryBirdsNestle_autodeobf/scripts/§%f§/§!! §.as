package §%f§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!! §
   {
      
      private static const §1"8§:Number = 1 / 255;
       
      
      private var §6s§:TextField;
      
      private var §[!z§:uint;
      
      private var §<i§:uint;
      
      private var §8D§:uint;
      
      private var §;"§:ColorMatrixFilter;
      
      public function §!! §(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§6s§ = param1;
         this.§;"§ = new ColorMatrixFilter();
         this.§[!z§ = param2;
         this.§8D§ = param3;
         this.§<i§ = param4;
         this.§2!A§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§6s§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§6s§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§[!z§ = param1;
         this.§2!A§();
      }
      
      public function get textColor() : uint
      {
         return this.§[!z§;
      }
      
      public function set §5j§(param1:uint) : void
      {
         this.§8D§ = param1;
         this.§2!A§();
      }
      
      public function get §5j§() : uint
      {
         return this.§8D§;
      }
      
      public function set §=E§(param1:uint) : void
      {
         this.§<i§ = param1;
         this.§2!A§();
      }
      
      public function get §=E§() : uint
      {
         return this.§<i§;
      }
      
      private function §2!A§() : void
      {
         this.§6s§.textColor = 16711680;
         var _loc1_:Array = this.§=!D§(this.§8D§);
         var _loc2_:Array = this.§=!D§(this.§[!z§);
         var _loc3_:Array = this.§=!D§(this.§<i§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §1"8§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §1"8§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §1"8§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §1"8§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §1"8§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §1"8§ + 1 - _loc9_;
         this.§;"§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§6s§.filters = [this.§;"§];
      }
      
      private function §=!D§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§;"§ = null;
         this.§6s§.filters = [];
         this.§6s§ = null;
      }
   }
}
