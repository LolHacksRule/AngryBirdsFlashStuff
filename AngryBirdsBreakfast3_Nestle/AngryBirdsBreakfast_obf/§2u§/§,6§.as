package §2u§
{
   import §!""§.§]H§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §1`§.§9%§;
   import §24§.;
   import com.rovio.assets.§=!V§;
   import flash.display.*;
   import flash.events.Event;
   
   public class §,6§ extends §-!g§
   {
       
      
      public var §`@§:§9%§;
      
      public var §,_§:Vector.<§<!7§>;
      
      public var §6!>§:Boolean = false;
      
      public function §,6§(param1:XML, param2:§,6§, param3:§9%§, param4:MovieClip = null)
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:Class = null;
         if(!_loc16_)
         {
            this.mName = param1.@name;
            if(_loc15_ || param2)
            {
               if(param3)
               {
                  if(!(_loc16_ && param2))
                  {
                     this.§`@§ = param3;
                     if(!(_loc16_ && param3))
                     {
                        addr72:
                        if(!param4)
                        {
                           if(_loc16_)
                           {
                           }
                           addr122:
                           var _loc13_:* = 0;
                           var _loc14_:* = param1.Container;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc14_,_loc13_));
                              if(_loc15_)
                              {
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                    if(!_loc16_)
                                    {
                                       this.§,_§.push(new §,6§(_loc5_,this,null));
                                    }
                                    continue;
                                 }
                                 if(_loc15_)
                                 {
                                    if(!(_loc16_ && param1))
                                    {
                                       if(!(_loc16_ && this))
                                       {
                                          §§push(0);
                                          if(_loc15_)
                                          {
                                             _loc13_ = §§pop();
                                             if(_loc15_ || param2)
                                             {
                                                _loc14_ = param1.Repeater;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(_loc15_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(_loc15_ || param3)
                                                         {
                                                            this.§,_§.push(new §]!>§(_loc6_,this,null));
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc16_ && param2))
                                                      {
                                                         if(_loc15_ || param3)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc16_ && param3))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     _loc14_ = param1.Button;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        if(!(_loc16_ && param2))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                              if(_loc15_)
                                                                              {
                                                                                 this.§,_§.push(new §]"%§(_loc7_,this));
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              if(!(_loc16_ && param2))
                                                                              {
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(_loc15_ || param2)
                                                                                       {
                                                                                          _loc14_ = param1.TextField;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                             if(_loc15_ || param3)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      this.§,_§.push(new §7!&§(_loc8_,this));
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc15_ || this)
                                                                                                {
                                                                                                   addr361:
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      addr364:
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!(_loc16_ && param1))
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(!(_loc16_ && param2))
                                                                                                            {
                                                                                                               addr383:
                                                                                                               _loc14_ = param1.MovieClip;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                  if(!(_loc16_ && param2))
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               addr403:
                                                                                                            }
                                                                                                            addr460:
                                                                                                            if(!(_loc16_ && param2))
                                                                                                            {
                                                                                                               addr469:
                                                                                                               _loc13_ = 0;
                                                                                                               if(_loc15_ || param3)
                                                                                                               {
                                                                                                                  addr477:
                                                                                                                  _loc14_ = param1.Slider;
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                     addr503:
                                                                                                                     addr504:
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           this.§,_§.push(new §,"7§(_loc11_,this));
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     addr505:
                                                                                                                     if(_loc15_ || param3)
                                                                                                                     {
                                                                                                                        this.readInitialVisibility(param1);
                                                                                                                        loop17:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.@MouseDown.toString() != "")
                                                                                                                           {
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §^1§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                 addr611:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr596:
                                                                                                                           }
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseUp.toString() != "")
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §^1§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                    addr589:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr584:
                                                                                                                              }
                                                                                                                              while(param1.@MouseOver.toString() != "")
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §^1§(§]'§,param1.@MouseOver);
                                                                                                                                       addr570:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || param3)
                                                                                                                                          {
                                                                                                                                             break loop12;
                                                                                                                                          }
                                                                                                                                          §§goto(addr596);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(param1.@MouseOut.toString() != "")
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(_loc15_ || param2)
                                                                                                                                 {
                                                                                                                                    if(!(_loc16_ && param1))
                                                                                                                                    {
                                                                                                                                       §^1§(§<!H§,param1.@MouseOut);
                                                                                                                                    }
                                                                                                                                    §§goto(addr611);
                                                                                                                                 }
                                                                                                                                 §§goto(addr589);
                                                                                                                              }
                                                                                                                              if(_loc15_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       addr556:
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr584);
                                                                                                                                 }
                                                                                                                                 §§goto(addr563);
                                                                                                                              }
                                                                                                                              §§goto(addr570);
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr611);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr505);
                                                                                                            }
                                                                                                            §§goto(addr589);
                                                                                                         }
                                                                                                         addr423:
                                                                                                         _loc13_ = §§pop();
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            addr426:
                                                                                                            _loc14_ = param1.Popup;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               §§goto(addr503);
                                                                                                            }
                                                                                                            addr446:
                                                                                                         }
                                                                                                         §§goto(addr460);
                                                                                                      }
                                                                                                      addr420:
                                                                                                      §§push(0);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§goto(addr423);
                                                                                                      }
                                                                                                      §§goto(addr469);
                                                                                                   }
                                                                                                   §§goto(addr383);
                                                                                                }
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§goto(addr420);
                                                                                                   }
                                                                                                   §§goto(addr556);
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr460);
                                                                                    }
                                                                                    §§goto(addr423);
                                                                                 }
                                                                                 §§goto(addr565);
                                                                              }
                                                                              §§goto(addr426);
                                                                           }
                                                                           §§goto(addr504);
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                  }
                                                                  §§goto(addr477);
                                                               }
                                                               §§goto(addr469);
                                                            }
                                                            §§goto(addr565);
                                                         }
                                                         §§goto(addr426);
                                                      }
                                                      if(!_loc16_)
                                                      {
                                                         §§goto(addr460);
                                                      }
                                                      §§goto(addr504);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(!_loc16_)
                                                      {
                                                         this.§,_§.push(new §9!e§(_loc10_,this));
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc15_ || param3)
                                                   {
                                                      §§goto(addr457);
                                                   }
                                                   §§goto(addr504);
                                                }
                                                §§goto(addr503);
                                             }
                                             §§goto(addr504);
                                          }
                                          §§goto(addr469);
                                       }
                                       §§goto(addr589);
                                    }
                                    §§goto(addr364);
                                 }
                                 §§goto(addr361);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                 if(_loc15_)
                                 {
                                    this.§,_§.push(new §7!m§(_loc9_,this));
                                 }
                                 continue;
                              }
                              if(_loc15_)
                              {
                                 §§goto(addr414);
                              }
                              §§goto(addr457);
                           }
                        }
                        addr104:
                        super(param1,param2,param4);
                        if(_loc15_ || param2)
                        {
                           addr116:
                           this.§,_§ = new Vector.<§<!7§>();
                        }
                        §§goto(addr122);
                     }
                     _loc12_ = §=!V§.§?!O§(mName);
                     if(_loc15_ || this)
                     {
                        mClip = new _loc12_();
                        if(_loc15_ || param2)
                        {
                        }
                        §§goto(addr104);
                     }
                     this.§`@§.movieClip.addChild(mClip);
                     §§goto(addr104);
                  }
                  §§goto(addr122);
               }
               §§goto(addr104);
            }
            §§goto(addr72);
         }
         §§goto(addr116);
      }
      
      public function §6#§(param1:§<!7§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§<!7§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §!!1§(param1:§<!7§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,_§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§,_§.push(param1);
                  addr122:
                  addr33:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     addr101:
                     while(true)
                     {
                        param1.setActiveStatus(this.§8t§);
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr122);
      }
      
      public function §""5§(param1:§<!7§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§,_§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  addr80:
                  loop1:
                  while(true)
                  {
                     this.§,_§.splice(_loc2_,1);
                     while(!(_loc3_ && this))
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(!mClip)
            {
               if(!(_loc3_ && param1))
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc4_ || _loc3_)
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
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    addr69:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    addr76:
                                    §§push(§§pop().toUpperCase() == "TRUE");
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue loop1;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.setEnabled(false);
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(_loc2_);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr135:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr112:
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break loop11;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.setEnabled(true);
                                                                                          addr124:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                break loop13;
                                                                                             }
                                                                                             break loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr149:
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr180:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.setVisibility(false);
                                                                                       break loop11;
                                                                                    }
                                                                                    addr181:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.setVisibility(true);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr152:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.@enabled);
                                                                                    addr156:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              §§goto(addr76);
                                                                           }
                                                                           continue loop4;
                                                                           addr139:
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr46);
                                                               }
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr152);
                                                         }
                                                      }
                                                      addr46:
                                                      return;
                                                   }
                                                   §§goto(addr112);
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr112);
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr139);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr180);
                        }
                     }
                  }
               }
            }
            §§goto(addr121);
         }
         addr33:
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§+§, param4:Event = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param4)
            {
               while(true)
               {
                  dispatchEvent(param4);
                  addr104:
                  while(true)
                  {
                  }
                  addr86:
                  if(!_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
            }
            while(true)
            {
               if(mParentContainer)
               {
                  if(!(_loc5_ && param1))
                  {
                     mParentContainer.childUIEventOccured(param1,param2,param3,param4);
                  }
               }
               else
               {
                  §§push(this.§`@§);
                  if(!(_loc5_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           addr61:
                           this.§`@§.listenerUIEventOccured(param1,param2,param3);
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        addr84:
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§goto(addr86);
                     }
                     break;
                  }
                  §§goto(addr61);
               }
               §§goto(addr84);
            }
            addr25:
            return;
         }
         §§goto(addr104);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!7§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§,_§)
         {
            if(!(_loc5_ && this))
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc6_ || _loc3_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && this))
         {
            if(this.§,_§)
            {
               if(_loc3_)
               {
                  addr122:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§,_§.length)
                  {
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           this.§,_§ = null;
                           while(true)
                           {
                              §§push(this.§`@§);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    for(; !(_loc2_ && this); if(_loc3_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop3;
                                    })
                                    {
                                       §§push(this.§`@§);
                                       while(true)
                                       {
                                          §§pop().movieClip.removeChild(mClip);
                                          loop8:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   super.clear();
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop8;
                                                }
                                                addr31:
                                             }
                                             addr95:
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr116:
                                          while(true)
                                          {
                                             _loc1_++;
                                             §§goto(addr95);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr31);
                              }
                              §§goto(addr76);
                           }
                        }
                     }
                     addr88:
                  }
                  else
                  {
                     this.§,_§[_loc1_].clear();
                  }
                  §§goto(addr116);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr122);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!7§ = null;
         if(_loc6_ || _loc2_)
         {
            super.onParentVisibilityChange(param1);
            if(!(_loc5_ && _loc2_))
            {
               if(this.§,_§ != null)
               {
                  addr51:
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§,_§)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      public function §"!2§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_ || _loc3_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc5_)
               {
                  addr32:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!_loc5_)
               {
                  if(_loc3_ is §<!7§)
                  {
                     if(_loc5_)
                     {
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     §§push(§#7§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1);
                           if(!_loc5_)
                           {
                              addr101:
                              §§push(§§pop() + " does not exist");
                           }
                           §§pop().log(§§pop());
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr101);
                  }
               }
               (_loc3_ as §<!7§).setVisibility(param2);
               if(_loc4_ || this)
               {
               }
            }
            addr104:
            return;
         }
         §§goto(addr32);
      }
      
      public function getItemByName(param1:String) : §<!7§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<!7§ = null;
         var _loc3_:§<!7§ = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || this)
                  {
                     §§goto(addr43);
                  }
               }
               for each(_loc2_ in this.§,_§)
               {
                  if(_loc6_)
                  {
                     if(_loc2_.mName.toUpperCase() == param1)
                     {
                        if(!(_loc7_ && param1))
                        {
                           return _loc2_;
                        }
                     }
                     else if(!(_loc2_ is §,6§))
                     {
                        continue;
                     }
                  }
                  _loc3_ = (_loc2_ as §,6§).getItemByName(param1);
                  if(!_loc7_)
                  {
                     if(_loc3_ != null)
                     {
                        if(!_loc7_)
                        {
                           return _loc3_;
                        }
                     }
                  }
               }
               return null;
            }
         }
         addr43:
         return this;
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            mClip.mouseEnabled = param1;
            while(param2)
            {
               if(_loc4_)
               {
                  mClip.mouseChildren = param1;
               }
               if(_loc4_)
               {
                  addr54:
                  break;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      override public function getParentView() : §9%§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§`@§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr53);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr53);
         }
         addr53:
         return this.§`@§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<!7§ = null;
         if(_loc5_ || this)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§,_§)
         {
            if(_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<!7§ = null;
         if(_loc5_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§,_§)
         {
            if(!_loc6_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = this.getItemByName(param2);
         if(!(_loc5_ && param1))
         {
            if(!(_loc3_ is §7!&§))
            {
               throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
            }
            (_loc3_ as §7!&§).setText(param1);
         }
      }
   }
}
