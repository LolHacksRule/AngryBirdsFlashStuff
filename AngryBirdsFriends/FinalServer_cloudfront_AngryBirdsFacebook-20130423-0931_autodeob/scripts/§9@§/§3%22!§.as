package §9@§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §3"!§
   {
      
      private static const §9"=§:Number = 1 / 255;
       
      
      private var §-" §:TextField;
      
      private var § V§:uint;
      
      private var §;2§:uint;
      
      private var §<!>§:uint;
      
      private var §8s§:ColorMatrixFilter;
      
      public function §3"!§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§-" § = param1;
         this.§8s§ = new ColorMatrixFilter();
         this.§ V§ = param2;
         this.§<!>§ = param3;
         this.§;2§ = param4;
         this.§1"M§();
      }
      
      public function set §"B§(param1:TextField) : void
      {
         this.§-" § = param1;
      }
      
      public function get §"B§() : TextField
      {
         return this.§-" §;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ V§ = param1;
         this.§1"M§();
      }
      
      public function get textColor() : uint
      {
         return this.§ V§;
      }
      
      public function set §9!A§(param1:uint) : void
      {
         this.§<!>§ = param1;
         this.§1"M§();
      }
      
      public function get §9!A§() : uint
      {
         return this.§<!>§;
      }
      
      public function set §5"Y§(param1:uint) : void
      {
         this.§;2§ = param1;
         this.§1"M§();
      }
      
      public function get §5"Y§() : uint
      {
         return this.§;2§;
      }
      
      private function §1"M§() : void
      {
         this.§-" §.textColor = 16711680;
         var _loc1_:Array = this.§;!9§(this.§<!>§);
         var _loc2_:Array = this.§;!9§(this.§ V§);
         var _loc3_:Array = this.§;!9§(this.§;2§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §9"=§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §9"=§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §9"=§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §9"=§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §9"=§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §9"=§ + 1 - _loc9_;
         this.§8s§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§-" §.filters = [this.§8s§];
      }
      
      private function §;!9§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§8s§ = null;
         this.§-" §.filters = [];
         this.§-" § = null;
      }
   }
}
