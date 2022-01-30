package §,E§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §7r§
   {
      
      private static const § ?§:Number = 1 / 255;
       
      
      private var §3v§:TextField;
      
      private var §2!y§:uint;
      
      private var §]!-§:uint;
      
      private var §false§:uint;
      
      private var §!Q§:ColorMatrixFilter;
      
      public function §7r§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.§3v§ = param1;
         this.§!Q§ = new ColorMatrixFilter();
         this.§2!y§ = param2;
         this.§false§ = param3;
         this.§]!-§ = param4;
         this.§>!&§();
      }
      
      public function set §>o§(param1:TextField) : void
      {
         this.§3v§ = param1;
      }
      
      public function get §>o§() : TextField
      {
         return this.§3v§;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§2!y§ = param1;
         this.§>!&§();
      }
      
      public function get textColor() : uint
      {
         return this.§2!y§;
      }
      
      public function set §="$§(param1:uint) : void
      {
         this.§false§ = param1;
         this.§>!&§();
      }
      
      public function get §="$§() : uint
      {
         return this.§false§;
      }
      
      public function set §;H§(param1:uint) : void
      {
         this.§]!-§ = param1;
         this.§>!&§();
      }
      
      public function get §;H§() : uint
      {
         return this.§]!-§;
      }
      
      private function §>!&§() : void
      {
         this.§3v§.textColor = 16711680;
         var _loc1_:Array = this.§[l§(this.§false§);
         var _loc2_:Array = this.§[l§(this.§2!y§);
         var _loc3_:Array = this.§[l§(this.§]!-§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * § ?§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * § ?§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * § ?§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * § ?§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * § ?§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * § ?§ + 1 - _loc9_;
         this.§!Q§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.§3v§.filters = [this.§!Q§];
      }
      
      private function §[l§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§!Q§ = null;
         this.§3v§.filters = [];
         this.§3v§ = null;
      }
   }
}
