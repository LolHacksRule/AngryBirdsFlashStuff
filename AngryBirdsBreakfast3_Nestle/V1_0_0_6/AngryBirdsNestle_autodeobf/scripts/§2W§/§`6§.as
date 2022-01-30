package §2W§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §`6§
   {
      
      private static const §try §:Number = 1 / 255;
       
      
      private var § e§:TextField;
      
      private var §4!z§:uint;
      
      private var §2b§:uint;
      
      private var §-=§:uint;
      
      private var §0!1§:ColorMatrixFilter;
      
      public function §`6§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§ e§ = param1;
         this.§0!1§ = new ColorMatrixFilter();
         this.§4!z§ = param2;
         this.§-=§ = param3;
         this.§2b§ = param4;
         this.§!e§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§ e§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§ e§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§4!z§ = param1;
         this.§!e§();
      }
      
      public function get textColor() : uint
      {
         return this.§4!z§;
      }
      
      public function set §88§(param1:uint) : void
      {
         this.§-=§ = param1;
         this.§!e§();
      }
      
      public function get §88§() : uint
      {
         return this.§-=§;
      }
      
      public function set §`!h§(param1:uint) : void
      {
         this.§2b§ = param1;
         this.§!e§();
      }
      
      public function get §`!h§() : uint
      {
         return this.§2b§;
      }
      
      private function §!e§() : void
      {
         this.§ e§.textColor = 16711680;
         var _loc1_:Array = this.§3B§(this.§-=§);
         var _loc2_:Array = this.§3B§(this.§4!z§);
         var _loc3_:Array = this.§3B§(this.§2b§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §try § + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §try § + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §try § + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §try § + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §try § + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §try § + 1 - _loc9_;
         this.§0!1§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§ e§.filters = [this.§0!1§];
      }
      
      private function §3B§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§0!1§ = null;
         this.§ e§.filters = [];
         this.§ e§ = null;
      }
   }
}
