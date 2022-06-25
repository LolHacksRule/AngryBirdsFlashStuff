package §"R§
{
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class § !Q§
   {
      
      private static var §"p§:Boolean = true;
      
      private static const §'E§:int = 128;
      
      private static var §@<§:int;
      
      private static var §?!q§:Dictionary;
      
      private static var §^!G§:Dictionary;
      
      public static const §[!c§:String = "Default_Channel";
      
      public static const §`!;§:Boolean = false;
      
      private static var §?!r§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"p§ = true;
            loop0:
            while(true)
            {
               §'E§ = 128;
               while(true)
               {
                  §[!c§ = "Default_Channel";
                  loop3:
                  while(!(_loc1_ && _loc2_))
                  {
                     §?!r§ = true;
                     if(_loc2_)
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              §`!;§ = false;
                              continue loop3;
                           }
                           return;
                        }
                        addr64:
                        addr81:
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function § !Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §?!r§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?!q§ = new Dictionary();
            while(true)
            {
               §^!G§ = new Dictionary();
               loop2:
               while(!(_loc1_ && _loc2_))
               {
                  §]!h§(§[!c§,4,1);
                  if(_loc2_ || _loc1_)
                  {
                     addr52:
                     if(_loc1_ && § !Q§)
                     {
                        while(true)
                        {
                           §@<§ = 0;
                           continue loop2;
                           §§goto(addr52);
                        }
                        addr87:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public static function §]!h§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            if(§5s§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§@<§);
                  loop1:
                  while(true)
                  {
                     §§push(§'E§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§@<§);
                           if(_loc6_ || param2)
                           {
                              §§push(param2);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || param1)
                                 {
                                    if(§§pop() >= §'E§)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             if(!_loc6_)
                                             {
                                                break loop2;
                                             }
                                             §§push(§'E§);
                                             if(!_loc5_)
                                             {
                                                addr68:
                                                §§push(§@<§);
                                                if(!(_loc6_ || param3))
                                                {
                                                   continue loop2;
                                                }
                                                addr76:
                                                §§push(int(§§pop() - §§pop()));
                                             }
                                             if(_loc5_ && param3)
                                             {
                                                continue loop1;
                                             }
                                             param2 = §§pop();
                                             addr85:
                                             if(_loc6_ || § !Q§)
                                             {
                                                break;
                                             }
                                             addr113:
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          addr120:
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§!>§);
                                          §§push("WARNING: SoundEngine:addNewChannelControl() ");
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() + param1);
                                             if(!_loc5_)
                                             {
                                                §§push(" failed because we already have more than ");
                                                if(!(_loc5_ && § !Q§))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc5_ && § !Q§))
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr85);
                                    }
                                    addr168:
                                    var _loc4_:§[f§ = new §[f§(param1,param2,param3);
                                    if(!(_loc5_ && param3))
                                    {
                                       if(!§"p§)
                                       {
                                          addr224:
                                          _loc4_.§1!@§();
                                       }
                                       §?!q§[param1.toLowerCase()] = _loc4_;
                                       addr219:
                                       if(_loc6_)
                                       {
                                          §@<§ += param2;
                                          if(!_loc5_)
                                          {
                                             if(!(_loc6_ || param3))
                                             {
                                                §§goto(addr224);
                                             }
                                             return;
                                          }
                                          §§goto(addr219);
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr76);
                              }
                           }
                           §§goto(addr68);
                        }
                        if(!(_loc6_ || § !Q§))
                        {
                           addr151:
                           §§push(§§pop() + §'E§);
                           if(_loc6_)
                           {
                              addr155:
                              §§push(§§pop() + " reserved");
                           }
                           §§pop().log(§§pop());
                           if(_loc6_)
                           {
                              break loop0;
                           }
                           addr166:
                           return;
                        }
                        if(false)
                        {
                           break loop0;
                        }
                        §§goto(addr168);
                     }
                     if(§`!;§)
                     {
                        §§goto(addr120);
                     }
                     break loop0;
                  }
               }
               return;
            }
            §§goto(addr166);
         }
         §§goto(addr113);
      }
      
      public static function §5s§(param1:String) : §[f§
      {
         return §?!q§[param1.toLowerCase()];
      }
      
      public static function §each §(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[f§ = null;
         if(_loc6_)
         {
            if(param1 == §"p§)
            {
               if(_loc6_ || param1)
               {
                  return;
               }
            }
            else
            {
               addr45:
               §"p§ = param1;
            }
            for each(_loc2_ in §?!q§)
            {
               if(_loc6_)
               {
                  if(!§"p§)
                  {
                     _loc2_.§1!@§();
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§ !#§();
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §"!"§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[f§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §?!q§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.§"!"§();
            }
         }
      }
      
      public static function §3<§() : Boolean
      {
         return §"p§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §`a§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:Class = null;
         if(_loc9_)
         {
            if(!§?!r§)
            {
               if(_loc9_)
               {
                  return null;
               }
            }
         }
         var _loc6_:§[f§;
         if(!(_loc6_ = §5s§(param2)))
         {
            if(_loc9_ || param3)
            {
               §§push(§`!;§);
               if(!(_loc10_ && § !Q§))
               {
                  if(§§pop())
                  {
                     if(_loc9_ || § !Q§)
                     {
                        §§push(§!>§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                        if(!_loc10_)
                        {
                           §§push(param1);
                           if(!(_loc10_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc10_ && § !Q§))
                              {
                                 §§goto(addr77);
                              }
                           }
                           §§goto(addr81);
                        }
                        addr77:
                        §§push(§§pop() + " because this channel does not exist ");
                        if(!_loc10_)
                        {
                           addr81:
                           §§push(§§pop() + param2);
                        }
                        §§pop().log(§§pop());
                        if(_loc9_ || param3)
                        {
                           addr163:
                           §§push(null);
                        }
                        else
                        {
                           §§goto(addr118);
                        }
                        §§goto(addr164);
                     }
                     addr118:
                     if(false)
                     {
                        addr121:
                        §§push(_loc6_.§']§());
                        if(!_loc10_)
                        {
                           addr125:
                           if(!§§pop())
                           {
                              addr162:
                              if(!_loc10_)
                              {
                                 §§push(§`!;§);
                              }
                              §§push(null);
                              if(_loc9_ || § !Q§)
                              {
                                 return §§pop();
                              }
                              addr164:
                              return §§pop();
                           }
                           §§goto(addr166);
                        }
                        if(§§pop())
                        {
                           §§push(§!>§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                           if(_loc9_ || param1)
                           {
                              §§push(param1);
                              if(!(_loc10_ && param3))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + " this channel is full ");
                                    if(!(_loc10_ && param1))
                                    {
                                       addr160:
                                       §§push(§§pop() + param2);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr162);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr162);
                     }
                     addr166:
                     var _loc7_:Sound;
                     if((_loc7_ = §^!G§[param1]) == null)
                     {
                        if(!(_loc8_ = §%!G§.§^!B§(param1,false) as Class))
                        {
                           if(_loc9_)
                           {
                              §§push(§!>§);
                              §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                              if(!(_loc10_ && param1))
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              if(!(_loc9_ || param1))
                              {
                                 §§goto(addr217);
                              }
                           }
                           return null;
                        }
                        addr217:
                        _loc7_ = new _loc8_();
                        if(!_loc10_)
                        {
                           §^!G§[param1] = _loc7_;
                        }
                        §§goto(addr227);
                     }
                     addr227:
                     return _loc6_.playSound(_loc7_,param3,param4,param5);
                  }
                  §§goto(addr163);
               }
               §§goto(addr125);
            }
            §§goto(addr162);
         }
         §§goto(addr121);
      }
      
      public static function §9!t§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[f§ = §5s§(param1);
         if(_loc3_ || § !Q§)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || § !Q§)
               {
                  _loc2_.§"!"§();
               }
            }
         }
      }
      
      public static function §0!t§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(!(_loc4_ && § !Q§))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               addr163:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr164:
                     if(§`!;§)
                     {
                        addr166:
                        §§push(§!>§);
                        §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                        if(!_loc4_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                     }
                     return;
                  }
                  addr126:
                  while(true)
                  {
                     §§push(Math.random() * _loc3_);
                     addr131:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr126);
         }
      }
   }
}
