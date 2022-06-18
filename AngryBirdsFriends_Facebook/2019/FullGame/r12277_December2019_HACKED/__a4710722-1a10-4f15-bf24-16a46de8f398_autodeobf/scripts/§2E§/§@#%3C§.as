package §2E§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §@#<§
   {
      
      private static const §2#g§:Number = 1 / 255;
       
      
      private var §>$D§:TextField;
      
      private var §"#v§:uint;
      
      private var §2!C§:uint;
      
      private var §&#o§:uint;
      
      private var §^"c§:ColorMatrixFilter;
      
      public function §@#<§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§>$D§ = param1;
         this.§^"c§ = new ColorMatrixFilter();
         this.§"#v§ = param2;
         this.§&#o§ = param3;
         this.§2!C§ = param4;
         this.§&"C§();
      }
      
      public function set §<#S§(param1:TextField) : void
      {
         this.§>$D§ = param1;
      }
      
      public function get §<#S§() : TextField
      {
         return this.§>$D§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§"#v§ = param1;
         this.§&"C§();
      }
      
      public function get textColor() : uint
      {
         return this.§"#v§;
      }
      
      public function set §<r§(param1:uint) : void
      {
         this.§&#o§ = param1;
         this.§&"C§();
      }
      
      public function get §<r§() : uint
      {
         return this.§&#o§;
      }
      
      public function set §!"i§(param1:uint) : void
      {
         this.§2!C§ = param1;
         this.§&"C§();
      }
      
      public function get §!"i§() : uint
      {
         return this.§2!C§;
      }
      
      private function §&"C§() : void
      {
         this.§>$D§.textColor = 16711680;
         var _loc1_:Array = this.§%!d§(this.§&#o§);
         var _loc2_:Array = this.§%!d§(this.§"#v§);
         var _loc3_:Array = this.§%!d§(this.§2!C§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §2#g§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §2#g§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §2#g§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §2#g§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §2#g§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §2#g§ + 1 - _loc9_;
         this.§^"c§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§>$D§.filters = [this.§^"c§];
      }
      
      private function §%!d§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§^"c§ = null;
         this.§>$D§.filters = [];
         this.§>$D§ = null;
      }
   }
}
