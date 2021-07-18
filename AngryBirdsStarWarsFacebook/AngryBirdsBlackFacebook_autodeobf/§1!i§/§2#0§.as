package §1!i§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §2#0§
   {
      
      private static const §]!]§:Number = 1 / 255;
       
      
      private var §13§:TextField;
      
      private var §=#N§:uint;
      
      private var §?!1§:uint;
      
      private var §7"G§:uint;
      
      private var §@"]§:ColorMatrixFilter;
      
      public function §2#0§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§13§ = param1;
         this.§@"]§ = new ColorMatrixFilter();
         this.§=#N§ = param2;
         this.§7"G§ = param3;
         this.§?!1§ = param4;
         this.§=!a§();
      }
      
      public function set §`"Y§(param1:TextField) : void
      {
         this.§13§ = param1;
      }
      
      public function get §`"Y§() : TextField
      {
         return this.§13§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§=#N§ = param1;
         this.§=!a§();
      }
      
      public function get textColor() : uint
      {
         return this.§=#N§;
      }
      
      public function set §]#_§(param1:uint) : void
      {
         this.§7"G§ = param1;
         this.§=!a§();
      }
      
      public function get §]#_§() : uint
      {
         return this.§7"G§;
      }
      
      public function set §5"§(param1:uint) : void
      {
         this.§?!1§ = param1;
         this.§=!a§();
      }
      
      public function get §5"§() : uint
      {
         return this.§?!1§;
      }
      
      private function §=!a§() : void
      {
         this.§13§.textColor = 16711680;
         var _loc1_:Array = this.§'S§(this.§7"G§);
         var _loc2_:Array = this.§'S§(this.§=#N§);
         var _loc3_:Array = this.§'S§(this.§?!1§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §]!]§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §]!]§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §]!]§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §]!]§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §]!]§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §]!]§ + 1 - _loc9_;
         this.§@"]§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§13§.filters = [this.§@"]§];
      }
      
      private function §'S§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§@"]§ = null;
         this.§13§.filters = [];
         this.§13§ = null;
      }
   }
}
