package §#P§
{
   import §,!@§.*;
   
   public class §@7§
   {
      
      public static const §7!D§:Function;
      
      public static const §5!7§:Function;
      
      public static const §2H§:Function;
      
      public static const §[^§:Function;
      
      public static const §1! §:Function;
      
      public static const § c§:Function;
      
      public static const § Q§:Function;
      
      public static const §=!1§:Function;
      
      public static const §=;§:Function = §%2§.easeIn;
      
      private static var §%I§:§@7§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7!D§ = §!!2§.easeIn;
            if(!_loc1_)
            {
               §5!7§ = §6>§.easeIn;
               §2H§ = §6>§.easeOut;
               §[^§ = §?@§.easeOut;
               §§goto(addr25);
            }
            §§goto(addr76);
         }
         addr25:
         if(!(_loc1_ && §@7§))
         {
            §1! § = §?@§.easeIn;
            § c§ = §&0§.easeOut;
            § Q§ = §&0§.easeIn;
            addr76:
            §=!1§ = §%2§.easeOut;
         }
      }
      
      protected var §0!K§:Vector.<§]!N§>;
      
      protected var §in §:Boolean;
      
      protected var §=!?§:Boolean = true;
      
      public function §@7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§0!K§ = new Vector.<§]!N§>();
            if(_loc2_)
            {
               super();
            }
         }
      }
      
      public static function get §@6§() : §@7§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§%I§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §%I§ = new §@7§();
                     addr44:
                     §§push(§%I§);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public function set §;y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=!?§ = param1;
         }
      }
      
      public function §+!E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!N§ = null;
         var _loc1_:* = int(this.§0!K§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!K§[_loc1_];
            if(_loc4_)
            {
               if(_loc2_.§'%§)
               {
                  if(!(_loc3_ && this))
                  {
                     this.§0!K§.splice(_loc1_,1);
                     if(_loc4_ || _loc2_)
                     {
                        _loc2_.dispose();
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
            }
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §3!%§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §]!N§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            param5 = param5 || §!!2§.easeIn;
            var _loc6_:§1n§;
            (_loc6_ = new §1n§(param1,param2,param3,param4,param5)).§;y§ = this.§=!?§;
            if(!_loc7_)
            {
               this.§0!K§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr34);
      }
      
      public function §'!@§(... rest) : §]!N§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§1!?§ = null;
         var _loc3_:§+!!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc7_)
            {
               _loc4_ = this.§0!K§.indexOf(_loc2_);
               if(!_loc7_)
               {
                  this.§0!K§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §+!!§(rest,true);
         if(!_loc7_)
         {
            _loc3_.§;y§ = this.§=!?§;
            if(!_loc7_)
            {
               this.§0!K§.push(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function §#!0§(... rest) : §]!N§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§1!?§ = null;
         var _loc3_:§+!!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc8_ && rest))
            {
               _loc4_ = this.§0!K§.indexOf(_loc2_);
               if(!(_loc8_ && rest))
               {
                  this.§0!K§.splice(_loc4_,1);
               }
            }
         }
         _loc3_ = new §+!!§(rest,false);
         if(!_loc8_)
         {
            _loc3_.§;y§ = this.§=!?§;
            if(_loc7_ || rest)
            {
               addr104:
               this.§0!K§.push(_loc3_);
            }
            return _loc3_;
         }
         §§goto(addr104);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§in § = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§in § = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:§]!N§ = null;
         if(_loc5_ || param1)
         {
            if(this.§in §)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = 0;
         while(_loc2_ < this.§0!K§.length)
         {
            _loc3_ = false;
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
            (_loc4_ = this.§0!K§[_loc2_]).update(param1);
            if(!(_loc6_ && param1))
            {
               if(_loc4_.isCompleted)
               {
                  if(!(_loc6_ && param1))
                  {
                     addr83:
                     this.§0!K§.splice(_loc2_,1);
                     if(_loc5_ || param1)
                     {
                        _loc4_.dispose();
                        if(!_loc5_)
                        {
                        }
                        addr121:
                        _loc2_++;
                        continue;
                     }
                  }
                  §§push(_loc2_);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr83);
         }
      }
   }
}
