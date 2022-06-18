package §,+§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §&t§
   {
      
      private static const §[J§:Number = 1 / 255;
       
      
      private var §3!X§:TextField;
      
      private var §4!-§:uint;
      
      private var §6Q§:uint;
      
      private var §0!5§:uint;
      
      private var §&'§:ColorMatrixFilter;
      
      public function §&t§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§3!X§ = param1;
         this.§&'§ = new ColorMatrixFilter();
         this.§4!-§ = param2;
         this.§0!5§ = param3;
         this.§6Q§ = param4;
         this.§6§();
      }
      
      public function set §5!c§(param1:TextField) : void
      {
         this.§3!X§ = param1;
      }
      
      public function get §5!c§() : TextField
      {
         return this.§3!X§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§4!-§ = param1;
         this.§6§();
      }
      
      public function get textColor() : uint
      {
         return this.§4!-§;
      }
      
      public function set §6!^§(param1:uint) : void
      {
         this.§0!5§ = param1;
         this.§6§();
      }
      
      public function get §6!^§() : uint
      {
         return this.§0!5§;
      }
      
      public function set §'!N§(param1:uint) : void
      {
         this.§6Q§ = param1;
         this.§6§();
      }
      
      public function get §'!N§() : uint
      {
         return this.§6Q§;
      }
      
      private function §6§() : void
      {
         this.§3!X§.textColor = 16711680;
         var _loc1_:Array = this.§^!F§(this.§0!5§);
         var _loc2_:Array = this.§^!F§(this.§4!-§);
         var _loc3_:Array = this.§^!F§(this.§6Q§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §[J§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §[J§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §[J§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §[J§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §[J§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §[J§ + 1 - _loc9_;
         this.§&'§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§3!X§.filters = [this.§&'§];
      }
      
      private function §^!F§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§&'§ = null;
         this.§3!X§.filters = [];
         this.§3!X§ = null;
      }
   }
}
