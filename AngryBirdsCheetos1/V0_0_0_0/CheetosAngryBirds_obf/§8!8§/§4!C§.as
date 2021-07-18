package §8!8§
{
   import §+?§.§,!N§;
   import §0v§.§-'§;
   import §@,§.§4h§;
   import §@R§.§']§;
   import §@R§.§]^§;
   import flash.display.MovieClip;
   
   public class §4!C§ extends §']§
   {
       
      
      public var §;!;§:§,!N§;
      
      public var §@k§:Array;
      
      public var §@!8§:Boolean = false;
      
      public function §4!C§(param1:XML, param2:§4!C§, param3:§,!N§, param4:MovieClip = null)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(!_loc15_)
         {
            this.mName = param1.@name;
            if(_loc16_)
            {
               if(param3)
               {
                  if(!(_loc15_ && param3))
                  {
                     addr58:
                     this.§;!;§ = param3;
                     if(!(_loc15_ && this))
                     {
                        addr68:
                        if(!param4)
                        {
                           if(_loc16_)
                           {
                              addr72:
                              _loc12_ = §-'§.§]`§(mName);
                              if(_loc16_)
                              {
                                 mClip = new _loc12_();
                                 if(!(_loc15_ && param1))
                                 {
                                    this.§;!;§.mMovieClip.addChild(mClip);
                                    addr95:
                                    super(param1,param2,param4);
                                    if(!_loc15_)
                                    {
                                       this.§@k§ = new Array();
                                    }
                                 }
                              }
                              §§goto(addr95);
                           }
                           var _loc13_:* = 0;
                           var _loc14_:* = param1.Container;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc14_,_loc13_));
                              if(_loc16_)
                              {
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                    if(!(_loc15_ && param3))
                                    {
                                       this.§@k§[this.§@k§.length] = new §4!C§(_loc5_,this,null);
                                    }
                                    continue;
                                 }
                                 if(_loc16_ || this)
                                 {
                                    if(!(_loc15_ && param1))
                                    {
                                       if(_loc16_)
                                       {
                                          §§push(0);
                                          if(!(_loc15_ && param1))
                                          {
                                             _loc13_ = §§pop();
                                             if(_loc16_ || this)
                                             {
                                                _loc14_ = param1.Repeater;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(!(_loc15_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(_loc16_)
                                                         {
                                                            this.§@k§[this.§@k§.length] = new §<!C§(_loc6_,this,null);
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               addr221:
                                                               §§push(0);
                                                               if(_loc16_)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     addr232:
                                                                     _loc14_ = param1.Button;
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        if(_loc16_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 this.§@k§[this.§@k§.length] = new §+!M§(_loc7_,this);
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(!(_loc15_ && param2))
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          _loc14_ = param1.TextField;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                break loop13;
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          addr316:
                                                                                       }
                                                                                       addr396:
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             addr407:
                                                                                             _loc13_ = §§pop();
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr410:
                                                                                                _loc14_ = param1.Popup;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            this.§@k§[this.§@k§.length] = new §#_§(_loc10_,this);
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         addr444:
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            addr447:
                                                                                                            if(_loc16_ || param3)
                                                                                                            {
                                                                                                               addr456:
                                                                                                               _loc13_ = 0;
                                                                                                               if(!(_loc15_ && param2))
                                                                                                               {
                                                                                                                  addr464:
                                                                                                                  _loc14_ = param1.Slider;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  addr495:
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     this.readInitialVisibility(param1);
                                                                                                                     addr498:
                                                                                                                     loop2:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.@MouseDown.toString() != "")
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §?^§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr586:
                                                                                                                        }
                                                                                                                        loop4:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.@MouseUp.toString() != "")
                                                                                                                           {
                                                                                                                              addr557:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §?^§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                 addr562:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr557:
                                                                                                                           }
                                                                                                                           loop7:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseOver.toString() != "")
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §?^§(§'8§,param1.@MouseOver);
                                                                                                                                    addr550:
                                                                                                                                    addr511:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    if(!(_loc16_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §?^§(§@!$§,param1.@MouseOut);
                                                                                                                                          addr527:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc16_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr550);
                                                                                                                                             }
                                                                                                                                             §§goto(addr499);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr522:
                                                                                                                                    }
                                                                                                                                    §§goto(addr557);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(param1.@MouseOut.toString() != "")
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr511);
                                                                                                                                    }
                                                                                                                                    §§goto(addr527);
                                                                                                                                 }
                                                                                                                                 addr499:
                                                                                                                                 return;
                                                                                                                                 §§goto(addr550);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr498:
                                                                                                                     addr590:
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                                  addr494:
                                                                                                                  addr492:
                                                                                                               }
                                                                                                               §§goto(addr495);
                                                                                                            }
                                                                                                            §§goto(addr550);
                                                                                                         }
                                                                                                         §§goto(addr495);
                                                                                                      }
                                                                                                      §§goto(addr494);
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr447);
                                                                                          }
                                                                                          §§goto(addr456);
                                                                                       }
                                                                                       §§goto(addr522);
                                                                                    }
                                                                                    §§goto(addr456);
                                                                                 }
                                                                                 §§goto(addr498);
                                                                              }
                                                                              §§goto(addr447);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr322:
                                                                              if(!(_loc15_ && param3))
                                                                              {
                                                                                 if(_loc16_ || this)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr341:
                                                                                       _loc13_ = §§pop();
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          _loc14_ = param1.MovieClip;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          addr372:
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    §§goto(addr407);
                                                                                 }
                                                                                 §§goto(addr498);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                           if(!_loc15_)
                                                                           {
                                                                              this.§@k§[this.§@k§.length] = new §1!-§(_loc8_,this);
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr407);
                                                            }
                                                            §§goto(addr590);
                                                         }
                                                         §§goto(addr464);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         this.§@k§[this.§@k§.length] = new §,!!§(_loc11_,this);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr464);
                                                }
                                                addr493:
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr341);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr447);
                                 }
                                 §§goto(addr322);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc15_ && this))
                                 {
                                    if(!(_loc15_ && param3))
                                    {
                                       §§goto(addr396);
                                    }
                                    §§goto(addr410);
                                 }
                                 §§goto(addr464);
                              }
                              else
                              {
                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                 if(_loc16_ || param3)
                                 {
                                    this.§@k§[this.§@k§.length] = new §&Q§(_loc9_,this);
                                 }
                                 §§goto(addr372);
                              }
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr68);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr58);
      }
      
      public function §&!1§(param1:§']§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§']§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§']§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§@k§);
            if(_loc3_)
            {
               if(§§pop().indexOf(param1) < 0)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§@k§);
                     addr133:
                     while(true)
                     {
                        §§pop()[this.§@k§.length] = param1;
                        loop2:
                        while(true)
                        {
                           param1.mParentContainer = this;
                           loop3:
                           while(true)
                           {
                              param1.setActiveStatus(this.§4!>§);
                              while(!_loc2_)
                              {
                                 §§push(param1);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(Boolean(this.§+F§));
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             addr83:
                                             §§pop();
                                             addr84:
                                             §§push(param1.§+F§);
                                             if(_loc2_ && _loc3_)
                                             {
                                             }
                                             addr94:
                                             §§pop().setVisibility(§§pop());
                                             loop5:
                                             while(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      param1.viewWidth = viewWidth;
                                                      while(!(_loc2_ && _loc3_))
                                                      {
                                                         param1.viewHeight = viewHeight;
                                                         if(!_loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr25:
                                                   return;
                                                   addr42:
                                                   addr99:
                                                }
                                                continue loop3;
                                             }
                                             continue;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr83);
                                 }
                                 §§goto(addr84);
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr25);
            }
            §§goto(addr133);
         }
         §§goto(addr99);
      }
      
      public function removeComponent(param1:§']§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§@k§.indexOf(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  while(true)
                  {
                     this.§@k§.splice(_loc2_,1);
                     loop2:
                     while(_loc4_ || _loc2_)
                     {
                        while(true)
                        {
                           mClip.removeChild(param1.mClip);
                           if(_loc4_ || this)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         §§goto(addr88);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!mClip)
            {
               if(!_loc4_)
               {
                  §§goto(addr22);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc3_)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     addr202:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr204:
                              while(true)
                              {
                                 addr176:
                                 §§push(_loc2_);
                                 addr178:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                 }
                              }
                           }
                           addr203:
                        }
                        while(true)
                        {
                           addr182:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop14:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.setVisibility(false);
                                       loop15:
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param1.@enabled);
                                             loop8:
                                             while(_loc3_ || _loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                loop9:
                                                while(_loc3_ || _loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                      addr148:
                                                      §§push(_loc2_);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr66:
                                                         §§push(§§pop().toUpperCase() == "TRUE");
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.setEnabled(false);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr30);
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     addr78:
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     this.setEnabled(true);
                                                                  }
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     §§goto(addr148);
                                                                     addr145:
                                                                     §§pop();
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr78);
                                                               §§goto(addr66);
                                                            }
                                                            addr30:
                                                            return;
                                                            addr76:
                                                         }
                                                         while(!(_loc4_ && this))
                                                         {
                                                            §§goto(addr145);
                                                         }
                                                         continue loop1;
                                                         addr138:
                                                      }
                                                   }
                                                   §§goto(addr204);
                                                }
                                                while(true)
                                                {
                                                   continue loop7;
                                                   §§goto(addr161);
                                                }
                                                addr161:
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr204);
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              else
                              {
                                 this.setVisibility(true);
                              }
                              §§goto(addr175);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr204);
         }
         addr22:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!mParentContainer)
            {
               §§push(this.§;!;§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr45:
                        this.§;!;§.listenerEventOccured(param1,param2,param3);
                     }
                     if(!(_loc5_ && param2))
                     {
                        if(_loc5_ && param1)
                        {
                           addr76:
                           mParentContainer.containerEventOccured(param1,param2,param3);
                           addr81:
                        }
                     }
                     §§goto(addr81);
                  }
                  return;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr76);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§@k§.length)
            {
               if(!(_loc4_ && param1))
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc3_)
                     {
                        super.setActiveStatus(param1);
                        break;
                     }
                     addr100:
                     (this.§@k§[_loc2_] as §']§).setActiveStatus(param1);
                     addr97:
                     loop2:
                     while(true)
                     {
                        addr59:
                        while(true)
                        {
                           _loc2_++;
                           continue loop2;
                        }
                        continue loop0;
                     }
                     addr105:
                  }
                  while(true)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr105);
                  }
               }
               break;
            }
            §§push(this.§@k§);
            if(!(_loc4_ && param1))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop()[§§pop()] is §']§)
                  {
                     §§goto(addr97);
                  }
                  §§goto(addr59);
               }
            }
            §§goto(addr100);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_)
         {
            if(this.§@k§)
            {
               if(!_loc2_)
               {
                  addr142:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§@k§.length)
                  {
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           this.§@k§ = null;
                           while(true)
                           {
                              §§push(this.§;!;§);
                              if(_loc3_ || this)
                              {
                                 if(§§pop())
                                 {
                                    while(!(_loc2_ && _loc3_))
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(this.§;!;§);
                                          while(true)
                                          {
                                             §§pop().mMovieClip.removeChild(mClip);
                                             addr81:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr78:
                                       }
                                       else
                                       {
                                          addr95:
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             addr119:
                                             while(true)
                                             {
                                                §§push(this.§@k§);
                                                addr121:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr122:
                                                   while(true)
                                                   {
                                                      (§§pop()[§§pop()] as §']§).clear();
                                                   }
                                                }
                                             }
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             addr93:
                                             while(true)
                                             {
                                                _loc1_++;
                                                §§goto(addr95);
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    continue;
                                    addr52:
                                 }
                                 while(true)
                                 {
                                    super.clear();
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr52);
                                 }
                                 continue loop7;
                              }
                              §§goto(addr78);
                           }
                        }
                     }
                     addr88:
                  }
                  else
                  {
                     §§push(this.§@k§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop()[§§pop()] is §']§)
                           {
                              §§goto(addr119);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr121);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr142);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            super.onParentVisibilityChange(param1);
         }
         loop0:
         while(this.§@k§ != null)
         {
            if(_loc4_ || _loc3_)
            {
               _loc2_ = 0;
            }
            if(!(_loc4_ || _loc3_))
            {
               continue;
            }
            loop1:
            while(true)
            {
               if(_loc2_ >= this.§@k§.length)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     addr78:
                     (this.§@k§[_loc2_] as §']§).onParentVisibilityChange(param1);
                     addr75:
                     loop3:
                     while(true)
                     {
                        addr41:
                        while(true)
                        {
                           _loc2_++;
                           continue loop3;
                        }
                        continue loop1;
                     }
                     addr83:
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     §§goto(addr83);
                  }
               }
               else
               {
                  §§push(this.§@k§);
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop()[§§pop()] is §']§)
                        {
                           §§goto(addr75);
                        }
                        §§goto(addr41);
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr78);
            }
         }
      }
      
      public function §1!D§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_ || this)
               {
                  addr33:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_)
               {
                  if(_loc3_ is §']§)
                  {
                     if(!(_loc4_ && param2))
                     {
                        (_loc3_ as §']§).setVisibility(param2);
                        if(_loc5_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§4h§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() + param1);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + " does not exist");
                           }
                        }
                     }
                     §§pop().log(§§pop());
                  }
                  §§goto(addr115);
               }
            }
            addr115:
            return;
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §']§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§']§ = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_ || this)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!_loc5_)
            {
               §§goto(addr34);
            }
            §§goto(addr40);
         }
         addr34:
         if(mName.toUpperCase() == param1)
         {
            if(_loc4_)
            {
               addr40:
               return this;
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§@k§.length)
         {
            §§push(this.§@k§);
            if(_loc4_ || this)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop()[§§pop()] is §']§);
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(this.§@k§);
                           if(_loc4_)
                           {
                              §§goto(addr75);
                           }
                           §§goto(addr130);
                        }
                        break;
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr125);
            }
            addr75:
            §§push(_loc2_);
            if(_loc4_)
            {
               if((§§pop()[§§pop()] as §']§).mName.toUpperCase() == param1)
               {
                  if(!_loc5_)
                  {
                     §§push(this.§@k§);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§goto(addr104);
                        }
                     }
                     else
                     {
                        addr130:
                        §§push(_loc2_);
                     }
                     addr131:
                     _loc3_ = (§§pop()[§§pop()] as §4!C§).getItemByName(param1);
                     if(!_loc5_)
                     {
                        if(_loc3_ != null)
                        {
                           if(_loc4_ || this)
                           {
                              return _loc3_;
                           }
                           addr152:
                           _loc2_++;
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     §§goto(addr152);
                  }
                  else
                  {
                     addr128:
                     §§goto(addr130);
                     §§push(this.§@k§);
                  }
               }
               else
               {
                  §§push(this.§@k§);
                  if(_loc4_ || this)
                  {
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        addr125:
                        if(§§pop()[§§pop()] is §4!C§)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr131);
                  }
               }
               §§goto(addr130);
            }
            addr104:
            return §§pop()[§§pop()] as §']§;
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §,!N§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;!;§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr57);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr57);
         }
         addr57:
         return this.§;!;§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.viewWidth = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§@k§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               loop2:
               while(true)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     continue loop0;
                  }
                  addr51:
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     continue loop2;
                     addr99:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               §§push(this.§@k§);
               if(!(_loc3_ && param1))
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(§§pop()[§§pop()] is §']§)
                     {
                        if(!_loc3_)
                        {
                           addr94:
                           (this.§@k§[_loc2_] as §']§).viewWidth = param1;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr51);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr99);
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.viewHeight = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§@k§.length)
            {
               if(!_loc3_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr48:
                     while(true)
                     {
                        _loc2_++;
                     }
                     continue loop0;
                  }
                  addr94:
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     continue loop0;
                  }
                  addr86:
                  while(true)
                  {
                     §§push(this.§@k§);
                  }
               }
            }
            else
            {
               §§push(this.§@k§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop()[§§pop()] is §']§)
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr48);
                  }
                  while(true)
                  {
                     (§§pop()[§§pop()] as §']§).viewHeight = param1;
                     §§goto(addr94);
                  }
                  addr89:
               }
            }
            while(true)
            {
               §§goto(addr89);
            }
         }
      }
   }
}
