package §&!_§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §8$A§
   {
      
      private static const §0"z§:Number = 1 / 255;
       
      
      private var §2"<§:TextField;
      
      private var §?"L§:uint;
      
      private var §,"e§:uint;
      
      private var §#!<§:uint;
      
      private var §]#G§:ColorMatrixFilter;
      
      public function §8$A§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§2"<§ = param1;
         this.§]#G§ = new ColorMatrixFilter();
         this.§?"L§ = param2;
         this.§#!<§ = param3;
         this.§,"e§ = param4;
         this.§ $&§();
      }
      
      public function set §5!d§(param1:TextField) : void
      {
         this.§2"<§ = param1;
      }
      
      public function get §5!d§() : TextField
      {
         return this.§2"<§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§?"L§ = param1;
         this.§ $&§();
      }
      
      public function get textColor() : uint
      {
         return this.§?"L§;
      }
      
      public function set §6#P§(param1:uint) : void
      {
         this.§#!<§ = param1;
         this.§ $&§();
      }
      
      public function get §6#P§() : uint
      {
         return this.§#!<§;
      }
      
      public function set §6u§(param1:uint) : void
      {
         this.§,"e§ = param1;
         this.§ $&§();
      }
      
      public function get §6u§() : uint
      {
         return this.§,"e§;
      }
      
      private function § $&§() : void
      {
         this.§2"<§.textColor = 16711680;
         var _loc1_:Array = this.§1"<§(this.§#!<§);
         var _loc2_:Array = this.§1"<§(this.§?"L§);
         var _loc3_:Array = this.§1"<§(this.§,"e§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §0"z§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §0"z§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §0"z§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §0"z§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §0"z§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §0"z§ + 1 - _loc9_;
         this.§]#G§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§2"<§.filters = [this.§]#G§];
      }
      
      private function §1"<§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§]#G§ = null;
         this.§2"<§.filters = [];
         this.§2"<§ = null;
      }
   }
}
