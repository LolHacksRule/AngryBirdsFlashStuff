package §'@§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §@=§
   {
      
      private static const §0"+§:Number = 1 / 255;
       
      
      private var §&!w§:TextField;
      
      private var §^!f§:uint;
      
      private var §2T§:uint;
      
      private var §@i§:uint;
      
      private var §1!R§:ColorMatrixFilter;
      
      public function §@=§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§&!w§ = param1;
         this.§1!R§ = new ColorMatrixFilter();
         this.§^!f§ = param2;
         this.§@i§ = param3;
         this.§2T§ = param4;
         this.§=!,§();
      }
      
      public function set §%I§(param1:TextField) : void
      {
         this.§&!w§ = param1;
      }
      
      public function get §%I§() : TextField
      {
         return this.§&!w§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§^!f§ = param1;
         this.§=!,§();
      }
      
      public function get textColor() : uint
      {
         return this.§^!f§;
      }
      
      public function set § null§(param1:uint) : void
      {
         this.§@i§ = param1;
         this.§=!,§();
      }
      
      public function get § null§() : uint
      {
         return this.§@i§;
      }
      
      public function set §%j§(param1:uint) : void
      {
         this.§2T§ = param1;
         this.§=!,§();
      }
      
      public function get §%j§() : uint
      {
         return this.§2T§;
      }
      
      private function §=!,§() : void
      {
         this.§&!w§.textColor = 16711680;
         var _loc1_:Array = this.§`!n§(this.§@i§);
         var _loc2_:Array = this.§`!n§(this.§^!f§);
         var _loc3_:Array = this.§`!n§(this.§2T§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §0"+§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §0"+§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §0"+§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §0"+§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §0"+§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §0"+§ + 1 - _loc9_;
         this.§1!R§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§&!w§.filters = [this.§1!R§];
      }
      
      private function §`!n§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§1!R§ = null;
         this.§&!w§.filters = [];
         this.§&!w§ = null;
      }
   }
}
