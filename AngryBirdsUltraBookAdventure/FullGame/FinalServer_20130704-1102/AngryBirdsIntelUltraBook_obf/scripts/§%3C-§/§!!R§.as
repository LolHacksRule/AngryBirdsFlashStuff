package §<-§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §!!R§
   {
      
      private static const §use§:Number = 1 / 255;
       
      
      private var §5!B§:TextField;
      
      private var §9R§:uint;
      
      private var §!A§:uint;
      
      private var §6!w§:uint;
      
      private var §&!0§:ColorMatrixFilter;
      
      public function §!!R§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§5!B§ = param1;
         this.§&!0§ = new ColorMatrixFilter();
         this.§9R§ = param2;
         this.§6!w§ = param3;
         this.§!A§ = param4;
         this.§@!k§();
      }
      
      public function set §3f§(param1:TextField) : void
      {
         this.§5!B§ = param1;
      }
      
      public function get §3f§() : TextField
      {
         return this.§5!B§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§9R§ = param1;
         this.§@!k§();
      }
      
      public function get textColor() : uint
      {
         return this.§9R§;
      }
      
      public function set §@T§(param1:uint) : void
      {
         this.§6!w§ = param1;
         this.§@!k§();
      }
      
      public function get §@T§() : uint
      {
         return this.§6!w§;
      }
      
      public function set §""!§(param1:uint) : void
      {
         this.§!A§ = param1;
         this.§@!k§();
      }
      
      public function get §""!§() : uint
      {
         return this.§!A§;
      }
      
      private function §@!k§() : void
      {
         this.§5!B§.textColor = 16711680;
         var _loc1_:Array = this.§=A§(this.§6!w§);
         var _loc2_:Array = this.§=A§(this.§9R§);
         var _loc3_:Array = this.§=A§(this.§!A§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §use§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §use§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §use§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §use§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §use§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §use§ + 1 - _loc9_;
         this.§&!0§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§5!B§.filters = [this.§&!0§];
      }
      
      private function §=A§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§&!0§ = null;
         this.§5!B§.filters = [];
         this.§5!B§ = null;
      }
   }
}
