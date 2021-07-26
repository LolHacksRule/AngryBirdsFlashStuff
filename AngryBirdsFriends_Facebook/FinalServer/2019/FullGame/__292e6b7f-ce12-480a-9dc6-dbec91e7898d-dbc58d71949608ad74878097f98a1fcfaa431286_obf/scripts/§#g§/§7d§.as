package §#g§
{
   import § !N§.§5"?§;
   import §4§.§`3§;
   import §7#$§.§5#-§;
   import §7#$§.§?# §;
   
   public class §7d§
   {
      
      public static const §@"6§:Number = 50;
      
      public static const §59§:Number = 0;
       
      
      protected var §%"Y§:Number;
      
      protected var §^#7§:Number;
      
      protected var §<#?§:Number;
      
      protected var §8!X§:Number;
      
      public var §3a§:Number;
      
      public var §9!E§:§8#3§;
      
      public function §7d§(param1:§8#3§, param2:§?# §)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§5#-§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§5"?§ = null;
         super();
         this.§9!E§ = param1;
         if(param2.borderTop || param2.borderGround || param2.borderLeft || param2.borderRight)
         {
            if(param2.borderTop)
            {
               this.§<#?§ = param2.borderTop;
            }
            else
            {
               this.§<#?§ = 0;
            }
            if(param2.borderGround)
            {
               this.§8!X§ = param2.borderGround;
            }
            else
            {
               this.§8!X§ = 0;
            }
            if(param2.borderLeft)
            {
               this.§%"Y§ = param2.borderLeft;
            }
            else
            {
               this.§%"Y§ = 0;
            }
            if(param2.borderRight)
            {
               this.§^#7§ = param2.borderRight;
            }
            else
            {
               this.§^#7§ = 0;
            }
         }
         else if(param2.name == "BACKGROUND_BLUE_GRASS")
         {
            this.§%"Y§ = -150;
            this.§^#7§ = 200;
            this.§<#?§ = -160;
            this.§8!X§ = 50;
         }
         else
         {
            this.§%"Y§ = -200;
            this.§^#7§ = 200;
            _loc3_ = 0;
            _loc3_ = 0;
            while(_loc3_ < param2.§##f§)
            {
               _loc5_ = param2.§,#v§(_loc3_);
               _loc6_ = 0;
               if(_loc5_.left.toString() != "NaN")
               {
                  _loc6_ = (_loc5_.right - _loc5_.left) * 4;
               }
               else
               {
                  _loc6_ = §8#3§.§"#I§ * 4 * §8#3§.§2K§;
               }
               _loc7_ = _loc5_.x - _loc6_ / 2;
               _loc8_ = _loc5_.x + _loc6_ / 2;
               if(_loc7_ < this.§%"Y§)
               {
                  this.§%"Y§ = _loc7_;
               }
               if(_loc8_ > this.§^#7§)
               {
                  this.§^#7§ = _loc8_;
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < param2.objectCount)
            {
               if((_loc9_ = param2.getObject(_loc3_)).x < this.§%"Y§)
               {
                  this.§%"Y§ = _loc9_.x;
               }
               if(_loc9_.x > this.§^#7§)
               {
                  this.§^#7§ = _loc9_.x;
               }
               _loc3_++;
            }
            _loc4_ = 0.1 * §8#3§.§"#I§ * §8#3§.§2K§;
            this.§%"Y§ -= _loc4_;
            this.§^#7§ += _loc4_;
            this.§<#?§ = param2.slingshotY - 160;
            this.§8!X§ = param2.slingshotY + 160;
         }
         this.§3a§ = §8#3§.§"#I§ * §8#3§.§2K§ / (this.§^#7§ - this.§%"Y§);
         this.§3a§ = Math.max(this.§3a§,§`3§.§`#"§);
         this.§9!E§.§3`§(this.§<#?§,this.§8!X§,this.§%"Y§,this.§^#7§);
      }
      
      public function get §>![§() : Number
      {
         return this.§%"Y§;
      }
      
      public function get §`#'§() : Number
      {
         return this.§^#7§;
      }
      
      public function get §>!v§() : Number
      {
         return this.§<#?§;
      }
      
      public function get §&#8§() : Number
      {
         return this.§8!X§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §0$8§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§<#?§ || param2 > this.§8!X§ || param1 < this.§%"Y§ || param1 > this.§^#7§)
         {
            return true;
         }
         return false;
      }
      
      public function §3`§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§<#?§ = param1;
         this.§8!X§ = param2;
         this.§%"Y§ = param3;
         this.§^#7§ = param4;
      }
   }
}
