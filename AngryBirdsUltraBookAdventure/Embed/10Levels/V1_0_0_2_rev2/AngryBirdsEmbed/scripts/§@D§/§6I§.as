package §@D§
{
   import §+!"§.§5!<§;
   import com.rovio.assets.§'!H§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §6I§
   {
      
      private static var §@9§:Boolean = true;
      
      private static const native:int = 128;
      
      private static var §>%§:int;
      
      private static var §9!=§:Dictionary;
      
      private static var §]Y§:Dictionary;
      
      public static const §&!-§:String = "Default_Channel";
      
      public static const §5y§:Boolean = false;
      
      private static var §1p§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@9§ = true;
            if(_loc2_)
            {
               native = 128;
               if(_loc2_ || §6I§)
               {
                  §&!-§ = "Default_Channel";
                  if(_loc2_ || _loc1_)
                  {
                     addr64:
                     §5y§ = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr74:
                        §1p§ = true;
                     }
                  }
                  return;
               }
               §§goto(addr64);
            }
            §§goto(addr74);
         }
         §§goto(addr64);
      }
      
      public function §6I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §1p§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!=§ = new Dictionary();
            if(!(_loc2_ && _loc1_))
            {
               §]Y§ = new Dictionary();
               if(_loc1_ || §6I§)
               {
                  addr60:
                  §>%§ = 0;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr70);
               }
               §"!'§(§&!-§,4,1);
               addr70:
               return;
            }
         }
         §§goto(addr60);
      }
      
      public static function §"!'§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(§3t§(param1) != null)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr35);
               }
            }
            else
            {
               §§push(§>%§);
               if(_loc5_)
               {
                  §§push(native);
                  if(_loc5_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc5_ || param3)
                        {
                           if(!§5y§)
                           {
                           }
                           §§goto(addr100);
                        }
                        §§push(§5!<§);
                        §§push("WARNING: SoundEngine:addNewChannelControl() ");
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop() + param1);
                           if(!(_loc6_ && §6I§))
                           {
                              addr70:
                              §§push(" failed because we already have more than ");
                              if(_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    addr76:
                                    §§push(§§pop() + native);
                                    if(_loc5_ || param1)
                                    {
                                       addr96:
                                       §§push(§§pop() + " reserved");
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 if(!_loc6_)
                                 {
                                    §§goto(addr100);
                                 }
                                 else
                                 {
                                    addr130:
                                    var _loc4_:§;A§ = new §;A§(param1,param2,param3);
                                    if(!(_loc6_ && param2))
                                    {
                                       if(!§@9§)
                                       {
                                          if(_loc5_)
                                          {
                                             _loc4_.§99§();
                                             if(!(_loc6_ && §6I§))
                                             {
                                                addr167:
                                                §9!=§[param1.toLowerCase()] = _loc4_;
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr179:
                                                   §>%§ += param2;
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        §§push(§>%§);
                        if(_loc5_)
                        {
                           §§push(param2);
                           if(!(_loc6_ && param1))
                           {
                              addr113:
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && §6I§))
                              {
                                 if(§§pop() >= native)
                                 {
                                    addr129:
                                    §§push(native);
                                    if(!_loc6_)
                                    {
                                       addr127:
                                       §§push(§§pop() - §>%§);
                                    }
                                    param2 = §§pop();
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr129);
                              §§push(int(§§pop()));
                           }
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr113);
               }
               §§goto(addr129);
            }
            addr100:
            return;
         }
         addr35:
      }
      
      public static function §3t§(param1:String) : §;A§
      {
         return §9!=§[param1.toLowerCase()];
      }
      
      public static function §3Y§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;A§ = null;
         if(_loc5_ || param1)
         {
            if(param1 == §@9§)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
            else
            {
               §@9§ = param1;
            }
         }
         for each(_loc2_ in §9!=§)
         {
            if(!_loc6_)
            {
               if(!§@9§)
               {
                  _loc2_.§99§();
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc2_.§^$§();
            if(!_loc5_)
            {
            }
         }
      }
      
      public static function §%,§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;A§ = null;
         for each(_loc1_ in §9!=§)
         {
            if(_loc4_ || §6I§)
            {
               _loc1_.§%,§();
            }
         }
      }
      
      public static function §`9§() : Boolean
      {
         return §@9§;
      }
      
      public static function § ;§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §`!%§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         if(_loc10_)
         {
            if(!§1p§)
            {
               if(_loc10_ || param3)
               {
                  return null;
               }
            }
         }
         var _loc6_:§;A§;
         if(!(_loc6_ = §3t§(param2)))
         {
            §§push(§5y§);
            if(_loc10_ || param1)
            {
               if(§§pop())
               {
                  §§push(§5!<§);
                  §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                  if(!_loc9_)
                  {
                     §§push(param1);
                     if(_loc10_ || param3)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc10_)
                        {
                           addr75:
                           §§push(§§pop() + " because this channel does not exist ");
                           if(!(_loc9_ && param2))
                           {
                              §§push(param2);
                           }
                           §§pop().log(§§pop());
                           §§push(null);
                           if(!_loc9_)
                           {
                              return §§pop();
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr75);
                     }
                     §§push(§§pop() + §§pop());
                  }
               }
               §§goto(addr75);
            }
            else
            {
               §§goto(addr89);
            }
         }
         else
         {
            §§push(_loc6_.§>Q§());
            if(!(_loc9_ && param2))
            {
               addr89:
               if(!§§pop())
               {
                  if(!(_loc9_ && param1))
                  {
                     addr108:
                     if(§5y§)
                     {
                        §§push(§5!<§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                        if(_loc10_ || §6I§)
                        {
                           §§push(param1);
                           if(_loc10_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc9_ && param1))
                              {
                                 addr134:
                                 §§push(§§pop() + " this channel is full ");
                                 if(_loc10_)
                                 {
                                    addr139:
                                    §§push(§§pop() + param2);
                                 }
                              }
                              §§pop().log(§§pop());
                              if(!(_loc9_ && param3))
                              {
                                 addr148:
                                 addr149:
                                 return §§pop();
                                 §§push(null);
                              }
                              else
                              {
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr148);
               }
               addr150:
               var _loc7_:Sound;
               if((_loc7_ = §]Y§[param1]) == null)
               {
                  if(!(_loc8_ = §'!H§.§&!G§(param1,false) as Class))
                  {
                     if(_loc10_ || param3)
                     {
                        §§push(§5!<§);
                        §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                        if(_loc10_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                        if(!_loc9_)
                        {
                           return null;
                        }
                     }
                  }
                  _loc7_ = new _loc8_();
                  if(_loc10_ || §6I§)
                  {
                     §]Y§[param1] = _loc7_;
                  }
               }
               return _loc6_.§ ;§(_loc7_,param3,param4,param5);
            }
         }
         §§goto(addr108);
      }
      
      public static function §9w§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;A§ = §3t§(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc3_ && §6I§))
               {
                  _loc2_.§%,§();
               }
            }
         }
      }
      
      public static function §`$§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc4_)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param1))
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_)
                     {
                        if(§5y§)
                        {
                           §§push(§5!<§);
                           §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                           if(!(_loc4_ || param1))
                           {
                              §§goto(addr138);
                           }
                        }
                        return;
                     }
                     addr114:
                     §§push(param1);
                     if(_loc4_ || §6I§)
                     {
                        §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                     }
                     param1 = §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr138);
                     }
                  }
                  else
                  {
                     addr80:
                     §§push(Math.random() * _loc3_);
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_)
                        {
                           _loc3_ = §§pop();
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr96);
                        }
                        addr94:
                        §§push(§§pop() + 1);
                     }
                     addr96:
                     _loc3_ = §§pop();
                     if(!(_loc5_ && §6I§))
                     {
                        §§goto(addr114);
                     }
                     addr138:
                     §6I§.§ ;§(param1,param2);
                     return;
                     §§push(int(§§pop()));
                  }
                  §§goto(addr138);
               }
               §§goto(addr94);
            }
            §§goto(addr96);
         }
         §§goto(addr80);
      }
   }
}
