package §%!$§
{
   import §0v§.§-'§;
   import §@,§.§4h§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §=m§
   {
      
      private static var §[!@§:Boolean = true;
      
      private static const §@!;§:int = 128;
      
      private static var §28§:int;
      
      private static var §in§:Dictionary;
      
      private static var §'!X§:Dictionary;
      
      public static const §1N§:String = "Default_Channel";
      
      public static const §0!?§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §[!@§ = true;
            while(true)
            {
               §@!;§ = 128;
               loop1:
               while(_loc2_ || §=m§)
               {
                  while(true)
                  {
                     §1N§ = "Default_Channel";
                     while(!_loc1_)
                     {
                        §0!?§ = false;
                        if(!_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §=m§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §=m§)
         {
            §in§ = new Dictionary();
            while(true)
            {
               §'!X§ = new Dictionary();
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            §28§ = 0;
            do
            {
               §,!1§(§1N§,4,1);
            }
            while(!_loc2_);
            
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §,!1§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §=m§))
         {
            if(§,'§(param1) == null)
            {
               loop0:
               do
               {
                  §§push(§28§);
                  loop1:
                  while(true)
                  {
                     §§push(§@!;§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(§28§);
                           if(!(_loc5_ && param3))
                           {
                              addr66:
                              §§push(param2);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc5_)
                                 {
                                    if(§§pop() >= §@!;§)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             §§push(§@!;§);
                                             if(!(_loc5_ && param1))
                                             {
                                                break;
                                             }
                                             addr75:
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             param2 = §§pop();
                                             addr78:
                                             if(_loc5_)
                                             {
                                                break loop2;
                                             }
                                             if(!_loc6_)
                                             {
                                                §§goto(addr137);
                                             }
                                             if(true)
                                             {
                                                addr139:
                                                var _loc4_:§8m§ = new §8m§(param1,param2,param3);
                                                if(_loc6_ || param1)
                                                {
                                                   if(!§[!@§)
                                                   {
                                                      addr195:
                                                      _loc4_.§0[§();
                                                   }
                                                   §in§[param1.toLowerCase()] = _loc4_;
                                                }
                                                §28§ += param2;
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr195);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr195);
                                                }
                                                addr192:
                                                §§goto(addr192);
                                             }
                                          }
                                          else
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                                addr109:
                                                §§push(§4h§);
                                                §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + " failed because we already have more than ");
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr124:
                                                      §§push(§§pop() + §@!;§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + " reserved");
                                                      }
                                                   }
                                                   §§pop().log(§§pop());
                                                   addr84:
                                                   return;
                                                   addr131:
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr84);
                                       }
                                       §§goto(addr78);
                                    }
                                    §§goto(addr139);
                                 }
                                 addr74:
                                 §§goto(addr75);
                                 §§push(int(§§pop()));
                              }
                              if(_loc5_ && param1)
                              {
                                 continue loop2;
                              }
                              §§goto(addr74);
                              §§push(§§pop() - §§pop());
                           }
                           break;
                        }
                        §§goto(addr66);
                        §§push(§28§);
                     }
                     continue loop0;
                  }
               }
               while(_loc5_);
               
               if(§0!?§)
               {
                  §§goto(addr109);
               }
               §§goto(addr84);
            }
            addr137:
            return;
         }
         §§goto(addr109);
      }
      
      public static function §,'§(param1:String) : §8m§
      {
         return §in§[param1.toLowerCase()];
      }
      
      public static function §=!J§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8m§ = null;
         if(_loc6_ || _loc2_)
         {
            if(param1 == §[!@§)
            {
               if(_loc6_)
               {
                  §§goto(addr32);
               }
            }
            else
            {
               §[!@§ = param1;
            }
            var _loc3_:int = 0;
            for each(_loc2_ in §in§)
            {
               if(!_loc5_)
               {
                  if(!§[!@§)
                  {
                     _loc2_.§0[§();
                     continue;
                  }
                  if(_loc6_ || §=m§)
                  {
                     _loc2_.§0!>§();
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                  }
               }
            }
            return;
         }
         addr32:
      }
      
      public static function §,w§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8m§ = null;
         for each(_loc1_ in §in§)
         {
            if(!_loc5_)
            {
               _loc1_.§,w§();
            }
         }
      }
      
      public static function §?§() : Boolean
      {
         return §[!@§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §5v§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Class = null;
         var _loc5_:§8m§;
         if(!(_loc5_ = §,'§(param2)))
         {
            if(_loc8_)
            {
               §§push(§0!?§);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(§4h§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + " because this channel does not exist ");
                           if(_loc8_ || param1)
                           {
                              §§push(§§pop() + param2);
                           }
                        }
                        §§pop().log(§§pop());
                        if(_loc8_ || param3)
                        {
                           addr122:
                           §§push(null);
                        }
                        else
                        {
                           loop0:
                           while(true)
                           {
                              addr75:
                              while(true)
                              {
                                 §§push(_loc5_.§04§());
                                 if(_loc8_ || §=m§)
                                 {
                                    while(!§§pop())
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          §§push(§0!?§);
                                          loop2:
                                          while(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(§4h§);
                                                §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1);
                                                if(_loc8_)
                                                {
                                                   addr119:
                                                   §§push(§§pop() + " this channel is full ");
                                                   if(!_loc9_)
                                                   {
                                                      addr116:
                                                      §§push(§§pop() + param2);
                                                   }
                                                   §§pop().log(§§pop());
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         addr121:
                                                         break loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr119:
                                                }
                                                §§goto(addr116);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§push(null);
                                          if(!(_loc9_ && param3))
                                          {
                                             return §§pop();
                                          }
                                          addr123:
                                          return §§pop();
                                          addr103:
                                       }
                                       §§goto(addr119);
                                    }
                                    var _loc6_:Sound;
                                    if((_loc6_ = §'!X§[param1]) == null)
                                    {
                                       if(!(_loc7_ = §-'§.§]`§(param1,false) as Class))
                                       {
                                          if(!_loc9_)
                                          {
                                             §4h§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                                             if(_loc8_ || param2)
                                             {
                                                return null;
                                             }
                                          }
                                       }
                                       _loc6_ = new _loc7_();
                                       if(!(_loc9_ && §=m§))
                                       {
                                          §'!X§[param1] = _loc6_;
                                       }
                                    }
                                    return _loc5_.playSound(_loc6_,param3,param4);
                                    addr84:
                                 }
                                 §§goto(addr103);
                              }
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr122);
               }
               §§goto(addr84);
            }
            §§goto(addr121);
         }
         §§goto(addr75);
      }
      
      public static function §+f§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8m§ = §,'§(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ != null)
            {
               if(_loc3_)
               {
                  addr53:
                  _loc2_.§,w§();
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public static function §break§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc5_ || _loc3_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr159);
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr138:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    break loop4;
                                 }
                                 §§push(_loc3_);
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(1);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc4_ && §=m§))
                                       {
                                          §§push(int(§§pop()));
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                     addr131:
                  }
                  §§goto(addr161);
               }
            }
         }
         addr159:
         if(§0!?§)
         {
            addr161:
            §4h§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
         }
      }
   }
}
