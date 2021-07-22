package §>2§
{
   import §,"v§.§7!J§;
   import §,"v§.§<x§;
   import §-#X§.§,!B§;
   import §1#u§.§;"Q§;
   
   public class §-#v§
   {
      
      public static const §6!M§:Number = 50;
      
      public static const §"!a§:Number = 0;
       
      
      protected var §;!I§:Number;
      
      protected var §,<§:Number;
      
      protected var §!">§:Number;
      
      protected var §@!"§:Number;
      
      public var §%"w§:Number;
      
      public var §5#0§:§!6§;
      
      public function §-#v§(param1:§!6§, param2:§7!J§)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§<x§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§,!B§ = null;
         super();
         this.§5#0§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§!">§ = param2.borderTop;
            }
            else
            {
               this.§!">§ = 0;
            }
            if(param2.borderGround)
            {
               this.§@!"§ = param2.borderGround;
            }
            else
            {
               this.§@!"§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§;!I§ = param2.borderLeft;
            }
            else
            {
               this.§;!I§ = 0;
            }
            if(param2.borderRight)
            {
               this.§,<§ = param2.borderRight;
            }
            else
            {
               this.§,<§ = 0;
            }
         }
         else if(param2.name == "BACKGROUND_BLUE_GRASS")
         {
            this.§;!I§ = -150;
            this.§,<§ = 200;
            this.§!">§ = -160;
            this.§@!"§ = 50;
         }
         else
         {
            this.§;!I§ = -200;
            this.§,<§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§"$D§)
            {
               _loc5_ = param2.§1d§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §!6§.§+#P§ * 4 * §!6§.§[#v§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§;!I§)
               {
                  this.§;!I§ = _loc7_;
               }
               if(_loc8_ > this.§,<§)
               {
                  this.§,<§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§;!I§)
               {
                  this.§;!I§ = _loc9_.x;
               }
               if(_loc9_.x > this.§,<§)
               {
                  this.§,<§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §!6§.§+#P§ * §!6§.§[#v§;
            this.§;!I§ -= _loc4_;
            this.§,<§ += _loc4_;
            this.§!">§ = param2.slingshotY - 160;
            this.§@!"§ = param2.slingshotY + 160;
         }
         this.§%"w§ = §!6§.§+#P§ * §!6§.§[#v§ / (this.§,<§ - this.§;!I§);
         this.§%"w§ = Math.max(this.§%"w§,§;"Q§.§[^§);
         this.§5#0§.§]"9§(this.§!">§,this.§@!"§,this.§;!I§,this.§,<§);
      }
      
      public function get §"!]§() : Number
      {
         return this.§;!I§;
      }
      
      public function get §8#4§() : Number
      {
         return this.§,<§;
      }
      
      public function get §"l§() : Number
      {
         return this.§!">§;
      }
      
      public function get §4#t§() : Number
      {
         return this.§@!"§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §<i§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§!">§ || param2 > this.§@!"§ || param1 < this.§;!I§ || param1 > this.§,<§)
         {
            return true;
         }
         return false;
      }
      
      public function §]"9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§!">§ = param1;
         this.§@!"§ = param2;
         this.§;!I§ = param3;
         this.§,<§ = param4;
      }
   }
}
