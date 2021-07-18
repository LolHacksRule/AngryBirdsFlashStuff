package §'p§
{
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.*;
   
   public class §`!T§ extends §-!2§
   {
       
      
      public var §'"3§:§'s§;
      
      public var §"!_§:Vector.<§-!2§>;
      
      public var §;!v§:Boolean = false;
      
      public function §`!T§(param1:XML, param2:§`!T§, param3:§'s§, param4:MovieClip = null)
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
         if(!(_loc15_ && param3))
         {
            this.mName = param1.@name;
            if(_loc16_)
            {
               if(param3)
               {
                  if(_loc16_)
                  {
                     addr58:
                     this.§'"3§ = param3;
                     if(_loc16_ || param3)
                     {
                        if(!param4)
                        {
                           if(_loc16_ || this)
                           {
                              addr77:
                              _loc12_ = §>!]§.§1!8§(mName);
                              if(_loc16_)
                              {
                                 mClip = new _loc12_();
                                 if(_loc16_ || param3)
                                 {
                                    this.§'"3§.movieClip.addChild(mClip);
                                    addr100:
                                    super(param1,param2,param4);
                                    if(_loc15_ && param3)
                                    {
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
                                             if(!(_loc15_ && param2))
                                             {
                                                this.§"!_§.push(new §`!T§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(_loc16_ || this)
                                          {
                                             if(!(_loc15_ && this))
                                             {
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(0);
                                                   if(_loc16_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc16_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(_loc16_)
                                                                  {
                                                                     this.§"!_§.push(new §+!,§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc16_)
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     addr209:
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              addr228:
                                                                              _loc14_ = param1.Button;
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          this.§"!_§.push(new §="#§(_loc7_,this));
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr254:
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          if(_loc16_ || param2)
                                                                                          {
                                                                                             addr270:
                                                                                             §§push(0);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   _loc14_ = param1.TextField;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(_loc16_ || param3)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      addr430:
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr433:
                                                                                                               if(_loc16_ || param3)
                                                                                                               {
                                                                                                                  addr441:
                                                                                                                  if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     addr450:
                                                                                                                     _loc13_ = 0;
                                                                                                                     if(!(_loc15_ && param1))
                                                                                                                     {
                                                                                                                        addr458:
                                                                                                                        _loc14_ = param1.Slider;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                           break loop0;
                                                                                                                        }
                                                                                                                        addr478:
                                                                                                                     }
                                                                                                                     addr481:
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        this.readInitialVisibility(param1);
                                                                                                                        addr484:
                                                                                                                     }
                                                                                                                     loop5:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        § "<§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                        addr555:
                                                                                                                        loop6:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop7:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseOver.toString() != "")
                                                                                                                              {
                                                                                                                                 loop8:
                                                                                                                                 while(!_loc15_)
                                                                                                                                 {
                                                                                                                                    § "<§(§%x§,param1.@MouseOver);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr509:
                                                                                                                                       if(!(_loc15_ && param3))
                                                                                                                                       {
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             if(_loc16_ || this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr485);
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop20:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr540:
                                                                                                                                    addr581:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1.@MouseUp.toString() != "")
                                                                                                                                       {
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1.@MouseDown.toString() != "")
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             § "<§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          addr562:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr540);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr577:
                                                                                                                              }
                                                                                                                              while(param1.@MouseOut.toString() != "")
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ && param2))
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       § "<§(§2"3§,param1.@MouseOut);
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                    §§goto(addr562);
                                                                                                                                 }
                                                                                                                                 §§goto(addr509);
                                                                                                                              }
                                                                                                                              addr485:
                                                                                                                              return;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr550:
                                                                                                                  }
                                                                                                                  §§goto(addr581);
                                                                                                               }
                                                                                                               §§goto(addr458);
                                                                                                            }
                                                                                                            addr480:
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(!(_loc15_ && param2))
                                                                                                            {
                                                                                                               this.§"!_§.push(new §"S§(_loc10_,this));
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                               if(!(_loc16_ || param3))
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            addr422:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr306:
                                                                                                }
                                                                                                addr339:
                                                                                                _loc14_ = param1.MovieClip;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   §§goto(addr430);
                                                                                                }
                                                                                                addr364:
                                                                                             }
                                                                                             §§goto(addr450);
                                                                                          }
                                                                                          §§goto(addr550);
                                                                                       }
                                                                                       addr397:
                                                                                       _loc14_ = param1.Popup;
                                                                                       §§goto(addr422);
                                                                                    }
                                                                                    if(_loc16_ || param3)
                                                                                    {
                                                                                       if(!(_loc15_ && param3))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr389:
                                                                                             _loc13_ = §§pop();
                                                                                             if(!(_loc15_ && param2))
                                                                                             {
                                                                                                §§goto(addr397);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                       §§goto(addr484);
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       this.§"!_§.push(new §`!<§(_loc8_,this));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc15_ && param2))
                                                                                 {
                                                                                    if(_loc16_ || param3)
                                                                                    {
                                                                                       addr330:
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§goto(addr339);
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                       §§goto(addr555);
                                                                                    }
                                                                                    §§goto(addr450);
                                                                                 }
                                                                                 §§goto(addr480);
                                                                              }
                                                                              §§goto(addr430);
                                                                           }
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr433);
                                                            }
                                                            else
                                                            {
                                                               _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  this.§"!_§.push(new §%+§(_loc9_,this));
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   §§goto(addr450);
                                                }
                                                §§goto(addr577);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr433);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                       if(_loc16_)
                                       {
                                          this.§"!_§.push(new §`!w§(_loc11_,this));
                                       }
                                       §§goto(addr478);
                                    }
                                    §§goto(addr480);
                                 }
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                     this.§"!_§ = new Vector.<§-!2§>();
                     §§goto(addr100);
                  }
                  §§goto(addr77);
               }
               §§goto(addr100);
            }
            §§goto(addr58);
         }
         §§goto(addr100);
      }
      
      public function §0<§(param1:§-!2§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §!t§(param1:§-!2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §;!R§(param1:§-!2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§"!_§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§"!_§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§?C§);
                        while(_loc2_ || param1)
                        {
                           §§push(param1);
                           if(!_loc3_)
                           {
                              §§push(Boolean(this.§-j§));
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr84:
                                       §§pop();
                                       addr85:
                                       §§push(param1.§-j§);
                                       if(!_loc2_)
                                       {
                                       }
                                       addr90:
                                       §§pop().setVisibility(§§pop());
                                       loop4:
                                       while(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             param1.viewWidth = viewWidth;
                                             while(_loc2_)
                                             {
                                                continue loop2;
                                                param1.viewHeight = viewHeight;
                                                if(!(_loc3_ && this))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          return;
                                       }
                                       continue;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr85);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr93);
      }
      
      public function removeComponent(param1:§-!2§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§"!_§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               do
               {
                  param1.mParentContainer = null;
                  while(true)
                  {
                     this.§"!_§.splice(_loc2_,1);
                     while(_loc4_)
                     {
                        mClip.removeChild(param1.mClip);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc4_ || _loc3_));
               
               addr77:
            }
            return;
         }
         §§goto(addr77);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(!mClip)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(!(_loc4_ && this))
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
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr171:
                                 while(!_loc4_)
                                 {
                                 }
                                 continue loop3;
                                 loop12:
                                 for(; _loc3_ || this; §§push(_loc2_),if(!_loc3_)
                                 {
                                    continue;
                                 },if(!(_loc4_ && _loc3_))
                                 {
                                    continue loop0;
                                 },§§goto(addr143))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop());
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop())
                                          {
                                             addr135:
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr135:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.setEnabled(false);
                                                   if(_loc3_ || this)
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         addr102:
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         addr136:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            continue loop4;
                                                            §§goto(addr135);
                                                         }
                                                         continue loop0;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr40);
                                                      }
                                                      addr175:
                                                      addr175:
                                                      while(true)
                                                      {
                                                         this.setVisibility(false);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(param1.@enabled);
                                                               addr143:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr144:
                                                                  addr165:
                                                                  while(_loc3_ || _loc3_)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        continue loop12;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop9;
                                                                     §§goto(addr144);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr107:
                                                   if(_loc3_)
                                                   {
                                                      addr40:
                                                      return;
                                                      addr109:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr144);
                                                   }
                                                }
                                                §§goto(addr102);
                                                addr85:
                                                §§push(§§pop().toUpperCase() == "TRUE");
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr135);
                                             }
                                             this.setEnabled(true);
                                             §§goto(addr107);
                                          }
                                          §§goto(addr136);
                                       }
                                       else
                                       {
                                          §§goto(addr171);
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.setVisibility(true);
                           §§goto(addr165);
                        }
                        §§goto(addr175);
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(!mParentContainer)
            {
               §§push(this.§'"3§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           addr57:
                           this.§'"3§.listenerEventOccured(param1,param2,param3);
                           addr61:
                           if(_loc4_ || param3)
                           {
                           }
                           §§goto(addr24);
                        }
                        else
                        {
                           addr81:
                           mParentContainer.containerEventOccured(param1,param2,param3);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr61);
                  }
                  addr24:
                  return;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr81);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§-!2§ = null;
         for each(_loc2_ in this.§"!_§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!_loc5_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_ || this)
         {
            if(this.§"!_§)
            {
               if(_loc3_)
               {
                  addr132:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§"!_§.length)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§"!_§ = null;
                           }
                           addr98:
                        }
                        else
                        {
                           _loc1_++;
                           continue;
                           addr126:
                        }
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        §§push(this.§'"3§);
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(_loc2_ && _loc3_)
                           {
                              loop2:
                              while(true)
                              {
                                 addr31:
                                 while(true)
                                 {
                                    super.clear();
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              addr82:
                           }
                           continue;
                           return;
                        }
                        §§goto(addr31);
                     }
                     §§pop().movieClip.removeChild(mClip);
                     §§goto(addr82);
                  }
                  else
                  {
                     this.§"!_§[_loc1_].clear();
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr132);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(!_loc2_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§-!2§ = null;
         if(!_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc5_)
            {
               if(this.§"!_§ != null)
               {
                  addr41:
                  for each(_loc2_ in this.§"!_§)
                  {
                     if(_loc6_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      public function § F§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(!(_loc4_ && _loc3_))
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_ || this)
               {
                  this.setVisibility(param2);
                  addr41:
               }
               §§goto(addr41);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!_loc4_)
               {
                  if(_loc3_ is §-!2§)
                  {
                     if(_loc5_)
                     {
                        addr65:
                        (_loc3_ as §-!2§).setVisibility(param2);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr105);
                  }
                  else
                  {
                     §§push(§9!P§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc5_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(_loc5_ || this)
                        {
                           addr98:
                           §§push(§§pop() + param1);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + " does not exist");
                           }
                        }
                        §§pop().log(§§pop());
                        §§goto(addr105);
                     }
                     §§goto(addr98);
                  }
                  return;
               }
               §§goto(addr65);
            }
         }
         §§goto(addr41);
      }
      
      public function getItemByName(param1:String) : §-!2§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§-!2§ = null;
         var _loc3_:§-!2§ = null;
         if(!(_loc7_ && this))
         {
            §§push(param1);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_ || _loc3_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || param1)
                  {
                     §§goto(addr58);
                  }
               }
            }
            for each(_loc2_ in this.§"!_§)
            {
               if(_loc6_ || param1)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(!_loc7_)
                     {
                        return _loc2_;
                     }
                  }
                  else if(!(_loc2_ is §`!T§))
                  {
                     continue;
                  }
               }
               _loc3_ = (_loc2_ as §`!T§).getItemByName(param1);
               if(!(_loc7_ && this))
               {
                  if(_loc3_ != null)
                  {
                     if(_loc6_)
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            return null;
         }
         addr58:
         return this;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §'s§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'"3§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr58);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr58);
         }
         addr58:
         return this.§'"3§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§-!2§ = null;
         if(_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§"!_§)
         {
            if(_loc5_ || this)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§-!2§ = null;
         if(_loc6_ || this)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§"!_§)
         {
            if(_loc6_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
