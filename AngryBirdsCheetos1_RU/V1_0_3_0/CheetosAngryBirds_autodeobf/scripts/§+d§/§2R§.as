package §+d§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §2R§
   {
      
      private static const §^3§:Number = 1 / 255;
       
      
      private var §]!N§:TextField;
      
      private var §&C§:uint;
      
      private var §+`§:uint;
      
      private var §`-§:uint;
      
      private var §2!W§:ColorMatrixFilter;
      
      public function §2R§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§]!N§ = param1;
         this.§2!W§ = new ColorMatrixFilter();
         this.§&C§ = param2;
         this.§`-§ = param3;
         this.§+`§ = param4;
         this.§ §();
      }
      
      public function set §=2§(param1:TextField) : void
      {
         this.§]!N§ = param1;
      }
      
      public function get §=2§() : TextField
      {
         return this.§]!N§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§&C§ = param1;
         this.§ §();
      }
      
      public function get textColor() : uint
      {
         return this.§&C§;
      }
      
      public function set §1p§(param1:uint) : void
      {
         this.§`-§ = param1;
         this.§ §();
      }
      
      public function get §1p§() : uint
      {
         return this.§`-§;
      }
      
      public function set § !@§(param1:uint) : void
      {
         this.§+`§ = param1;
         this.§ §();
      }
      
      public function get § !@§() : uint
      {
         return this.§+`§;
      }
      
      private function § §() : void
      {
         this.§]!N§.textColor = 16711680;
         var _loc1_:Array = this.§`!X§(this.§`-§);
         var _loc2_:Array = this.§`!X§(this.§&C§);
         var _loc3_:Array = this.§`!X§(this.§+`§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §^3§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §^3§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §^3§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §^3§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §^3§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §^3§ + 1 - _loc9_;
         this.§2!W§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§]!N§.filters = [this.§2!W§];
      }
      
      private function §`!X§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§2!W§ = null;
         this.§]!N§.filters = [];
         this.§]!N§ = null;
      }
   }
}
