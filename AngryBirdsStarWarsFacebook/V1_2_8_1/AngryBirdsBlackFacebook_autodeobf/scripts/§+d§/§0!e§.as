package §+d§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §0!e§
   {
      
      private static const §<!?§:Number = 1 / 255;
       
      
      private var §9";§:TextField;
      
      private var § G§:uint;
      
      private var §>#'§:uint;
      
      private var §5"O§:uint;
      
      private var §4"B§:ColorMatrixFilter;
      
      public function §0!e§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§9";§ = param1;
         this.§4"B§ = new ColorMatrixFilter();
         this.§ G§ = param2;
         this.§5"O§ = param3;
         this.§>#'§ = param4;
         this.§3!2§();
      }
      
      public function set §0!$§(param1:TextField) : void
      {
         this.§9";§ = param1;
      }
      
      public function get §0!$§() : TextField
      {
         return this.§9";§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§ G§ = param1;
         this.§3!2§();
      }
      
      public function get textColor() : uint
      {
         return this.§ G§;
      }
      
      public function set §8""§(param1:uint) : void
      {
         this.§5"O§ = param1;
         this.§3!2§();
      }
      
      public function get §8""§() : uint
      {
         return this.§5"O§;
      }
      
      public function set §-"Z§(param1:uint) : void
      {
         this.§>#'§ = param1;
         this.§3!2§();
      }
      
      public function get §-"Z§() : uint
      {
         return this.§>#'§;
      }
      
      private function §3!2§() : void
      {
         this.§9";§.textColor = 16711680;
         var _loc1_:Array = this.§6#+§(this.§5"O§);
         var _loc2_:Array = this.§6#+§(this.§ G§);
         var _loc3_:Array = this.§6#+§(this.§>#'§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §<!?§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §<!?§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §<!?§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §<!?§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §<!?§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §<!?§ + 1 - _loc9_;
         this.§4"B§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§9";§.filters = [this.§4"B§];
      }
      
      private function §6#+§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§4"B§ = null;
         this.§9";§.filters = [];
         this.§9";§ = null;
      }
   }
}
