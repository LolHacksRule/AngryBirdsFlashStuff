package §8!=§
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §3e§
   {
      
      private static const §`!!§:Number = 1 / 255;
       
      
      private var set:TextField;
      
      private var §2!@§:uint;
      
      private var §='§:uint;
      
      private var §'p§:uint;
      
      private var §<!E§:ColorMatrixFilter;
      
      public function §3e§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         super();
         this.set = param1;
         this.§<!E§ = new ColorMatrixFilter();
         this.§2!@§ = param2;
         this.§'p§ = param3;
         this.§='§ = param4;
         this.§+!M§();
      }
      
      public function set §0`§(param1:TextField) : void
      {
         this.set = param1;
      }
      
      public function get §0`§() : TextField
      {
         return this.set;
      }
      
      public function set textColor(param1:uint) : void
      {
         this.§2!@§ = param1;
         this.§+!M§();
      }
      
      public function get textColor() : uint
      {
         return this.§2!@§;
      }
      
      public function set §6!,§(param1:uint) : void
      {
         this.§'p§ = param1;
         this.§+!M§();
      }
      
      public function get §6!,§() : uint
      {
         return this.§'p§;
      }
      
      public function set §9l§(param1:uint) : void
      {
         this.§='§ = param1;
         this.§+!M§();
      }
      
      public function get §9l§() : uint
      {
         return this.§='§;
      }
      
      private function §+!M§() : void
      {
         this.set.textColor = 16711680;
         var _loc1_:Array = this.§]!3§(this.§'p§);
         var _loc2_:Array = this.§]!3§(this.§2!@§);
         var _loc3_:Array = this.§]!3§(this.§='§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         var _loc7_:Number = (_loc2_[0] - 255 - _loc1_[0]) * §`!!§ + 1;
         var _loc8_:Number = (_loc2_[1] - 255 - _loc1_[1]) * §`!!§ + 1;
         var _loc9_:Number = (_loc2_[2] - 255 - _loc1_[2]) * §`!!§ + 1;
         var _loc10_:Number = (_loc3_[0] - 255 - _loc1_[0]) * §`!!§ + 1 - _loc7_;
         var _loc11_:Number = (_loc3_[1] - 255 - _loc1_[1]) * §`!!§ + 1 - _loc8_;
         var _loc12_:Number = (_loc3_[2] - 255 - _loc1_[2]) * §`!!§ + 1 - _loc9_;
         this.§<!E§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
         this.set.filters = [this.§<!E§];
      }
      
      private function §]!3§(param1:uint) : Array
      {
         return [param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255];
      }
      
      public function dispose() : void
      {
         this.§<!E§ = null;
         this.set.filters = [];
         this.set = null;
      }
   }
}
