package §-!F§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §7!<§
   {
      
      private static const §2w§:Number = 1 / 255;
       
      
      private var §&!K§:TextField;
      
      private var §-J§:uint;
      
      private var §!6§:uint;
      
      private var §,"$§:uint;
      
      private var §6o§:ColorMatrixFilter;
      
      public function §7!<§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§&!K§ = param1;
         this.§6o§ = new ColorMatrixFilter();
         this.§-J§ = param2;
         this.§,"$§ = param3;
         this.§!6§ = param4;
         this.§2#§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§&!K§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§&!K§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§-J§ = param1;
         this.§2#§();
      }
      
      public function get textColor() : uint
      {
         return this.§-J§;
      }
      
      public function set §<"!§(param1:uint) : void
      {
         this.§,"$§ = param1;
         this.§2#§();
      }
      
      public function get §<"!§() : uint
      {
         return this.§,"$§;
      }
      
      public function set §""0§(param1:uint) : void
      {
         this.§!6§ = param1;
         this.§2#§();
      }
      
      public function get §""0§() : uint
      {
         return this.§!6§;
      }
      
      private function §2#§() : void
      {
         this.§&!K§.textColor = 16711680;
         var _loc1_:Array = this.§`"#§(this.§,"$§);
         var _loc2_:Array = this.§`"#§(this.§-J§);
         var _loc3_:Array = this.§`"#§(this.§!6§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §2w§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §2w§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §2w§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §2w§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §2w§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §2w§ + 1 - _loc9_;
         this.§6o§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§&!K§.filters = [this.§6o§];
      }
      
      private function §`"#§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§6o§ = null;
         this.§&!K§.filters = [];
         this.§&!K§ = null;
      }
   }
}
