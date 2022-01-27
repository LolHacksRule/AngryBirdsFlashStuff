package §?!<§
{
   import §;!0§.§!!X§;
   import §;!0§.§2!4§;
   import §[!v§.§!e§;
   import §[r§.§ use§;
   
   public class §]!Q§
   {
      
      public static const §6!b§:Number = 50;
      
      public static const §]I§:Number = 0;
       
      
      protected var §5!?§:Number;
      
      protected var §2!I§:Number;
      
      protected var §?!k§:Number;
      
      protected var §63§:Number;
      
      public var §,A§:Number;
      
      public var §1!3§:§'!1§;
      
      public function §]!Q§(param1:§'!1§, param2:§!!X§)
      {
         var _loc5_:§2!4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§!e§ = null;
         super();
         this.§1!3§ = param1;
         this.§5!?§ = int.MAX_VALUE;
         this.§2!I§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§ +§)
         {
            _loc5_ = param2.§4"!§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §'!1§.§,o§ * 4 * §'!1§.§<!@§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§5!?§)
            {
               this.§5!?§ = _loc7_;
            }
            if(_loc8_ > this.§2!I§)
            {
               this.§2!I§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§5!?§)
            {
               this.§5!?§ = _loc9_.x;
            }
            if(_loc9_.x > this.§2!I§)
            {
               this.§2!I§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §'!1§.§,o§ * §'!1§.§<!@§;
         this.§5!?§ -= _loc4_;
         this.§2!I§ += _loc4_;
         this.§,A§ = §'!1§.§,o§ * §'!1§.§<!@§ / (this.§2!I§ - this.§5!?§);
         this.§,A§ = Math.max(this.§,A§,§ use§.§#!-§);
         this.§?!k§ = param2.slingshotY - 160;
         this.§63§ = param2.slingshotY + 160;
      }
      
      public function get §`"#§() : Number
      {
         return this.§5!?§;
      }
      
      public function get §+!U§() : Number
      {
         return this.§2!I§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §^"%§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§?!k§ || param2 > this.§63§ || param1 < this.§5!?§ || param1 > this.§2!I§)
         {
            return true;
         }
         return false;
      }
   }
}
