package §^"!§
{
   import §1![§.§`w§;
   import §1!i§.§?!a§;
   import §1!i§.§^Q§;
   import flash.display.MovieClip;
   
   public class §+!7§
   {
      
      protected static var §?%§:Class;
      
      protected static var §6N§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?%§ = §<M§;
            do
            {
               §6N§ = §6""§;
            }
            while(!_loc1_);
            
         }
      }
      
      protected var §#!c§:§^Q§;
      
      protected var §6!4§:§`w§;
      
      protected var §6@§:§>!n§;
      
      protected var §,!x§:§;w§;
      
      protected var §#W§:int;
      
      protected var §=n§:§4!I§;
      
      public function §+!7§(param1:§^Q§, param2:§`w§, param3:int, param4:§>!n§ = null, param5:§;w§ = null, param6:§4!I§ = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§#!c§ = param1;
               loop1:
               while(true)
               {
                  this.§6!4§ = param2;
                  while(true)
                  {
                     this.§#W§ = param3;
                     loop3:
                     while(!(_loc8_ && this))
                     {
                        §§push(this);
                        if(_loc7_ || this)
                        {
                           §§pop().§6@§ = param4 || new §6H§();
                           loop4:
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(this);
                                 if(_loc7_ || param3)
                                 {
                                    §§pop().§,!x§ = param5 || new §=r§();
                                    while(!_loc8_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this);
                                       if(_loc7_)
                                       {
                                          §§pop().§=n§ = param6 || new § "6§();
                                          if(!_loc8_)
                                          {
                                             return;
                                          }
                                          continue;
                                       }
                                       §§goto(addr32);
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr53);
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function get §7"$§() : §>!n§
      {
         return this.§6@§;
      }
      
      public function set §7"$§(param1:§>!n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6@§ = param1;
         }
      }
      
      public function get §+!k§() : §;w§
      {
         return this.§,!x§;
      }
      
      public function set §+!k§(param1:§;w§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!x§ = param1;
         }
      }
      
      public function get §6!N§() : §4!I§
      {
         return this.§=n§;
      }
      
      public function set §6!N§(param1:§4!I§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=n§ = param1;
         }
      }
      
      protected function §1!Q§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §?!a§
      {
         return new TutorialPopup(this.§#W§,param4,param1,param2,this.§6!N§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param3)
         {
            this.§6!4§.userProgress.saveTutorialSeen(param2);
            do
            {
               this.§#!c§.openPopup(this.§1!Q§(param1,param2,param3,param4),param5,param6,param7,param8);
            }
            while(!_loc9_);
            
         }
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§>!n§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc11_ || param3)
         {
            §§push(this.§6!4§.userProgress.hasTutorialBeenSeen(param1));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  for(; param7 != null; while(true)
                  {
                     continue loop5;
                     §§goto(addr42);
                  })
                  {
                     if(!(_loc12_ && param3))
                     {
                        if(_loc11_)
                        {
                           this.§6@§ = param7;
                           addr42:
                           if(!(_loc11_ || param3))
                           {
                              continue;
                           }
                           if(_loc11_ || param2)
                           {
                              if(!(_loc12_ && this))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr86);
                           }
                           while(true)
                           {
                              §§push(false);
                              if(_loc11_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop0;
                           addr65:
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(param5);
                           }
                           addr84:
                        }
                        while(§§pop())
                        {
                           §§goto(addr65);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr42);
                  }
                  var _loc10_:MovieClip = this.§6@§.solve(param1);
                  if(!(_loc12_ && param1))
                  {
                     addr207:
                     §§push(!param8);
                     if(!param8)
                     {
                        addr209:
                        §§pop();
                        addr210:
                        §§push(this.§#!c§.isPopupOpenById(TutorialPopup.ID));
                        if(!_loc12_)
                        {
                           if(!(_loc12_ && this))
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc12_)
                              {
                                 if(_loc11_)
                                 {
                                    addr166:
                                    if(§§pop())
                                    {
                                       addr168:
                                       §§push(true);
                                       if(!(_loc12_ && param3))
                                       {
                                          if(_loc11_ || param3)
                                          {
                                             addr191:
                                             param8 = §§pop();
                                             addr202:
                                             if(!_loc12_)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      if(!(_loc12_ && param3))
                                                      {
                                                         addr128:
                                                         this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
                                                         §§goto(addr138);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr138);
                                                }
                                                addr138:
                                                if(!(_loc11_ || param2))
                                                {
                                                   §§goto(addr168);
                                                }
                                                return;
                                             }
                                             §§goto(addr210);
                                             addr190:
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§push(param8);
                                    if(!_loc12_)
                                    {
                                       addr187:
                                       §§push(Boolean(§§pop()));
                                       if(_loc11_)
                                       {
                                          §§goto(addr202);
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr128);
               }
               §§goto(addr84);
            }
         }
         addr86:
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§>!n§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc10_);
            loop1:
            while(true)
            {
               if(§§pop() >= _loc9_.length)
               {
                  loop2:
                  while(true)
                  {
                     §§push(int(param1.length - 1));
                     loop3:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc10_);
                              if(!(_loc20_ && this))
                              {
                                 if(!(_loc20_ && param1))
                                 {
                                    if(_loc20_)
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop() < 0)
                                    {
                                       if(_loc19_ || param3)
                                       {
                                          if(_loc19_)
                                          {
                                             if(param1.length != 0)
                                             {
                                                while(param6 != null)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         if(_loc19_ || param2)
                                                         {
                                                            if(_loc19_ || param3)
                                                            {
                                                               this.§6@§ = param6;
                                                               addr58:
                                                               if(_loc19_ || param3)
                                                               {
                                                                  if(!(_loc19_ || param3))
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               addr120:
                                                               loop8:
                                                               while(_loc20_ && param2)
                                                               {
                                                                  loop9:
                                                                  while(_loc20_ && param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param5);
                                                                        if(!(_loc20_ && param3))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc9_[_loc10_] = false;
                                                                              continue loop8;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              param1.splice(_loc10_,1);
                                                                              addr181:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc19_ || param1)
                                                                                 {
                                                                                    _loc9_.splice(_loc10_,1);
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr214:
                                                                           var _loc13_:* = §§pop();
                                                                           var _loc14_:* = false;
                                                                           §§push(param4);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           var _loc16_:int = 0;
                                                                           var _loc17_:int = 0;
                                                                           var _loc18_:int = 0;
                                                                           if(!_loc20_)
                                                                           {
                                                                              addr338:
                                                                              §§push(!param7);
                                                                              if(!param7)
                                                                              {
                                                                                 addr341:
                                                                                 §§pop();
                                                                                 addr342:
                                                                                 §§push(this.§#!c§.isPopupOpenById(TutorialPopup.ID));
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!(_loc20_ && param1))
                                                                                    {
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr287:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(true);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr318:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc19_ || param3)
                                                                                                   {
                                                                                                      param7 = §§pop();
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         addr329:
                                                                                                         if(_loc20_ && param1)
                                                                                                         {
                                                                                                            §§goto(addr342);
                                                                                                         }
                                                                                                         addr260:
                                                                                                         §§push(int(param1.length - 1));
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            _loc10_ = §§pop();
                                                                                                            addr492:
                                                                                                            §§push(_loc10_);
                                                                                                            addr268:
                                                                                                         }
                                                                                                         if(§§pop() >= 0)
                                                                                                         {
                                                                                                            _loc12_ = param1[_loc10_];
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  addr258:
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr260);
                                                                                                                  }
                                                                                                                  if(_loc11_ = this.§6@§.solve(_loc12_))
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           if(§§pop() != 0)
                                                                                                                           {
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(param8);
                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(false);
                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                          {
                                                                                                                                             addr384:
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                             {
                                                                                                                                                addr490:
                                                                                                                                                _loc15_ = false;
                                                                                                                                                addr456:
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                §§push(param1.length - 1);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc17_);
                                                                                                                                                }
                                                                                                                                                addr491:
                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                {
                                                                                                                                                   addr464:
                                                                                                                                                   §§push(param3);
                                                                                                                                                   if(!(_loc20_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr472:
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                      addr476:
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         addr440:
                                                                                                                                                         this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
                                                                                                                                                         _loc16_++;
                                                                                                                                                         addr437:
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr393:
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr456);
                                                                                                                                                            }
                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                            addr422:
                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr420:
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr422);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr492);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr437);
                                                                                                                                                            }
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr393);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr464);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr476);
                                                                                                                                                         }
                                                                                                                                                         addr453:
                                                                                                                                                         §§goto(addr453);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr491);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr490);
                                                                                                                                                }
                                                                                                                                                §§goto(addr440);
                                                                                                                                                addr489:
                                                                                                                                             }
                                                                                                                                             §§goto(addr420);
                                                                                                                                          }
                                                                                                                                          §§goto(addr472);
                                                                                                                                       }
                                                                                                                                       §§goto(addr440);
                                                                                                                                    }
                                                                                                                                    §§goto(addr489);
                                                                                                                                 }
                                                                                                                                 §§goto(addr384);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr490);
                                                                                                                     }
                                                                                                                     §§goto(addr464);
                                                                                                                  }
                                                                                                                  _loc17_++;
                                                                                                                  §§goto(addr393);
                                                                                                               }
                                                                                                               §§goto(addr268);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr341);
                                                                                                   addr294:
                                                                                                }
                                                                                                addr303:
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc20_ && param1)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr338);
                                                                                             }
                                                                                             §§goto(addr329);
                                                                                          }
                                                                                          §§push(param7);
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(_loc10_ - 1);
                                                               if(!_loc20_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  addr126:
                                                                  continue loop5;
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr209:
                                                            _loc10_++;
                                                            continue loop0;
                                                         }
                                                         addr107:
                                                         if(!_loc20_)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      else if(!_loc20_)
                                                      {
                                                         if(!(_loc20_ && param2))
                                                         {
                                                            continue;
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   §§goto(addr58);
                                                }
                                                §§push(param2);
                                                if(_loc19_)
                                                {
                                                   §§goto(addr214);
                                                   §§push(Boolean(§§pop()));
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr107);
                                    }
                                    else
                                    {
                                       §§push(this.§6!4§.userProgress.hasTutorialBeenSeen(param1[_loc10_]));
                                       if(!_loc20_)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr168);
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                    §§goto(addr214);
                                 }
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc9_[_loc10_] = true;
               }
               §§goto(addr209);
            }
         }
      }
      
      public function §=7§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#!c§.closePopup(this.§#W§,param1,true,false);
         }
      }
   }
}
