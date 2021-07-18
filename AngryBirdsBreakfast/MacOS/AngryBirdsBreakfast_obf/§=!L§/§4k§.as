package §=!L§
{
   import §#"&§.§4!W§;
   import §48§.§1k§;
   import §48§.§["#§;
   import §48§.§]l§;
   import flash.display.MovieClip;
   
   public class §4k§
   {
      
      protected static var §1!c§:Class;
      
      protected static var §@!m§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!c§ = §#!w§;
            do
            {
               §@!m§ = §9!?§;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected var §-G§:§1k§;
      
      protected var §^!8§:§4!W§;
      
      protected var §!B§:§!!u§;
      
      protected var §>w§:§1!T§;
      
      protected var §7!`§:int;
      
      protected var §7!'§:§7M§;
      
      public function §4k§(param1:§1k§, param2:§4!W§, param3:int, param4:§!!u§ = null, param5:§1!T§ = null, param6:§7M§ = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§-G§ = param1;
            while(true)
            {
               this.§^!8§ = param2;
               while(!(_loc7_ && param1))
               {
                  this.§7!`§ = param3;
                  loop3:
                  for(; _loc8_ || param3; if(!(_loc7_ && param3))
                  {
                     return;
                  })
                  {
                     §§push(this);
                     if(!_loc7_)
                     {
                        §§pop().§!B§ = param4 || new §8!I§();
                        while(_loc8_)
                        {
                           §§push(this);
                           if(!_loc7_)
                           {
                              §§pop().§>w§ = param5 || new §+!X§();
                              do
                              {
                                 §§push(this);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(param6);
                                 }
                                 §§pop().§7!'§ = new § !W§();
                              }
                              while(_loc7_);
                              
                              if(!_loc7_)
                              {
                                 continue loop3;
                              }
                              continue;
                           }
                           §§goto(addr73);
                        }
                        continue loop0;
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
      }
      
      public function get §7K§() : §!!u§
      {
         return this.§!B§;
      }
      
      public function set §7K§(param1:§!!u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!B§ = param1;
         }
      }
      
      public function get §2s§() : §1!T§
      {
         return this.§>w§;
      }
      
      public function set §2s§(param1:§1!T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>w§ = param1;
         }
      }
      
      public function get §'!E§() : §7M§
      {
         return this.§7!'§;
      }
      
      public function set §'!E§(param1:§7M§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!'§ = param1;
         }
      }
      
      protected function §&!?§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §["#§
      {
         return new TutorialPopup(this.§7!`§,param4,param1,param2,this.§'!E§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && this))
         {
            this.§^!8§.userProgress.saveTutorialSeen(param2);
            do
            {
               this.§-G§.openPopup(this.§&!?§(param1,param2,param3,param4),param5,param6,param7,param8);
            }
            while(_loc9_);
            
         }
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§!!u§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = true;
         if(_loc12_)
         {
            §§push(this.§^!8§.userProgress.hasTutorialBeenSeen(param1));
            if(!_loc11_)
            {
               if(§§pop())
               {
                  loop13:
                  while(true)
                  {
                     §§push(param5);
                     addr71:
                     loop12:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§push(false);
                              if(_loc11_ && this)
                              {
                                 continue loop12;
                              }
                              _loc9_ = §§pop();
                              while(_loc11_ && this)
                              {
                                 continue loop1;
                              }
                              addr61:
                              while(true)
                              {
                                 if(param7 != null)
                                 {
                                    if(_loc12_)
                                    {
                                       this.§!B§ = param7;
                                    }
                                    if(!_loc11_)
                                    {
                                       if(!_loc12_)
                                       {
                                          return;
                                       }
                                       addr72:
                                       if(!(_loc11_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue loop13;
                                    }
                                    §§goto(addr54);
                                 }
                                 break;
                                 §§goto(addr61);
                              }
                              addr54:
                              var _loc10_:MovieClip = this.§!B§.solve(param1);
                              if(_loc12_)
                              {
                                 §§push(param8);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc11_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§-G§.isPopupOpenById(TutorialPopup.ID));
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                addr143:
                                                while(true)
                                                {
                                                   addr164:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr165:
                                                      while(true)
                                                      {
                                                         param8 = §§pop();
                                                         addr166:
                                                         while(true)
                                                         {
                                                            if(_loc12_ || param3)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         return;
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§push(true);
                                                         if(_loc12_ || this)
                                                         {
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   else
                                                   {
                                                      §§push(param8);
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc11_ && param1)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc12_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc11_)
                                                            {
                                                               §§goto(addr164);
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         continue loop3;
                                                         addr152:
                                                      }
                                                   }
                                                   §§goto(addr164);
                                                }
                                                addr131:
                                             }
                                             §§goto(addr152);
                                          }
                                          addr195:
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr72);
                     }
                  }
                  addr70:
               }
               §§goto(addr22);
            }
            §§goto(addr71);
         }
         §§goto(addr70);
      }
      
      public function §-z§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§!!u§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc10_);
            if(!(_loc19_ && param2))
            {
               if(§§pop() >= _loc9_.length)
               {
                  loop1:
                  while(true)
                  {
                     §§push(int(param1.length - 1));
                     addr194:
                     loop2:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc10_);
                              if(_loc20_ || param3)
                              {
                                 if(§§pop() < 0)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc19_)
                                       {
                                          if(param1.length == 0)
                                          {
                                             if(!_loc19_)
                                             {
                                                if(!_loc19_)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             else
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   addr34:
                                                   while(param6 != null)
                                                   {
                                                      if(_loc20_ || param3)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr69:
                                                      if(_loc20_)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            _loc9_.splice(_loc10_,1);
                                                         }
                                                         else
                                                         {
                                                            addr177:
                                                         }
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop4;
                                                         break loop5;
                                                      }
                                                      addr131:
                                                      if(!_loc20_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc10_);
                                                      if(!(_loc19_ && this))
                                                      {
                                                         if(!(_loc20_ || param3))
                                                         {
                                                            addr123:
                                                            break loop4;
                                                         }
                                                         addr122:
                                                         _loc10_ = §§pop() - 1;
                                                         continue loop4;
                                                      }
                                                      §§goto(addr122);
                                                   }
                                                   §§push(param2);
                                                   if(_loc20_)
                                                   {
                                                      addr209:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   var _loc14_:* = false;
                                                   §§push(param4);
                                                   if(_loc20_ || param2)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   var _loc15_:* = §§pop();
                                                   var _loc16_:int = 0;
                                                   var _loc17_:int = 0;
                                                   §§push(§]l§.§%!#§);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc18_:* = §§pop();
                                                   if(_loc20_)
                                                   {
                                                      addr353:
                                                      §§push(!param7);
                                                      if(!param7)
                                                      {
                                                         addr356:
                                                         §§pop();
                                                         addr357:
                                                         §§push(this.§-G§.isPopupOpenById(TutorialPopup.ID));
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc20_)
                                                            {
                                                               addr300:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc20_ || param1)
                                                                  {
                                                                     §§push(true);
                                                                     if(!_loc19_)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           addr346:
                                                                           param7 = §§pop();
                                                                           §§goto(addr345);
                                                                        }
                                                                        §§goto(addr356);
                                                                     }
                                                                     addr323:
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           addr338:
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              addr345:
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr349:
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 addr270:
                                                                                 §§push(int(param1.length - 1));
                                                                                 if(_loc20_ || param3)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    addr524:
                                                                                    §§push(_loc10_);
                                                                                    addr283:
                                                                                 }
                                                                                 if(§§pop() >= 0)
                                                                                 {
                                                                                    _loc12_ = param1[_loc10_];
                                                                                    if(_loc20_ || param1)
                                                                                    {
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          if(_loc11_ = this.§!B§.solve(_loc12_))
                                                                                          {
                                                                                             if(!(_loc19_ && this))
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(§§pop() != 0)
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(param8);
                                                                                                         if(_loc20_ || param1)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr391:
                                                                                                                  §§push(false);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        addr522:
                                                                                                                        _loc15_ = false;
                                                                                                                     }
                                                                                                                     addr519:
                                                                                                                     _loc18_ = int(§]l§.DEFAULT);
                                                                                                                     addr484:
                                                                                                                     addr483:
                                                                                                                     §§push(_loc16_);
                                                                                                                     §§push(param1.length - 1);
                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc17_);
                                                                                                                     }
                                                                                                                     if(§§pop() == §§pop())
                                                                                                                     {
                                                                                                                        addr497:
                                                                                                                        §§push(param3);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr500:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           _loc14_ = §§pop();
                                                                                                                           addr504:
                                                                                                                        }
                                                                                                                        §§goto(addr522);
                                                                                                                     }
                                                                                                                     this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
                                                                                                                     addr472:
                                                                                                                     addr508:
                                                                                                                     addr523:
                                                                                                                     addr520:
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        if(_loc20_ || param3)
                                                                                                                        {
                                                                                                                           _loc16_++;
                                                                                                                           addr456:
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr434:
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                              {
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                    {
                                                                                                                                       if(!(_loc19_ && this))
                                                                                                                                       {
                                                                                                                                          addr429:
                                                                                                                                          _loc10_ = §§pop() - 1;
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr434);
                                                                                                                                             }
                                                                                                                                             §§goto(addr524);
                                                                                                                                          }
                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc20_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr434);
                                                                                                                                                }
                                                                                                                                                §§goto(addr497);
                                                                                                                                             }
                                                                                                                                             §§goto(addr472);
                                                                                                                                          }
                                                                                                                                          §§goto(addr456);
                                                                                                                                       }
                                                                                                                                       §§goto(addr508);
                                                                                                                                    }
                                                                                                                                    §§goto(addr519);
                                                                                                                                 }
                                                                                                                                 §§goto(addr484);
                                                                                                                              }
                                                                                                                              §§goto(addr429);
                                                                                                                              addr458:
                                                                                                                           }
                                                                                                                           §§goto(addr523);
                                                                                                                        }
                                                                                                                        §§goto(addr520);
                                                                                                                     }
                                                                                                                     §§goto(addr504);
                                                                                                                  }
                                                                                                                  §§goto(addr500);
                                                                                                               }
                                                                                                               §§goto(addr497);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                   §§goto(addr483);
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                          }
                                                                                          _loc17_++;
                                                                                          §§goto(addr429);
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                 }
                                                                                 addr351:
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr353);
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§push(param7);
                                                               if(_loc20_ || param2)
                                                               {
                                                                  §§goto(addr323);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr351);
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr34);
                                       }
                                       break;
                                       if(!(_loc20_ || param3))
                                       {
                                          continue;
                                       }
                                       if(_loc20_ || param3)
                                       {
                                          this.§!B§ = param6;
                                          §§goto(addr69);
                                       }
                                       else
                                       {
                                          addr160:
                                          if(!_loc20_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc20_)
                                          {
                                             _loc10_++;
                                             continue loop0;
                                             addr205:
                                          }
                                          §§push(param5);
                                          if(!(_loc19_ && this))
                                          {
                                             addr172:
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   param1.splice(_loc10_,1);
                                                   §§goto(addr177);
                                                }
                                                addr173:
                                             }
                                             else
                                             {
                                                _loc9_[_loc10_] = false;
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    while(_loc19_)
                                    {
                                       §§goto(addr173);
                                       §§goto(addr177);
                                    }
                                    §§goto(addr105);
                                 }
                                 else
                                 {
                                    §§push(this.§^!8§.userProgress.hasTutorialBeenSeen(param1[_loc10_]));
                                    if(_loc20_ || param3)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr160);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr123);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               else
               {
                  _loc9_[_loc10_] = true;
               }
               §§goto(addr205);
            }
            §§goto(addr194);
         }
      }
      
      public function §7k§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-G§.closePopup(this.§7!`§,param1,true,false);
         }
      }
   }
}
