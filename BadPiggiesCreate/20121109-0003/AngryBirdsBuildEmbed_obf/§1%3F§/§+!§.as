package §1?§
{
   import § !r§.§`![§;
   import com.rovio.assets.§1F§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §+!§
   {
      
      private static var §-!3§:Boolean = true;
      
      private static const §"!+§:int = 128;
      
      private static var §4R§:int;
      
      private static var §%!a§:Dictionary;
      
      private static var §#!Z§:Dictionary;
      
      public static const §-!8§:String = "Default_Channel";
      
      public static const §5!l§:Boolean = false;
      
      private static var §@?§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!3§ = true;
            if(_loc1_)
            {
               §"!+§ = 128;
               if(_loc1_)
               {
                  addr38:
                  §-!8§ = "Default_Channel";
                  if(!_loc2_)
                  {
                     §5!l§ = false;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr53:
                        §@?§ = true;
                     }
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr38);
      }
      
      public function §+!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
            §@?§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!a§ = new Dictionary();
            if(!(_loc1_ && _loc1_))
            {
               §#!Z§ = new Dictionary();
               if(!(_loc1_ && _loc2_))
               {
                  §4R§ = 0;
                  if(_loc2_ || §+!§)
                  {
                     addr71:
                     §#n§(§-!8§,4,1);
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      public static function §#n§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(§%!6§(param1) != null)
            {
               return;
            }
            §§push(§4R§);
            if(_loc5_ || §+!§)
            {
               §§push(§"!+§);
               if(_loc5_ || §+!§)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc5_ || param3)
                     {
                        if(§5!l§)
                        {
                           if(_loc5_)
                           {
                              §§push(§`![§);
                              §§push("WARNING: SoundEngine:addNewChannelControl() ");
                              if(_loc5_ || param3)
                              {
                                 §§push(§§pop() + param1);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(" failed because we already have more than ");
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_)
                                       {
                                          addr104:
                                          §§push(§§pop() + §"!+§);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§push(" reserved");
                                          }
                                          §§pop().log(§§pop());
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr112);
                                          }
                                          else
                                          {
                                             addr139:
                                             §§push(§"!+§);
                                             if(_loc5_ || param2)
                                             {
                                                addr150:
                                                param2 = §§pop() - §4R§;
                                                var _loc4_:§8F§ = new §8F§(param1,param2,param3);
                                                if(!_loc6_)
                                                {
                                                   if(!§-!3§)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         _loc4_.§!!H§();
                                                         if(_loc5_)
                                                         {
                                                            addr183:
                                                            §%!a§[param1.toLowerCase()] = _loc4_;
                                                            if(_loc5_ || param3)
                                                            {
                                                               §4R§ += param2;
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr183);
                                                addr149:
                                                addr148:
                                             }
                                             §§goto(addr150);
                                          }
                                       }
                                       §§goto(addr104);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr150);
                        }
                     }
                     addr112:
                     return;
                  }
                  §§push(§4R§);
                  if(!_loc6_)
                  {
                     §§push(param2);
                     if(_loc5_ || §+!§)
                     {
                        addr127:
                        §§push(§§pop() + §§pop());
                        if(!(_loc6_ && param1))
                        {
                           if(§§pop() >= §"!+§)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr150);
                  §§goto(addr150);
               }
               §§goto(addr127);
            }
            §§goto(addr150);
         }
         §§goto(addr139);
      }
      
      public static function §%!6§(param1:String) : §8F§
      {
         return §%!a§[param1.toLowerCase()];
      }
      
      public static function §4z§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8F§ = null;
         if(_loc5_ || _loc3_)
         {
            if(param1 == §-!3§)
            {
               if(_loc5_)
               {
                  §§goto(addr31);
               }
            }
            else
            {
               §-!3§ = param1;
            }
            for each(_loc2_ in §%!a§)
            {
               if(_loc5_ || _loc2_)
               {
                  if(!§-!3§)
                  {
                     _loc2_.§!!H§();
                     continue;
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§=!a§();
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
            }
            return;
         }
         addr31:
      }
      
      public static function §'!Q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8F§ = null;
         var _loc3_:* = §%!a§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.§'!Q§();
            }
         }
      }
      
      public static function §4V§() : Boolean
      {
         return §-!3§;
      }
      
      public static function §4c§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §#!C§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Class = null;
         if(!(_loc9_ && §+!§))
         {
            if(!§@?§)
            {
               if(_loc8_ || param3)
               {
                  §§goto(addr35);
               }
            }
            var _loc5_:§8F§;
            if(!(_loc5_ = §%!6§(param2)))
            {
               if(!(_loc9_ && param2))
               {
                  §§push(§5!l§);
                  if(!(_loc9_ && §+!§))
                  {
                     if(§§pop())
                     {
                        §§push(§`![§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                        if(!(_loc9_ && param1))
                        {
                           §§push(param1);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 §§push(§§pop() + " because this channel does not exist ");
                                 if(_loc9_ && param2)
                                 {
                                 }
                                 addr86:
                                 §§pop().log(§§pop());
                                 §§push(null);
                                 if(!(_loc9_ && param1))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr153);
                              }
                              §§push(param2);
                           }
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     addr119:
                     if(§§pop())
                     {
                        §§push(§`![§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                        if(!(_loc9_ && §+!§))
                        {
                           §§push(param1);
                           if(!_loc9_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc8_ || §+!§)
                              {
                                 §§push(§§pop() + " this channel is full ");
                                 if(!(_loc9_ && §+!§))
                                 {
                                    addr149:
                                    §§push(§§pop() + param2);
                                 }
                                 §§pop().log(§§pop());
                                 addr152:
                                 addr153:
                                 return §§pop();
                                 §§push(null);
                              }
                           }
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr86);
            }
            else
            {
               §§push(_loc5_.§6!C§());
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     §§push(§5!l§);
                  }
                  else
                  {
                     var _loc6_:Sound;
                     if((_loc6_ = §#!Z§[param1]) == null)
                     {
                        if(!(_loc7_ = §1F§.§"!_§(param1,false) as Class))
                        {
                           if(!_loc9_)
                           {
                              §§push(§`![§);
                              §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                              if(_loc8_ || param3)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              if(_loc9_)
                              {
                                 §§goto(addr200);
                              }
                           }
                           return null;
                        }
                        addr200:
                        _loc6_ = new _loc7_();
                        if(_loc8_)
                        {
                           §#!Z§[param1] = _loc6_;
                        }
                        §§goto(addr210);
                     }
                     addr210:
                     return _loc5_.§4c§(_loc6_,param3,param4);
                  }
               }
            }
            §§goto(addr119);
         }
         addr35:
         return null;
      }
      
      public static function §+!h§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8F§ = §%!6§(param1);
         if(_loc4_ || §+!§)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || param1)
               {
                  _loc2_.§'!Q§();
               }
            }
         }
      }
      
      public static function §&!b§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(§5!l§)
                     {
                        §§push(§`![§);
                        §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                        if(!_loc4_)
                        {
                           §§goto(addr107);
                        }
                     }
                     return;
                  }
                  §§push(Math.random() * _loc3_);
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(_loc4_)
                     {
                        _loc3_ = §§pop();
                        if(!_loc5_)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && param2))
                           {
                              addr86:
                              §§push(int(§§pop() + 1));
                           }
                           _loc3_ = §§pop();
                           if(!(_loc5_ && param2))
                           {
                              §§goto(addr107);
                           }
                           §§goto(addr126);
                        }
                        addr107:
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                        }
                        param1 = §§pop();
                        if(_loc4_ || §+!§)
                        {
                           addr126:
                           §+!§.§4c§(param1,param2);
                        }
                        return;
                     }
                  }
                  §§goto(addr86);
                  §§goto(addr126);
               }
            }
            §§goto(addr86);
         }
         §§goto(addr126);
      }
   }
}
