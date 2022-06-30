package §4!9§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §;!9§
   {
      
      private static const §;!<§:Number = 1 / 255;
       
      
      private var §2q§:TextField;
      
      private var §1!U§:uint;
      
      private var §!k§:uint;
      
      private var §`!D§:uint;
      
      private var §5!K§:ColorMatrixFilter;
      
      public function §;!9§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§2q§ = param1;
         this.§5!K§ = new ColorMatrixFilter();
         this.§1!U§ = param2;
         this.§`!D§ = param3;
         this.§!k§ = param4;
         this.§0!&§();
      }
      
      private static function §>J§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function set §1! §(param1:TextField) : void
      {
         this.§2q§ = param1;
      }
      
      public function get §1! §() : TextField
      {
         return this.§2q§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§1!U§ = param1;
         this.§0!&§();
      }
      
      public function get textColor() : uint
      {
         return this.§1!U§;
      }
      
      public function set §=!M§(param1:uint) : void
      {
         this.§`!D§ = param1;
         this.§0!&§();
      }
      
      public function get §=!M§() : uint
      {
         return this.§`!D§;
      }
      
      public function set §9$§(param1:uint) : void
      {
         this.§!k§ = param1;
         this.§0!&§();
      }
      
      public function get §9$§() : uint
      {
         return this.§!k§;
      }
      
      private function §0!&§() : void
      {
         this.§2q§.textColor = 16711680;
         var _loc1_:Array = §>J§(this.§`!D§);
         var _loc2_:Array = §>J§(this.§1!U§);
         var _loc3_:Array = §>J§(this.§!k§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §;!<§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §;!<§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §;!<§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §;!<§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §;!<§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §;!<§ + 1 - _loc9_;
         this.§5!K§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§2q§.filters = [this.§5!K§];
      }
   }
}
