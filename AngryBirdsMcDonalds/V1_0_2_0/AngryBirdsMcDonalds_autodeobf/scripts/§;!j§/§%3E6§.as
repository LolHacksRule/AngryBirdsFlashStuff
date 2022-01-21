package §;!j§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §>6§
   {
      
      private static const §1!E§:Number = 1 / 255;
       
      
      private var §^!m§:TextField;
      
      private var § 4§:uint;
      
      private var §9!Q§:uint;
      
      private var §?!<§:uint;
      
      private var §^!R§:ColorMatrixFilter;
      
      public function §>6§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§^!m§ = param1;
         this.§^!R§ = new ColorMatrixFilter();
         this.§ 4§ = param2;
         this.§?!<§ = param3;
         this.§9!Q§ = param4;
         this.§0A§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§^!m§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§^!m§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ 4§ = param1;
         this.§0A§();
      }
      
      public function get textColor() : uint
      {
         return this.§ 4§;
      }
      
      public function set §88§(param1:uint) : void
      {
         this.§?!<§ = param1;
         this.§0A§();
      }
      
      public function get §88§() : uint
      {
         return this.§?!<§;
      }
      
      public function set §>2§(param1:uint) : void
      {
         this.§9!Q§ = param1;
         this.§0A§();
      }
      
      public function get §>2§() : uint
      {
         return this.§9!Q§;
      }
      
      private function §0A§() : void
      {
         this.§^!m§.textColor = 16711680;
         var _loc1_:Array = this.§!L§(this.§?!<§);
         var _loc2_:Array = this.§!L§(this.§ 4§);
         var _loc3_:Array = this.§!L§(this.§9!Q§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §1!E§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §1!E§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §1!E§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §1!E§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §1!E§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §1!E§ + 1 - _loc9_;
         this.§^!R§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§^!m§.filters = [this.§^!R§];
      }
      
      private function §!L§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§^!R§ = null;
         this.§^!m§.filters = [];
         this.§^!m§ = null;
      }
   }
}
