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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!c§ = §#!w§;
            do
            {
               §@!m§ = §9!?§;
            }
            while(_loc2_);
            
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
         if(!(_loc7_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§-G§ = param1;
               loop1:
               while(true)
               {
                  this.§^!8§ = param2;
                  while(true)
                  {
                     this.§7!`§ = param3;
                     continue loop1;
                     addr56:
                     if(!(_loc7_ && param3))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            if(!_loc7_)
            {
               §§pop().§!B§ = param4 || new §8!I§();
               §§goto(addr108);
            }
            §§goto(addr104);
         }
         §§goto(addr75);
      }
      
      public function get §7K§() : §!!u§
      {
         return this.§!B§;
      }
      
      public function set §7K§(param1:§!!u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
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
         if(_loc10_)
         {
            this.§^!8§.userProgress.saveTutorialSeen(param2);
         }
         do
         {
            this.§-G§.openPopup(this.§&!?§(param1,param2,param3,param4),param5,param6,param7,param8);
         }
         while(!(_loc10_ || param1));
         
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§!!u§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = true;
         if(_loc12_ || param1)
         {
            §§push(this.§^!8§.userProgress.hasTutorialBeenSeen(param1));
            if(_loc12_ || param3)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param5);
                     addr81:
                     loop14:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc11_)
                              {
                                 break;
                              }
                              continue loop14;
                           }
                           _loc9_ = §§pop();
                           loop15:
                           while(true)
                           {
                              addr27:
                              while(param7 != null)
                              {
                                 if(_loc12_ || this)
                                 {
                                    if(!(_loc12_ || param2))
                                    {
                                       continue loop15;
                                    }
                                    if(_loc12_)
                                    {
                                       if(_loc11_)
                                       {
                                          return;
                                       }
                                       addr82:
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    addr59:
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr61);
                              }
                              var _loc10_:MovieClip = this.§!B§.solve(param1);
                              if(_loc12_)
                              {
                                 §§push(param8);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc11_)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§-G§.isPopupOpenById(TutorialPopup.ID));
                                                if(_loc12_ || this)
                                                {
                                                   addr152:
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(param8);
                                                            if(!_loc11_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc12_ || this)
                                                                  {
                                                                  }
                                                                  addr178:
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           param8 = §§pop();
                                                                           loop7:
                                                                           while(_loc10_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    if(_loc11_ && param1)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    addr162:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue;
                                                               addr169:
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      addr160:
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr178);
                                             }
                                          }
                                          addr200:
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              §§goto(addr126);
                           }
                           addr61:
                           addr66:
                        }
                        §§goto(addr82);
                     }
                  }
               }
               §§goto(addr27);
            }
            §§goto(addr81);
         }
         §§goto(addr66);
      }
      
      public function §-z§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§!!u§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:* = 0;
         while(true)
         {
            §§push(_loc10_);
            if(!_loc19_)
            {
               if(§§pop() >= _loc9_.length)
               {
                  loop1:
                  while(true)
                  {
                     if(!(_loc19_ && this))
                     {
                        §§push(int(param1.length - 1));
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
                                 if(_loc20_)
                                 {
                                    if(!(_loc19_ && param3))
                                    {
                                       if(§§pop() < 0)
                                       {
                                          if(!_loc19_)
                                          {
                                             if(_loc20_)
                                             {
                                                if(param1.length != 0)
                                                {
                                                   loop5:
                                                   while(param6 != null)
                                                   {
                                                      if(!_loc19_)
                                                      {
                                                         if(!_loc19_)
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               this.§!B§ = param6;
                                                               addr47:
                                                               if(_loc19_ && this)
                                                               {
                                                                  break loop4;
                                                               }
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     if(!(_loc20_ || param1))
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc9_.splice(_loc10_,1);
                                                               addr165:
                                                            }
                                                            if(_loc19_)
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(_loc20_)
                                                            {
                                                               if(_loc20_ || param2)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               addr152:
                                                               §§push(param5);
                                                               if(_loc20_ || param2)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc9_[_loc10_] = false;
                                                                     break;
                                                                  }
                                                                  addr161:
                                                                  param1.splice(_loc10_,1);
                                                                  §§goto(addr165);
                                                               }
                                                               else
                                                               {
                                                                  addr200:
                                                                  var _loc13_:* = §§pop();
                                                                  var _loc14_:* = false;
                                                                  §§push(param4);
                                                                  if(_loc20_ || param1)
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
                                                                  if(!_loc19_)
                                                                  {
                                                                     addr333:
                                                                     §§push(!param7);
                                                                     if(!param7)
                                                                     {
                                                                        addr336:
                                                                        §§pop();
                                                                        addr337:
                                                                        §§push(this.§-G§.isPopupOpenById(TutorialPopup.ID));
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc19_)
                                                                           {
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 addr296:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr298:
                                                                                    §§push(true);
                                                                                    if(_loc20_ || param2)
                                                                                    {
                                                                                       addr328:
                                                                                       param7 = §§pop();
                                                                                       addr329:
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr255:
                                                                                          §§push(int(param1.length - 1));
                                                                                          if(!(_loc19_ && this))
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             addr268:
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   §§goto(addr494);
                                                                                                }
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                             §§goto(addr329);
                                                                                          }
                                                                                          addr494:
                                                                                          if(_loc10_ >= 0)
                                                                                          {
                                                                                             _loc12_ = param1[_loc10_];
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr255);
                                                                                                   }
                                                                                                   if(_loc11_ = this.§!B§.solve(_loc12_))
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            if(§§pop() != 0)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(param8);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr366:
                                                                                                                           §§push(false);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 addr492:
                                                                                                                                 _loc15_ = false;
                                                                                                                                 _loc18_ = int(§]l§.DEFAULT);
                                                                                                                                 addr493:
                                                                                                                                 addr491:
                                                                                                                              }
                                                                                                                              addr454:
                                                                                                                              addr453:
                                                                                                                              §§push(_loc16_);
                                                                                                                              §§push(param1.length - 1);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc17_);
                                                                                                                              }
                                                                                                                              if(§§pop() == §§pop())
                                                                                                                              {
                                                                                                                                 addr462:
                                                                                                                                 §§push(param3);
                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                 {
                                                                                                                                    addr470:
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                 }
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                    addr474:
                                                                                                                                 }
                                                                                                                                 §§goto(addr492);
                                                                                                                              }
                                                                                                                              this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 _loc16_++;
                                                                                                                                 addr419:
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc20_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          addr373:
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             addr377:
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                          }
                                                                                                                                          addr411:
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                {
                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                   if(!(_loc19_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_ || param3)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr411);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr494);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr493);
                                                                                                                                                   }
                                                                                                                                                   addr414:
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr373);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr419);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr492);
                                                                                                                                          }
                                                                                                                                          §§goto(addr454);
                                                                                                                                       }
                                                                                                                                       §§goto(addr462);
                                                                                                                                    }
                                                                                                                                    §§goto(addr474);
                                                                                                                                 }
                                                                                                                                 §§goto(addr454);
                                                                                                                              }
                                                                                                                              addr490:
                                                                                                                              §§goto(addr490);
                                                                                                                           }
                                                                                                                           §§goto(addr470);
                                                                                                                        }
                                                                                                                        §§goto(addr492);
                                                                                                                     }
                                                                                                                     §§goto(addr491);
                                                                                                                  }
                                                                                                                  §§goto(addr492);
                                                                                                               }
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   _loc17_++;
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§goto(addr268);
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                          addr331:
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                       addr327:
                                                                                       addr306:
                                                                                    }
                                                                                    addr315:
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc20_ || this)
                                                                                          {
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                                 §§push(param7);
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    §§goto(addr315);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                        }
                                                                        §§goto(addr306);
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                            }
                                                            if(_loc19_)
                                                            {
                                                               §§goto(addr161);
                                                            }
                                                            addr99:
                                                         }
                                                         addr109:
                                                         §§push(_loc10_ - 1);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            _loc10_ = §§pop();
                                                            addr120:
                                                            continue loop4;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                   §§push(param2);
                                                   if(!_loc19_)
                                                   {
                                                      §§goto(addr200);
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   §§goto(addr200);
                                                }
                                                break;
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr99);
                                       }
                                       else
                                       {
                                          §§push(this.§^!8§.userProgress.hasTutorialBeenSeen(param1[_loc10_]));
                                          if(_loc20_)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr152);
                                             }
                                             §§goto(addr109);
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              return;
                           }
                        }
                        addr184:
                     }
                  }
                  continue;
               }
               _loc9_[_loc10_] = true;
               _loc10_++;
               continue;
            }
            §§goto(addr184);
         }
      }
      
      public function §7k§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-G§.closePopup(this.§7!`§,param1,true,false);
         }
      }
   }
}
