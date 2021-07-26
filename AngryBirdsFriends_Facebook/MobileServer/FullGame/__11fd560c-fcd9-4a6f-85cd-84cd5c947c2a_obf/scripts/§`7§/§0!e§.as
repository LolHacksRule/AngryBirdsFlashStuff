package §`7§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §0!e§
   {
      
      private static const §-E§:Number = 1 / 255;
       
      
      private var §4!"§:TextField;
      
      private var §9!c§:uint;
      
      private var §3&§:uint;
      
      private var §7"h§:uint;
      
      private var §]P§:ColorMatrixFilter;
      
      public function §0!e§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§4!"§ = param1;
         this.§]P§ = new ColorMatrixFilter();
         this.§9!c§ = param2;
         this.§7"h§ = param3;
         this.§3&§ = param4;
         this.§!f§();
      }
      
      public function set §[!B§(param1:TextField) : void
      {
         this.§4!"§ = param1;
      }
      
      public function get §[!B§() : TextField
      {
         return this.§4!"§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§9!c§ = param1;
         this.§!f§();
      }
      
      public function get textColor() : uint
      {
         return this.§9!c§;
      }
      
      public function set §'"f§(param1:uint) : void
      {
         this.§7"h§ = param1;
         this.§!f§();
      }
      
      public function get §'"f§() : uint
      {
         return this.§7"h§;
      }
      
      public function set §1!`§(param1:uint) : void
      {
         this.§3&§ = param1;
         this.§!f§();
      }
      
      public function get §1!`§() : uint
      {
         return this.§3&§;
      }
      
      private function §!f§() : void
      {
         this.§4!"§.textColor = 16711680;
         var _loc1_:Array = this.§else§(this.§7"h§);
         var _loc2_:Array = this.§else§(this.§9!c§);
         var _loc3_:Array = this.§else§(this.§3&§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §-E§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §-E§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §-E§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §-E§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §-E§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §-E§ + 1 - _loc9_;
         this.§]P§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§4!"§.filters = [this.§]P§];
      }
      
      private function §else§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§]P§ = null;
         this.§4!"§.filters = [];
         this.§4!"§ = null;
      }
   }
}
