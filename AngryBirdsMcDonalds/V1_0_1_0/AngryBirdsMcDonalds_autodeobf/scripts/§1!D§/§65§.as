package §1!D§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §65§
   {
      
      private static const §0Y§:Number = 1 / 255;
       
      
      private var §'!Z§:TextField;
      
      private var §#!;§:uint;
      
      private var §;!W§:uint;
      
      private var static:uint;
      
      private var §9V§:ColorMatrixFilter;
      
      public function §65§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§'!Z§ = param1;
         this.§9V§ = new ColorMatrixFilter();
         this.§#!;§ = param2;
         this.static = param3;
         this.§;!W§ = param4;
         this.§@t§();
      }
      
      public function set textField(param1:TextField) : void
      {
         this.§'!Z§ = param1;
      }
      
      public function get textField() : TextField
      {
         return this.§'!Z§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§#!;§ = param1;
         this.§@t§();
      }
      
      public function get textColor() : uint
      {
         return this.§#!;§;
      }
      
      public function set §;!D§(param1:uint) : void
      {
         this.static = param1;
         this.§@t§();
      }
      
      public function get §;!D§() : uint
      {
         return this.static;
      }
      
      public function set §!!a§(param1:uint) : void
      {
         this.§;!W§ = param1;
         this.§@t§();
      }
      
      public function get §!!a§() : uint
      {
         return this.§;!W§;
      }
      
      private function §@t§() : void
      {
         this.§'!Z§.textColor = 16711680;
         var _loc1_:Array = this.§ c§(this.static);
         var _loc2_:Array = this.§ c§(this.§#!;§);
         var _loc3_:Array = this.§ c§(this.§;!W§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §0Y§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §0Y§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §0Y§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §0Y§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §0Y§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §0Y§ + 1 - _loc9_;
         this.§9V§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§'!Z§.filters = [this.§9V§];
      }
      
      private function § c§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§9V§ = null;
         this.§'!Z§.filters = [];
         this.§'!Z§ = null;
      }
   }
}
