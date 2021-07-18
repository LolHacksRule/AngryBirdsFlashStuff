package §=! §
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §'!4§
   {
      
      private static const §`y§:Number = 1 / 255;
       
      
      private var §^!1§:TextField;
      
      private var §90§:uint;
      
      private var §@g§:uint;
      
      private var §;K§:uint;
      
      private var §&!&§:ColorMatrixFilter;
      
      public function §'!4§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§^!1§ = param1;
         this.§&!&§ = new ColorMatrixFilter();
         this.§90§ = param2;
         this.§;K§ = param3;
         this.§@g§ = param4;
         this.§'p§();
      }
      
      public function set §!!E§(param1:TextField) : void
      {
         this.§^!1§ = param1;
      }
      
      public function get §!!E§() : TextField
      {
         return this.§^!1§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§90§ = param1;
         this.§'p§();
      }
      
      public function get textColor() : uint
      {
         return this.§90§;
      }
      
      public function set §&!L§(param1:uint) : void
      {
         this.§;K§ = param1;
         this.§'p§();
      }
      
      public function get §&!L§() : uint
      {
         return this.§;K§;
      }
      
      public function set §2!J§(param1:uint) : void
      {
         this.§@g§ = param1;
         this.§'p§();
      }
      
      public function get §2!J§() : uint
      {
         return this.§@g§;
      }
      
      private function §'p§() : void
      {
         this.§^!1§.textColor = 16711680;
         var _loc1_:Array = this.§,!b§(this.§;K§);
         var _loc2_:Array = this.§,!b§(this.§90§);
         var _loc3_:Array = this.§,!b§(this.§@g§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §`y§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §`y§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §`y§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §`y§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §`y§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §`y§ + 1 - _loc9_;
         this.§&!&§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§^!1§.filters = [this.§&!&§];
      }
      
      private function §,!b§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§&!&§ = null;
         this.§^!1§.filters = [];
         this.§^!1§ = null;
      }
   }
}
