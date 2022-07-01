package §2i§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §]§
   {
      
      private static const §&]§:Number = 1 / 255;
       
      
      private var §1!k§:TextField;
      
      private var §1[§:uint;
      
      private var §1!j§:uint;
      
      private var §%6§:uint;
      
      private var §-"9§:ColorMatrixFilter;
      
      public function §]§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§1!k§ = param1;
         this.§-"9§ = new ColorMatrixFilter();
         this.§1[§ = param2;
         this.§%6§ = param3;
         this.§1!j§ = param4;
         this.§!!G§();
      }
      
      public function set §9!T§(param1:TextField) : void
      {
         this.§1!k§ = param1;
      }
      
      public function get §9!T§() : TextField
      {
         return this.§1!k§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§1[§ = param1;
         this.§!!G§();
      }
      
      public function get textColor() : uint
      {
         return this.§1[§;
      }
      
      public function set §9@§(param1:uint) : void
      {
         this.§%6§ = param1;
         this.§!!G§();
      }
      
      public function get §9@§() : uint
      {
         return this.§%6§;
      }
      
      public function set § z§(param1:uint) : void
      {
         this.§1!j§ = param1;
         this.§!!G§();
      }
      
      public function get § z§() : uint
      {
         return this.§1!j§;
      }
      
      private function §!!G§() : void
      {
         this.§1!k§.textColor = 16711680;
         var _loc1_:Array = this.§'!f§(this.§%6§);
         var _loc2_:Array = this.§'!f§(this.§1[§);
         var _loc3_:Array = this.§'!f§(this.§1!j§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §&]§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §&]§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §&]§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §&]§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §&]§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §&]§ + 1 - _loc9_;
         this.§-"9§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§1!k§.filters = [this.§-"9§];
      }
      
      private function §'!f§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§-"9§ = null;
         this.§1!k§.filters = [];
         this.§1!k§ = null;
      }
   }
}
