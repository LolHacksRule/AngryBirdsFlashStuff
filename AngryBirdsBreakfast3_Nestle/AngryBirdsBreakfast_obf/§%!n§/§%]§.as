package §%!n§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §4!i§.§@t§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §%]§ extends EventDispatcher
   {
      
      protected static const §^u§:Number = 1000;
      
      protected static const §7G§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^u§ = 1000;
            do
            {
               §7G§ = 60;
            }
            while(_loc2_);
            
         }
      }
      
      protected var §'F§:Dictionary;
      
      protected var §%$§:Dictionary;
      
      protected var §?a§:Dictionary;
      
      protected var §;@§:Dictionary;
      
      protected var §8"$§:Boolean = false;
      
      protected var §+q§:String;
      
      protected var §&c§:String;
      
      protected var §4a§:§0![§;
      
      protected var §["7§:Timer;
      
      public function §%]§(param1:String, param2:§0![§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&c§ = param1;
               while(true)
               {
                  this.§4a§ = param2;
                  addr111:
                  while(true)
                  {
                     this.§'F§ = new Dictionary();
                     continue loop0;
                  }
                  addr35:
                  if(!(_loc3_ && param2))
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §9Z§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§,!w§));
         }
         do
         {
            this.§+q§ = null;
         }
         while(!_loc2_);
         
      }
      
      public function §@"3§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§+q§ != param1)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(this.§["7§));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 addr110:
                                 §§push(true);
                                 break;
                              }
                              while(true)
                              {
                                 §§push(Boolean(this.§["7§.running));
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       do
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr61:
                                                §§push(false);
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || param1)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop3;
                                                   }
                                                   continue loop2;
                                                }
                                                addr61:
                                             }
                                             else
                                             {
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc2_ && _loc3_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             §§goto(addr61);
                                          }
                                          §§push(true);
                                       }
                                       while(!_loc3_);
                                       
                                       return §§pop();
                                       addr41:
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr61);
                              }
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr41);
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr105);
      }
      
      public function §4"7§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§7G§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.§["7§.currentCount);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() / §7G§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() % §7G§);
         }
         var _loc3_:int = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc3_ < 10)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push("");
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop() + ":0");
                           if(!_loc5_)
                           {
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 addr121:
                                 §§push(_loc2_);
                                 if(_loc5_ && _loc3_)
                                 {
                                 }
                                 addr158:
                                 return §§pop() + §§pop();
                                 addr157:
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || this)
                              {
                                 addr137:
                                 §§push(§§pop() + ":");
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§goto(addr157);
                                    §§push(_loc3_);
                                 }
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr121);
                  }
               }
               else
               {
                  addr113:
                  §§push("");
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr121);
                  }
               }
               §§goto(addr121);
            }
         }
         §§goto(addr113);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@t§ = null;
         if(!_loc3_)
         {
            if(this.§'F§[param1])
            {
               addr37:
               _loc2_ = this.§'F§[param1];
               if(_loc4_ || _loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §+!]§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@t§ = null;
         if(_loc4_ || param1)
         {
            if(this.§%$§[param1])
            {
               _loc2_ = this.§%$§[param1];
               addr42:
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §return§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr80:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr81:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr65:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(_loc3_)
                              {
                                 break loop6;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              addr55:
                              while(_loc2_)
                              {
                                 continue loop6;
                              }
                           }
                        }
                        return §§pop();
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr65);
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§?a§[param1] = param2;
         }
      }
      
      public function §!l§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§?a§[param1] = param2;
         }
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@t§ = new §@t§(param2);
         if(!_loc4_)
         {
            this.§'F§[param1] = _loc3_;
         }
      }
      
      public function §&!1§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§@t§ = new §@t§(param2);
         if(!(_loc5_ && param1))
         {
            this.§%$§[param1] = _loc3_;
         }
      }
      
      public function §1]§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§4a§);
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(param2);
            if(_loc3_ || param2)
            {
               if(§§pop() != -1)
               {
                  addr46:
                  §§push(param2);
                  if(_loc3_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc3_)
                     {
                        addr68:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!_loc4_)
                  {
                     §§goto(addr68);
                  }
               }
               return §§pop().getNumStarsForLevel(§§pop(),§§pop());
            }
            §§goto(addr68);
         }
         §§goto(addr46);
      }
      
      public function §;l§(param1:§7C§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§,!@§())
         {
            if(_loc7_ || this)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc2_)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §1!L§(param1:§7C§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§,!@§())
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.§1]§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §=O§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§7C§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§4a§.getEpisodeCount())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = this.§4a§.getEpisode(_loc2_);
               if(!_loc5_)
               {
                  §§push(this.§1!L§(_loc3_));
                  if(_loc6_ || _loc1_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop2:
                     while(true)
                     {
                        addr58:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc6_ || _loc1_)
                           {
                              continue loop1;
                           }
                           addr77:
                           _loc1_ = §§pop();
                           loop4:
                           while(!_loc5_)
                           {
                              while(true)
                              {
                                 _loc2_++;
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr80);
            }
            break;
         }
         return §§pop();
      }
      
      public function §"!N§(param1:§7C§) : int
      {
         return param1.§,!@§().length * 3;
      }
      
      public function §#D§(param1:§7C§) : int
      {
         return param1.§,!@§().length;
      }
      
      public function §+w§(param1:§7C§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,!@§())
         {
            if(_loc7_)
            {
               if(this.§+!]§(_loc3_) == 100)
               {
                  if(_loc7_ || param1)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §;K§() : Dictionary
      {
         return this.§?a§;
      }
      
      public function get §5&§() : Dictionary
      {
         return this.§?a§;
      }
      
      public function get §"W§() : Boolean
      {
         return this.§8"$§;
      }
      
      public function set §"W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8"$§ = param1;
         }
      }
      
      public function get §&^§() : Timer
      {
         return this.§["7§;
      }
      
      public function get §1e§() : String
      {
         return this.§+q§;
      }
      
      public function §2"+§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc6_)
                     {
                        if(§§pop() != §0![§.§2!p§)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.getScoreForLevel(param1));
                              loop3:
                              while(true)
                              {
                                 §§push(0);
                                 loop4:
                                 while(§§pop() <= §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§+!]§(param1));
                                       if(!_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(0);
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             break loop2;
                                          }
                                          if(!_loc6_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   continue loop1;
                                                }
                                                continue;
                                             }
                                             if(_loc5_ && _loc3_)
                                             {
                                                §§push(false);
                                             }
                                             else
                                             {
                                                addr124:
                                             }
                                             continue loop2;
                                             break;
                                          }
                                          if(_loc5_ && _loc3_)
                                          {
                                             break loop4;
                                          }
                                          if(false)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       var _loc3_:§7C§ = this.§4a§.getEpisodeForLevel(param1);
                                       §§push(_loc3_.§-!H§(param1));
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var _loc4_:*;
                                       §§push(_loc4_ = §§pop());
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(true);
                                                   if(!_loc5_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr284:
                                                   addr283:
                                                   addr282:
                                                   if(_loc4_ > 0)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         addr307:
                                                         _loc2_ = _loc3_.§`z§(_loc4_ - 1);
                                                         addr306:
                                                      }
                                                      addr308:
                                                   }
                                                   §§push(_loc2_);
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               addr268:
                                                               §§push(this.getScoreForLevel(_loc2_));
                                                               if(!_loc5_)
                                                               {
                                                                  addr271:
                                                                  if(§§pop() > 0)
                                                                  {
                                                                     §§goto(addr272);
                                                                  }
                                                                  addr188:
                                                                  §§push(this.§+!]§(_loc2_));
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr199:
                                                                     §§push(0);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc6_ || _loc3_))
                                                                                    {
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    §§goto(addr237);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                              §§goto(addr181);
                                                                           }
                                                                           addr181:
                                                                           §§push(false);
                                                                           if(_loc6_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           addr237:
                                                                           §§push(true);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§goto(addr244);
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            addr272:
                                                            if(!(_loc6_ || this))
                                                            {
                                                               §§goto(addr308);
                                                            }
                                                            return true;
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr307);
                                                }
                                                addr244:
                                                return §§pop();
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr199);
                                    }
                                    return §§pop();
                                 }
                                 addr74:
                                 §§push(true);
                                 if(_loc5_ && _loc3_)
                                 {
                                    §§goto(addr112);
                                 }
                                 if(!(_loc5_ && this))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr125);
                              }
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(true);
                           if(!(_loc5_ && _loc2_))
                           {
                              return §§pop();
                           }
                           §§goto(addr74);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  addr112:
                  return §§pop();
                  §§push(true);
               }
               §§goto(addr124);
            }
         }
         §§goto(addr47);
      }
      
      public function §if§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
   }
}
