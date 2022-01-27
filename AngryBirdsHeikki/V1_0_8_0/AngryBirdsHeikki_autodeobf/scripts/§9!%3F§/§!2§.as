package §9!?§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!2§
   {
      
      private static const §7n§:Number = 1 / 255;
       
      
      private var §3x§:TextField;
      
      private var §[9§:uint;
      
      private var §@Q§:uint;
      
      private var §^4§:uint;
      
      private var §@<§:ColorMatrixFilter;
      
      public function §!2§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§3x§ = param1;
         this.§@<§ = new ColorMatrixFilter();
         this.§[9§ = param2;
         this.§^4§ = param3;
         this.§@Q§ = param4;
         this.§6!X§();
      }
      
      public function set §]!+§(param1:TextField) : void
      {
         this.§3x§ = param1;
      }
      
      public function get §]!+§() : TextField
      {
         return this.§3x§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§[9§ = param1;
         this.§6!X§();
      }
      
      public function get textColor() : uint
      {
         return this.§[9§;
      }
      
      public function set §'!M§(param1:uint) : void
      {
         this.§^4§ = param1;
         this.§6!X§();
      }
      
      public function get §'!M§() : uint
      {
         return this.§^4§;
      }
      
      public function set §2!!§(param1:uint) : void
      {
         this.§@Q§ = param1;
         this.§6!X§();
      }
      
      public function get §2!!§() : uint
      {
         return this.§@Q§;
      }
      
      private function §6!X§() : void
      {
         this.§3x§.textColor = 16711680;
         var _loc1_:Array = this.§;g§(this.§^4§);
         var _loc2_:Array = this.§;g§(this.§[9§);
         var _loc3_:Array = this.§;g§(this.§@Q§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §7n§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §7n§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §7n§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §7n§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §7n§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §7n§ + 1 - _loc9_;
         this.§@<§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§3x§.filters = [this.§@<§];
      }
      
      private function §;g§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§@<§ = null;
         this.§3x§.filters = [];
         this.§3x§ = null;
      }
   }
}
