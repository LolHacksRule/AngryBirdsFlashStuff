package §`!K§
{
   import § !G§.§ #§;
   import §1!K§.§<!I§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §!!>§
   {
      
      private static var §%]§:Boolean = true;
      
      private static const §?!U§:int = 128;
      
      private static var §=!5§:int;
      
      private static var §77§:Dictionary;
      
      private static var §]O§:Dictionary;
      
      public static const §1a§:String = "Default_Channel";
      
      public static const §%K§:Boolean = false;
      
      private static var §5I§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%]§ = true;
            while(true)
            {
               §?!U§ = 128;
               loop1:
               while(true)
               {
                  §1a§ = "Default_Channel";
                  while(true)
                  {
                     §%K§ = false;
                     addr56:
                     while(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
               addr44:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         while(true)
         {
            §5I§ = true;
            if(_loc1_ || _loc1_)
            {
               §§goto(addr44);
            }
            §§goto(addr56);
         }
         §§goto(addr51);
      }
      
      public function §!!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5I§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §77§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            §]O§ = new Dictionary();
            do
            {
               §=!5§ = 0;
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public static function §6!K§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(§-!8§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§=!5§);
                  loop1:
                  while(true)
                  {
                     §§push(§?!U§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc5_ || param1)
                           {
                              if(§%K§)
                              {
                                 if(!_loc6_)
                                 {
                                    addr118:
                                    §§push(§ #§);
                                    §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                                    if(!(_loc6_ && §!!>§))
                                    {
                                       §§push(§§pop() + " failed because we already have more than ");
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + §?!U§);
                                          if(!(_loc6_ && param2))
                                          {
                                             addr142:
                                             §§push(§§pop() + " reserved");
                                          }
                                          §§pop().log(§§pop());
                                          break;
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                                 break;
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr118);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§=!5§);
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(_loc5_ || param2)
                                 {
                                    if(!(_loc5_ || param3))
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || param2)
                                    {
                                       if(§§pop() >= §?!U§)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!(_loc6_ && §!!>§))
                                             {
                                                §§push(§?!U§);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                if(_loc5_ || §!!>§)
                                                {
                                                   addr75:
                                                   §§push(int(§§pop() - §=!5§));
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             if(_loc6_)
                                             {
                                                return;
                                             }
                                             addr151:
                                             continue;
                                          }
                                          addr77:
                                          if(_loc6_ && param2)
                                          {
                                             break loop2;
                                          }
                                          if(_loc5_)
                                          {
                                             break loop0;
                                          }
                                          continue loop0;
                                       }
                                       addr153:
                                       var _loc4_:§&y§ = new §&y§(param1,param2,param3);
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!§%]§)
                                          {
                                             while(true)
                                             {
                                                _loc4_.§ §();
                                                addr221:
                                                while(true)
                                                {
                                                }
                                                addr199:
                                                if(_loc6_ && param1)
                                                {
                                                   continue;
                                                }
                                                §=!5§ += param2;
                                                addr216:
                                                if(_loc6_ && param2)
                                                {
                                                   while(_loc5_ || param1)
                                                   {
                                                      §§goto(addr199);
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr221);
                                                   addr192:
                                                }
                                                return;
                                                addr185:
                                             }
                                          }
                                          while(true)
                                          {
                                             §77§[param1.toLowerCase()] = _loc4_;
                                             §§goto(addr192);
                                             §§goto(addr221);
                                          }
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                                 §§goto(addr75);
                              }
                              break;
                           }
                           param2 = §§pop();
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr88);
                  }
               }
               if(false)
               {
                  addr88:
                  return;
               }
               §§goto(addr153);
            }
            §§goto(addr151);
         }
         §§goto(addr152);
      }
      
      public static function §-!8§(param1:String) : §&y§
      {
         return §77§[param1.toLowerCase()];
      }
      
      public static function §?^§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&y§ = null;
         if(_loc6_ || §!!>§)
         {
            if(param1 == §%]§)
            {
               if(!(_loc5_ && §!!>§))
               {
                  return;
               }
            }
            §%]§ = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in §77§)
         {
            if(_loc6_ || _loc3_)
            {
               if(!§%]§)
               {
                  _loc2_.§ §();
                  continue;
               }
               if(!(_loc5_ && _loc3_))
               {
                  _loc2_.§@!N§();
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
               }
            }
         }
      }
      
      public static function § &§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&y§ = null;
         for each(_loc1_ in §77§)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_.§ &§();
            }
         }
      }
      
      public static function §`E§() : Boolean
      {
         return §%]§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §<9§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Class = null;
         if(!_loc8_)
         {
            if(!§5I§)
            {
               if(!(_loc8_ && param2))
               {
                  §§goto(addr31);
               }
            }
            var _loc5_:§&y§;
            if(!(_loc5_ = §-!8§(param2)))
            {
               if(!(_loc8_ && param2))
               {
                  §§push(§%K§);
                  if(_loc9_ || §!!>§)
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && §!!>§))
                        {
                           §§push(§ #§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1);
                           if(!(_loc8_ && §!!>§))
                           {
                              §§push(§§pop() + " because this channel does not exist ");
                              if(_loc9_)
                              {
                                 §§push(§§pop() + param2);
                              }
                           }
                           §§pop().log(§§pop());
                           if(_loc9_ || param2)
                           {
                              addr161:
                              return null;
                           }
                           else
                           {
                              addr135:
                              addr136:
                              if(§%K§)
                              {
                                 addr137:
                                 §§push(§ #§);
                                 §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() + " this channel is full ");
                                    if(!(_loc8_ && param2))
                                    {
                                       §§push(§§pop() + param2);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 addr160:
                              }
                              §§push(null);
                              if(_loc9_ || param2)
                              {
                                 return §§pop();
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr161);
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc8_ && param1))
                           {
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§goto(addr135);
                           }
                           break;
                        }
                        var _loc6_:Sound;
                        if((_loc6_ = §]O§[param1]) == null)
                        {
                           if(!(_loc7_ = §<!I§.§;!U§(param1,false) as Class))
                           {
                              if(_loc9_)
                              {
                                 § #§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                                 if(!(_loc8_ && param3))
                                 {
                                    return null;
                                 }
                              }
                           }
                           _loc6_ = new _loc7_();
                           if(_loc9_)
                           {
                              §]O§[param1] = _loc6_;
                           }
                        }
                        return _loc5_.playSound(_loc6_,param3,param4);
                     }
                  }
               }
               §§goto(addr137);
            }
            §§goto(addr116);
         }
         addr31:
         return null;
      }
      
      public static function §8y§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&y§ = §-!8§(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || _loc3_)
               {
                  _loc2_.§ &§();
               }
            }
         }
      }
      
      public static function § D§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc4_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               addr152:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(Math.random() * _loc3_);
                     addr127:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        continue loop0;
                     }
                  }
               }
               addr153:
               if(§%K§)
               {
                  addr155:
                  § #§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
               }
               §§goto(addr137);
            }
         }
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(!(_loc5_ && param1))
               {
                  §§push(1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && param1))
                     {
                        addr118:
                        _loc3_ = §§pop();
                        while(_loc4_)
                        {
                           §§push(param1);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                           }
                           param1 = §§pop();
                           for(; !(_loc5_ && §!!>§); §!!>§.playSound(param1,param2),if(!_loc4_)
                           {
                              continue;
                           },if(!_loc5_)
                           {
                              return;
                           },§§goto(addr153))
                           {
                              if(_loc4_ || param2)
                              {
                                 if(_loc4_ || §!!>§)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              else
                              {
                                 §§goto(addr122);
                              }
                              return;
                           }
                        }
                        continue;
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr152);
               }
               §§goto(addr128);
            }
            §§goto(addr118);
         }
      }
   }
}
