package §3O§
{
   import §;8§.§3f§;
   import com.rovio.assets.§>D§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §@6§
   {
      
      private static var §36§:Boolean = true;
      
      private static const §"w§:int = 128;
      
      private static var §1!7§:int;
      
      private static var § !7§:Dictionary;
      
      private static var §#!G§:Dictionary;
      
      public static const §`f§:String = "Default_Channel";
      
      public static const §'%§:Boolean = false;
      
      private static var §]@§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §36§ = true;
            while(true)
            {
               §"w§ = 128;
               while(!(_loc1_ && _loc1_))
               {
                  §`f§ = "Default_Channel";
                  while(!(_loc1_ && §@6§))
                  {
                     §'%§ = false;
                     do
                     {
                        §]@§ = true;
                     }
                     while(_loc1_ && §@6§);
                     
                     if(_loc1_)
                     {
                        continue;
                     }
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §@6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §]@§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !7§ = new Dictionary();
            while(true)
            {
               §#!G§ = new Dictionary();
               loop1:
               while(!(_loc2_ && §@6§))
               {
                  while(true)
                  {
                     §1!7§ = 0;
                     do
                     {
                        §'!&§(§`f§,4,1);
                     }
                     while(_loc2_);
                     
                     if(_loc1_ || §@6§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public static function §'!&§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §@6§))
         {
            if(§"7§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§1!7§);
                  loop1:
                  while(true)
                  {
                     §§push(§"w§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 if(§'%§)
                                 {
                                    §§push(§3f§);
                                    §§push("WARNING: SoundEngine:addNewChannelControl() ");
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + param1);
                                       if(_loc6_ || param3)
                                       {
                                          addr123:
                                          §§push(" failed because we already have more than ");
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() + §"w§);
                                                if(_loc6_ || param1)
                                                {
                                                }
                                                addr140:
                                                §§pop().log(§§pop());
                                                break;
                                             }
                                             §§push(" reserved");
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr123);
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr140);
                        }
                        else
                        {
                           §§push(§1!7§);
                           if(!(_loc5_ && param2))
                           {
                              §§push(param2);
                              if(_loc6_ || param3)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || param3)
                                 {
                                    if(§§pop() >= §"w§)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr147);
                                          }
                                          while(true)
                                          {
                                             §§push(§"w§);
                                             if(!(_loc5_ && §@6§))
                                             {
                                                §§push(§1!7§);
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr70:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && param2)
                                                         {
                                                            continue loop1;
                                                         }
                                                         param2 = §§pop();
                                                      }
                                                   }
                                                }
                                                addr66:
                                             }
                                             §§goto(addr70);
                                          }
                                       }
                                       if(false)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr69);
                              }
                              §§goto(addr66);
                           }
                           §§goto(addr70);
                        }
                     }
                     return;
                  }
               }
               var _loc4_:§?+§ = new §?+§(param1,param2,param3);
               if(_loc6_)
               {
                  if(!§36§)
                  {
                     if(_loc6_ || param1)
                     {
                        addr205:
                        _loc4_.§%K§();
                     }
                     while(true)
                     {
                        addr188:
                        while(!(_loc5_ && param1))
                        {
                           §1!7§ += param2;
                           if(!_loc5_)
                           {
                              return;
                           }
                        }
                     }
                     addr207:
                  }
                  while(true)
                  {
                     § !7§[param1.toLowerCase()] = _loc4_;
                     §§goto(addr188);
                     §§goto(addr207);
                  }
               }
               §§goto(addr205);
            }
            addr147:
            return;
         }
         §§goto(addr57);
      }
      
      public static function §"7§(param1:String) : §?+§
      {
         return § !7§[param1.toLowerCase()];
      }
      
      public static function §`n§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?+§ = null;
         if(_loc5_ || §@6§)
         {
            if(param1 == §36§)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
            §36§ = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in § !7§)
         {
            if(_loc5_)
            {
               if(§36§)
               {
                  if(_loc5_)
                  {
                     _loc2_.§<m§();
                     if(_loc6_ && _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.§%K§();
               }
            }
         }
      }
      
      public static function §&t§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§?+§ = null;
         var _loc3_:* = § !7§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.§&t§();
            }
         }
      }
      
      public static function §+!$§() : Boolean
      {
         return §36§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §%!D§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Class = null;
         if(_loc8_ || param1)
         {
            if(!§]@§)
            {
               if(!_loc9_)
               {
                  §§goto(addr30);
               }
            }
            var _loc5_:§?+§;
            if(!(_loc5_ = §"7§(param2)))
            {
               if(_loc8_)
               {
                  §§push(§'%§);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || §@6§)
                        {
                           §§push(§3f§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                           if(!_loc9_)
                           {
                              §§push(param1);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_)
                                 {
                                    §§goto(addr62);
                                 }
                              }
                              §§goto(addr71);
                           }
                           addr62:
                           §§push(§§pop() + " because this channel does not exist ");
                           if(_loc8_ || param1)
                           {
                              addr71:
                              §§push(§§pop() + param2);
                           }
                           §§pop().log(§§pop());
                           if(_loc8_ || param2)
                           {
                              addr139:
                              §§push(null);
                           }
                           else
                           {
                              addr107:
                              §§push(_loc5_.§2V§());
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    var _loc6_:Sound;
                                    if((_loc6_ = §#!G§[param1]) == null)
                                    {
                                       if(!(_loc7_ = §>D§.§`C§(param1,false) as Class))
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(§3f§);
                                             §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                                             if(_loc8_ || param3)
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
                                       _loc6_ = new _loc7_();
                                       if(!(_loc9_ && param2))
                                       {
                                          §#!G§[param1] = _loc6_;
                                       }
                                    }
                                    return _loc5_.playSound(_loc6_,param3,param4);
                                 }
                                 if(!_loc9_)
                                 {
                                    addr115:
                                    if(§'%§)
                                    {
                                       addr116:
                                       §§push(§3f§);
                                       §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                                       if(!_loc9_)
                                       {
                                          §§push(param1);
                                          if(!(_loc9_ && param1))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() + " this channel is full ");
                                                if(_loc9_)
                                                {
                                                }
                                                addr137:
                                                §§pop().log(§§pop());
                                                §§push(null);
                                                if(!_loc9_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr140);
                                             }
                                             §§push(param2);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr115);
                              addr141:
                           }
                           addr140:
                           return §§pop();
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr115);
               }
               §§goto(addr141);
            }
            §§goto(addr107);
         }
         addr30:
         return null;
      }
      
      public static function §!>§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?+§ = §"7§(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc2_.§&t§();
               }
            }
         }
      }
      
      public static function §0+§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(Math.random() * _loc3_);
                     loop2:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(1);
                                 if(!(_loc5_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(int(§§pop()));
                              }
                              if(_loc5_ || §@6§)
                              {
                                 _loc3_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                       }
                                       param1 = §§pop();
                                       for(; !(_loc4_ && §@6§); §@6§.playSound(param1,param2),if(_loc5_)
                                       {
                                          continue loop5;
                                       })
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             continue;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    addr140:
                                    if(§'%§)
                                    {
                                       addr142:
                                       §§push(§3f§);
                                       §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().log(§§pop());
                                       break;
                                    }
                                    break;
                                    §§goto(addr142);
                                    if(_loc5_ || _loc3_)
                                    {
                                       return;
                                    }
                                 }
                                 return;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
   }
}
