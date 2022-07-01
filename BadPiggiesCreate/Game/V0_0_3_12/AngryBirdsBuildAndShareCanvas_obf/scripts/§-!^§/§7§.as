package §-!^§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §7§
   {
      
      private static const §^!z§:Number = 1 / 255;
       
      
      private var §<"§:TextField;
      
      private var §7e§:uint;
      
      private var §<u§:uint;
      
      private var §#J§:uint;
      
      private var §1!E§:ColorMatrixFilter;
      
      public function §7§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§<"§ = param1;
         this.§1!E§ = new ColorMatrixFilter();
         this.§7e§ = param2;
         this.§#J§ = param3;
         this.§<u§ = param4;
         this.§9!!§();
      }
      
      public function set §0!N§(param1:TextField) : void
      {
         this.§<"§ = param1;
      }
      
      public function get §0!N§() : TextField
      {
         return this.§<"§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§7e§ = param1;
         this.§9!!§();
      }
      
      public function get textColor() : uint
      {
         return this.§7e§;
      }
      
      public function set §[!"§(param1:uint) : void
      {
         this.§#J§ = param1;
         this.§9!!§();
      }
      
      public function get §[!"§() : uint
      {
         return this.§#J§;
      }
      
      public function set §8!u§(param1:uint) : void
      {
         this.§<u§ = param1;
         this.§9!!§();
      }
      
      public function get §8!u§() : uint
      {
         return this.§<u§;
      }
      
      private function §9!!§() : void
      {
         this.§<"§.textColor = 16711680;
         var _loc1_:Array = this.§ !w§(this.§#J§);
         var _loc2_:Array = this.§ !w§(this.§7e§);
         var _loc3_:Array = this.§ !w§(this.§<u§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §^!z§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §^!z§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §^!z§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §^!z§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §^!z§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §^!z§ + 1 - _loc9_;
         this.§1!E§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§<"§.filters = [this.§1!E§];
      }
      
      private function § !w§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§1!E§ = null;
         this.§<"§.filters = [];
         this.§<"§ = null;
      }
   }
}
