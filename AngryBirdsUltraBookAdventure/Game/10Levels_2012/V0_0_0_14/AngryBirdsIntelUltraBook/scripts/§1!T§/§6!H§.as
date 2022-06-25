package §1!T§
{
   import §6z§.§[g§;
   import com.rovio.assets.§9!N§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §6!H§
   {
      
      private static var §^!G§:Boolean = true;
      
      private static const §,y§:int = 128;
      
      private static var § 6§:int;
      
      private static var §3X§:Dictionary;
      
      private static var §34§:Dictionary;
      
      public static const §8!$§:String = "Default_Channel";
      
      public static const §]!+§:Boolean = false;
      
      private static var §<"§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!G§ = true;
         }
         loop0:
         do
         {
            §,y§ = 128;
            loop1:
            while(true)
            {
               §8!$§ = "Default_Channel";
               loop2:
               do
               {
                  §]!+§ = false;
                  while(_loc2_)
                  {
                     §<"§ = true;
                     if(!(_loc1_ && §6!H§))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc1_ && _loc2_);
               
               continue loop0;
            }
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §6!H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §6!H§)
         {
            §<"§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3X§ = new Dictionary();
            do
            {
               §34§ = new Dictionary();
               do
               {
                  § 6§ = 0;
                  do
                  {
                     §^!s§(§8!$§,4,1);
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §^!s§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(§-^§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§ 6§);
                  loop1:
                  while(true)
                  {
                     §§push(§,y§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           break loop1;
                        }
                        addr138:
                        loop3:
                        while(true)
                        {
                           §§push(§ 6§);
                           if(!_loc5_)
                           {
                              if(_loc5_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(param2);
                              if(!(_loc5_ && §6!H§))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc5_)
                                 {
                                    if(§§pop() >= §,y§)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          while(true)
                                          {
                                             §§push(§,y§);
                                             if(!_loc5_)
                                             {
                                                §§push(§ 6§);
                                                while(true)
                                                {
                                                   if(!(_loc6_ || param2))
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr65:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                      }
                                                   }
                                                }
                                                addr56:
                                             }
                                             §§goto(addr65);
                                          }
                                          addr52:
                                       }
                                       while(true)
                                       {
                                          if(!(_loc6_ || §6!H§))
                                          {
                                             if(!_loc6_)
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                          if(_loc5_)
                                          {
                                             break loop0;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr77);
                                          }
                                       }
                                    }
                                    var _loc4_:§,k§ = new §,k§(param1,param2,param3);
                                    if(!_loc5_)
                                    {
                                       if(!§^!G§)
                                       {
                                          addr199:
                                          _loc4_.§`!@§();
                                          addr201:
                                       }
                                       §3X§[param1.toLowerCase()] = _loc4_;
                                       addr189:
                                       if(_loc6_ || §6!H§)
                                       {
                                          § 6§ += param2;
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§goto(addr201);
                                             }
                                             return;
                                             addr182:
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr64);
                              }
                              §§goto(addr56);
                           }
                           §§goto(addr65);
                        }
                        if(!_loc5_)
                        {
                           §§goto(addr77);
                        }
                     }
                  }
                  if(_loc6_)
                  {
                     if(_loc6_ || param1)
                     {
                        if(§]!+§)
                        {
                           break;
                        }
                        addr77:
                     }
                     continue;
                     return;
                  }
                  break;
               }
               §§push(§[g§);
               §§push("WARNING: SoundEngine:addNewChannelControl() ");
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() + param1);
                  if(_loc6_ || param1)
                  {
                     addr125:
                     §§push(" failed because we already have more than ");
                     if(_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc5_)
                        {
                           addr131:
                           §§push(§§pop() + §,y§);
                           if(!_loc5_)
                           {
                              addr136:
                              §§push(§§pop() + " reserved");
                           }
                        }
                        §§pop().log(§§pop());
                        §§goto(addr138);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr131);
               }
               §§goto(addr125);
            }
            return;
         }
         §§goto(addr52);
      }
      
      public static function §-^§(param1:String) : §,k§
      {
         return §3X§[param1.toLowerCase()];
      }
      
      public static function §1^§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,k§ = null;
         if(!_loc6_)
         {
            if(param1 == §^!G§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
            else
            {
               addr44:
               §^!G§ = param1;
            }
            for each(_loc2_ in §3X§)
            {
               if(_loc5_ || §6!H§)
               {
                  if(§^!G§)
                  {
                     if(_loc5_ || param1)
                     {
                        addr85:
                        _loc2_.§]!Y§();
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     _loc2_.§`!@§();
                  }
                  continue;
               }
               §§goto(addr85);
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function §[!W§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,k§ = null;
         for each(_loc1_ in §3X§)
         {
            if(!_loc5_)
            {
               _loc1_.§[!W§();
            }
         }
      }
      
      public static function §?!'§() : Boolean
      {
         return §^!G§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §&!v§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:Class = null;
         if(_loc9_ || param3)
         {
            if(!§<"§)
            {
               if(!(_loc10_ && param3))
               {
                  return null;
               }
            }
         }
         var _loc6_:§,k§;
         if(!(_loc6_ = §-^§(param2)))
         {
            if(!_loc10_)
            {
               §§push(§]!+§);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && param1))
                     {
                        §§push(§[g§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                        if(!(_loc10_ && param1))
                        {
                           §§push(param1);
                           if(!(_loc10_ && §6!H§))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc10_)
                              {
                                 §§push(§§pop() + " because this channel does not exist ");
                                 if(_loc9_ || param2)
                                 {
                                 }
                                 §§goto(addr88);
                              }
                              §§push(param2);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        addr88:
                        §§pop().log(§§pop());
                        if(_loc9_ || §6!H§)
                        {
                           addr173:
                           return null;
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              §§push(§[g§);
                              §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                              if(!(_loc10_ && param2))
                              {
                                 §§push(param1);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc10_ && param3))
                                    {
                                       addr163:
                                       §§push(§§pop() + " this channel is full ");
                                       if(!_loc10_)
                                       {
                                          addr168:
                                          §§push(§§pop() + param2);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    addr175:
                                    loop4:
                                    while(true)
                                    {
                                       addr123:
                                       while(true)
                                       {
                                          addr124:
                                          while(true)
                                          {
                                             §§push(_loc6_.§]!W§());
                                             if(!(_loc10_ && param1))
                                             {
                                                while(!§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§]!+§);
                                                }
                                                addr176:
                                                var _loc7_:Sound;
                                                if((_loc7_ = §34§[param1]) == null)
                                                {
                                                   if(!(_loc8_ = §9!N§.§0!k§(param1,false) as Class))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§push(§[g§);
                                                         §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() + param1);
                                                         }
                                                         §§pop().log(§§pop());
                                                         if(_loc10_ && param3)
                                                         {
                                                            §§goto(addr222);
                                                         }
                                                      }
                                                      return null;
                                                   }
                                                   addr222:
                                                   _loc7_ = new _loc8_();
                                                   if(_loc9_ || §6!H§)
                                                   {
                                                      §34§[param1] = _loc7_;
                                                   }
                                                   §§goto(addr237);
                                                }
                                                addr237:
                                                return _loc6_.playSound(_loc7_,param3,param4,param5);
                                                addr133:
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop1;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr163);
                           }
                           §§push(null);
                           if(!(_loc10_ && param3))
                           {
                              return §§pop();
                           }
                        }
                        return §§pop();
                     }
                     if(false)
                     {
                        §§goto(addr123);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr173);
               }
               §§goto(addr133);
            }
            §§goto(addr175);
         }
         §§goto(addr124);
      }
      
      public static function §1x§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,k§ = §-^§(param1);
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc4_ && param1))
               {
                  _loc2_.§[!W§();
               }
            }
         }
      }
      
      public static function §;!M§(param1:String, param2:String = "Default_Channel") : void
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
               addr147:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(Math.random() * _loc3_);
                     addr115:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        continue loop0;
                     }
                  }
               }
               addr148:
               if(§]!+§)
               {
                  addr150:
                  §§push(§[g§);
                  §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                  if(_loc4_ || §6!H§)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               §§goto(addr135);
            }
         }
         do
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(_loc4_)
               {
                  §§push(1);
                  if(_loc4_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        addr106:
                        _loc3_ = §§pop();
                        loop6:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr110);
                              }
                              break;
                           }
                           §§push(param1);
                           if(_loc4_)
                           {
                              §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                           }
                           param1 = §§pop();
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop6;
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 continue;
                              }
                           }
                           addr135:
                           return;
                           §§goto(addr148);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr147);
               }
               §§goto(addr116);
            }
            §§goto(addr106);
         }
         while(_loc5_ && param1);
         
         if(_loc4_)
         {
            return;
         }
         §§goto(addr150);
      }
   }
}
