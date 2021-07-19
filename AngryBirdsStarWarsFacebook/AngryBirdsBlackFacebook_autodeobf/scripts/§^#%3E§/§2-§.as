package §^#>§
{
   import §-!_§.§,#Q§;
   import §<"B§.§94§;
   import §?m§.§0!§;
   import §?m§.§8!B§;
   
   public class §2-§
   {
      
      public static const §?! §:Number = 50;
      
      public static const §2#a§:Number = 0;
       
      
      protected var §%#<§:Number;
      
      protected var §+"s§:Number;
      
      protected var §?#U§:Number;
      
      protected var §@!;§:Number;
      
      public var §"y§:Number;
      
      public var §2#G§:§#_§;
      
      public function §2-§(param1:§#_§, param2:§8!B§)
      {
         var _loc5_:§0!§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§94§ = null;
         super();
         this.§2#G§ = param1;
         this.§%#<§ = int.MAX_VALUE;
         this.§+"s§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§<#I§)
         {
            _loc5_ = param2.§^#'§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §#_§.§]#Q§ * 4 * §#_§.§8]§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§%#<§)
            {
               this.§%#<§ = _loc7_;
            }
            if(_loc8_ > this.§+"s§)
            {
               this.§+"s§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§%#<§)
            {
               this.§%#<§ = _loc9_.x;
            }
            if(_loc9_.x > this.§+"s§)
            {
               this.§+"s§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §#_§.§]#Q§ * §#_§.§8]§;
         this.§%#<§ -= _loc4_;
         this.§+"s§ += _loc4_;
         this.§"y§ = §#_§.§]#Q§ * §#_§.§8]§ / (this.§+"s§ - this.§%#<§);
         this.§"y§ = Math.max(this.§"y§,§,#Q§.§<! §);
         this.§?#U§ = param2.slingshotY - 160;
         this.§@!;§ = param2.slingshotY + 160;
      }
      
      public function get §!M§() : Number
      {
         return this.§%#<§;
      }
      
      public function get §="q§() : Number
      {
         return this.§+"s§;
      }
      
      public function get §9!p§() : Number
      {
         return this.§?#U§;
      }
      
      public function get §""p§() : Number
      {
         return this.§@!;§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §'"b§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§?#U§ || param2 > this.§@!;§ || param1 < this.§%#<§ || param1 > this.§+"s§)
         {
            return true;
         }
         return false;
      }
   }
}
