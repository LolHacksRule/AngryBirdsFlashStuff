package §=?§
{
   import §6b§.Log;
   import com.rovio.assets.AssetCache;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class SoundEngine
   {
      
      private static var §^o§:Boolean = true;
      
      private static const §]'§:int = 128;
      
      private static var §!G§:int;
      
      private static var §;!A§:Dictionary;
      
      private static var § X§:Dictionary;
      
      public static const §0R§:String = "Default_Channel";
      
      public static const §+9§:Boolean = false;
      
      private static var §%D§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^o§ = true;
            while(true)
            {
               §]'§ = 128;
               loop2:
               while(_loc1_ || _loc1_)
               {
                  §+9§ = false;
                  while(!_loc2_)
                  {
                     §%D§ = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     §0R§ = "Default_Channel";
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function SoundEngine()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
            §%D§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;!A§ = new Dictionary();
         }
         while(true)
         {
            § X§ = new Dictionary();
            while(!(_loc1_ && _loc2_))
            {
               §!G§ = 0;
               while(_loc2_)
               {
                  §#!`§(§0R§,4,1);
                  if(!(_loc1_ && SoundEngine))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public static function §#!`§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(§!_§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§!G§);
                  loop1:
                  while(true)
                  {
                     §§push(§]'§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              if(!_loc6_)
                              {
                                 if(!§+9§)
                                 {
                                 }
                                 §§goto(addr70);
                              }
                              break loop0;
                           }
                           addr98:
                           if(!(_loc5_ || param1))
                           {
                              continue loop0;
                           }
                           §§push(Log);
                           §§push("WARNING: SoundEngine:addNewChannelControl() ");
                           if(!_loc6_)
                           {
                              §§push(§§pop() + param1);
                              if(_loc5_)
                              {
                                 §§push(" failed because we already have more than ");
                                 if(_loc5_ || SoundEngine)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && param2))
                                    {
                                       addr147:
                                       §§push(§§pop() + §]'§);
                                       if(!_loc6_)
                                       {
                                          addr145:
                                          §§push(" reserved");
                                       }
                                       §§pop().log(§§pop());
                                       break;
                                    }
                                    §§goto(addr145);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr145);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§!G§);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_)
                                    {
                                       if(§§pop() >= §]'§)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(§]'§);
                                                if(!_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr51:
                                                   §§push(§!G§);
                                                   if(_loc6_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr60:
                                                   param2 = §§pop() - §§pop();
                                                }
                                                §§goto(addr60);
                                             }
                                             else
                                             {
                                                §§goto(addr98);
                                             }
                                          }
                                          if(!(_loc5_ || param2))
                                          {
                                             if(!(_loc5_ || SoundEngine))
                                             {
                                                break loop2;
                                             }
                                             continue;
                                          }
                                          if(false)
                                          {
                                             break;
                                          }
                                       }
                                       var _loc4_:SoundChannelController = new SoundChannelController(param1,param2,param3);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(§^o§);
                                          if(_loc5_ || SoundEngine)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                _loc4_.§#!6§();
                                                addr227:
                                             }
                                             §§goto(addr227);
                                          }
                                          §;!A§[param1.toLowerCase()] = _loc4_;
                                          addr203:
                                          if(_loc5_)
                                          {
                                             §!G§ += param2;
                                             if(!_loc5_)
                                             {
                                                §§goto(addr203);
                                             }
                                             return;
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr60);
                                 }
                                 §§goto(addr51);
                              }
                              §§goto(addr60);
                           }
                        }
                        §§goto(addr70);
                     }
                     addr70:
                     return;
                  }
               }
            }
         }
      }
      
      public static function §!_§(param1:String) : SoundChannelController
      {
         return §;!A§[param1.toLowerCase()];
      }
      
      public static function §?!$§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:SoundChannelController = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 == §^o§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               addr51:
               §^o§ = param1;
            }
            for each(_loc2_ in §;!A§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  if(§^o§)
                  {
                     if(!(_loc5_ && SoundEngine))
                     {
                        addr94:
                        _loc2_.§`!=§();
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     _loc2_.§#!6§();
                  }
                  continue;
               }
               §§goto(addr94);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public static function §;!8§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:SoundChannelController = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §;!A§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.§;!8§();
            }
         }
      }
      
      public static function §4!7§() : Boolean
      {
         return §^o§;
      }
      
      public static function §9!X§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §7[§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         if(_loc10_ || param1)
         {
            §§push(§%D§);
            if(!(_loc9_ && param3))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc10_ || param1)
               {
                  §§goto(addr45);
               }
            }
            var _loc6_:SoundChannelController = §!_§(param2);
            if(!_loc9_)
            {
               §§push(!_loc6_);
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr184:
                     §§push(§+9§);
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(_loc6_.§'!a§());
                        if(_loc10_)
                        {
                           §§push(!§§pop());
                           if(_loc9_ && param3)
                           {
                              break;
                           }
                        }
                        continue loop0;
                     }
                     addr115:
                     if(_loc10_ || SoundEngine)
                     {
                        if(§§pop())
                        {
                           addr123:
                           if(_loc10_ || SoundEngine)
                           {
                              §§push(Log);
                              §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                              if(_loc10_ || param1)
                              {
                                 §§push(param1);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc9_ && SoundEngine))
                                    {
                                       §§push(§§pop() + " this channel is full ");
                                       if(!_loc9_)
                                       {
                                          addr165:
                                          §§push(§§pop() + param2);
                                       }
                                       §§pop().log(§§pop());
                                       addr55:
                                       §§push(null);
                                       if(!_loc9_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                              }
                              §§goto(addr165);
                           }
                           else
                           {
                              addr170:
                              §§push(null);
                              addr221:
                           }
                           addr172:
                           return §§pop();
                        }
                        §§goto(addr55);
                     }
                     else
                     {
                        addr186:
                        if(§§pop())
                        {
                           §§push(Log);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                           if(_loc10_ || param3)
                           {
                              §§push(param1);
                              if(_loc10_ || SoundEngine)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc10_ || param2)
                                 {
                                    addr213:
                                    §§push(§§pop() + " because this channel does not exist ");
                                    if(!_loc9_)
                                    {
                                       addr218:
                                       §§push(§§pop() + param2);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr221);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr213);
                        }
                     }
                     §§goto(addr170);
                     addr78:
                  }
                  §§goto(addr186);
               }
            }
            §§goto(addr170);
         }
         addr45:
         return null;
      }
      
      public static function §'!B§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundChannelController = §!_§(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || param1)
               {
                  addr49:
                  _loc2_.§;!8§();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function §1h§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               addr141:
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(Math.random() * _loc3_);
                     addr131:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       §§push(param1);
                                       if(_loc4_ || param2)
                                       {
                                          §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                       }
                                       param1 = §§pop();
                                       while(!_loc5_)
                                       {
                                          SoundEngine.§9!X§(param1,param2);
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      return;
                                                   }
                                                   break loop1;
                                                }
                                                addr145:
                                                §§push(Log);
                                                §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().log(§§pop());
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 addr106:
                              }
                              if(!(_loc4_ || SoundEngine))
                              {
                                 continue loop4;
                                 return;
                              }
                              continue loop0;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         if(§+9§)
         {
            §§goto(addr145);
         }
         §§goto(addr106);
      }
   }
}
