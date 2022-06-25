package §6a§
{
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   
   public class UIContainerRovio extends UIComponentRovio
   {
       
      
      public var §"B§:§`X§;
      
      public var §]6§:Vector.<UIComponentRovio>;
      
      public var §`!X§:Boolean = false;
      
      public function UIContainerRovio(param1:XML, param2:UIContainerRovio, param3:§`X§, param4:MovieClip = null)
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
            if(_loc16_ || param2)
            {
               §§push(Boolean(param3));
               if(!_loc15_)
               {
                  if(§§pop())
                  {
                     if(!_loc15_)
                     {
                        addr61:
                        this.§"B§ = param3;
                        if(_loc16_ || param1)
                        {
                           addr73:
                           if(!param4)
                           {
                              if(_loc16_)
                              {
                                 addr76:
                                 _loc12_ = AssetCache.§%p§(mName);
                                 if(!_loc15_)
                                 {
                                    mClip = new _loc12_();
                                    if(_loc15_ && param2)
                                    {
                                    }
                                    addr103:
                                    super(param1,param2,param4);
                                    if(!(_loc15_ && this))
                                    {
                                       addr115:
                                       this.§]6§ = new Vector.<UIComponentRovio>();
                                       addr123:
                                       var _loc13_:* = 0;
                                       var _loc14_:* = param1.Container;
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc14_,_loc13_));
                                          if(_loc16_ || param2)
                                          {
                                             if(§§pop())
                                             {
                                                _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                                if(!(_loc15_ && param1))
                                                {
                                                   this.§]6§.push(new UIContainerRovio(_loc5_,this,null));
                                                }
                                                continue;
                                             }
                                             if(!_loc15_)
                                             {
                                                if(!(_loc15_ && param3))
                                                {
                                                   if(_loc16_ || param2)
                                                   {
                                                      §§push(0);
                                                      if(!_loc15_)
                                                      {
                                                         _loc13_ = §§pop();
                                                         if(!(_loc15_ && param3))
                                                         {
                                                            _loc14_ = param1.Repeater;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                               if(!_loc15_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        this.§]6§.push(new UIRepeaterRovio(_loc6_,this,null));
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc16_ || param2)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 _loc14_ = param1.Button;
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc14_,_loc13_));
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             this.§]6§.push(new UIButtonRovio(_loc7_,this));
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr285:
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr306:
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr309:
                                                                                                      _loc14_ = param1.TextField;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  this.§]6§.push(new UITextFieldRovio(_loc8_,this));
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr355:
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        if(!(_loc15_ && param3))
                                                                                                                        {
                                                                                                                           addr363:
                                                                                                                           _loc14_ = param1.MovieClip;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                                    if(_loc16_ || param3)
                                                                                                                                    {
                                                                                                                                       this.§]6§.push(new §=D§(_loc9_,this));
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc16_ || param2)
                                                                                                                                 {
                                                                                                                                    addr400:
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr462:
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       addr466:
                                                                                                                                       _loc13_ = 0;
                                                                                                                                       addr465:
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr469:
                                                                                                                                          _loc14_ = param1.Slider;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                             break loop0;
                                                                                                                                          }
                                                                                                                                          addr490:
                                                                                                                                       }
                                                                                                                                       addr493:
                                                                                                                                       if(_loc16_ || param1)
                                                                                                                                       {
                                                                                                                                          this.readInitialVisibility(param1);
                                                                                                                                          loop3:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(param1.@MouseDown.toString() != "")
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §[!5§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                                   addr602:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr595:
                                                                                                                                             }
                                                                                                                                             loop6:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(param1.@MouseUp.toString() != "")
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §[!5§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                                      }
                                                                                                                                                      addr560:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(param1.@MouseOver.toString() != "")
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §[!5§(§9O§,param1.@MouseOver);
                                                                                                                                                            addr551:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr516:
                                                                                                                                                            if(!(_loc16_ || param3))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr523:
                                                                                                                                                            if(!(_loc16_ || param1))
                                                                                                                                                            {
                                                                                                                                                               while(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr595);
                                                                                                                                                                  §§goto(addr523);
                                                                                                                                                               }
                                                                                                                                                               continue loop6;
                                                                                                                                                               addr567:
                                                                                                                                                            }
                                                                                                                                                            §[!5§(§!!Q§,param1.@MouseOut);
                                                                                                                                                            addr502:
                                                                                                                                                            return;
                                                                                                                                                            addr537:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      for(; param1.@MouseOut.toString() != ""; §§goto(addr551))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr516);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr537);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr502);
                                                                                                                                                   }
                                                                                                                                                   addr538:
                                                                                                                                                }
                                                                                                                                                §§goto(addr567);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr551);
                                                                                                                                    }
                                                                                                                                    §§goto(addr602);
                                                                                                                                 }
                                                                                                                                 if(!(_loc15_ && param2))
                                                                                                                                 {
                                                                                                                                    §§goto(addr462);
                                                                                                                                 }
                                                                                                                                 §§goto(addr493);
                                                                                                                              }
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc16_ || this)
                                                                                                                        {
                                                                                                                           addr416:
                                                                                                                           §§push(0);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              addr419:
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr422:
                                                                                                                                 _loc14_ = param1.Popup;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       break loop12;
                                                                                                                                    }
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 addr443:
                                                                                                                              }
                                                                                                                              §§goto(addr493);
                                                                                                                           }
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                        §§goto(addr588);
                                                                                                                     }
                                                                                                                     §§goto(addr419);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         break loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                §§goto(addr355);
                                                                                             }
                                                                                             §§goto(addr560);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          §§goto(addr454);
                                                                                       }
                                                                                       §§goto(addr492);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          this.§]6§.push(new §+_§(_loc10_,this));
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                           §§goto(addr466);
                                                                        }
                                                                        §§goto(addr416);
                                                                     }
                                                                     §§goto(addr469);
                                                                  }
                                                                  §§goto(addr454);
                                                               }
                                                               break loop0;
                                                            }
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr465);
                                                }
                                             }
                                             §§goto(addr400);
                                          }
                                          break;
                                       }
                                       while(§§pop())
                                       {
                                          _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                          if(_loc16_)
                                          {
                                             this.§]6§.push(new UISliderRovio(_loc11_,this));
                                          }
                                          §§goto(addr490);
                                       }
                                       §§goto(addr492);
                                    }
                                    §§goto(addr123);
                                 }
                                 this.§"B§.movieClip.addChild(mClip);
                                 §§goto(addr103);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr103);
               }
               §§goto(addr73);
            }
            §§goto(addr61);
         }
         §§goto(addr115);
      }
      
      public function §"O§(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §&!R§(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§]6§.indexOf(param1) < 0)
            {
               while(true)
               {
                  this.§]6§.push(param1);
                  addr151:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     while(!(_loc2_ && this))
                     {
                        param1.setActiveStatus(this.§]`§);
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§push(Boolean(this.§0x§));
                              if(!_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§pop();
                                       addr98:
                                       §§push(param1.§0x§);
                                       if(_loc3_ || this)
                                       {
                                       }
                                       addr108:
                                       §§pop().setVisibility(§§pop());
                                       loop4:
                                       while(true)
                                       {
                                          param1.viewWidth = viewWidth;
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr98);
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr151);
      }
      
      public function §#;§(param1:UIComponentRovio) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§]6§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ >= 0)
            {
               if(!_loc4_)
               {
                  param1.mParentContainer = null;
               }
               while(true)
               {
                  this.§]6§.splice(_loc2_,1);
                  loop1:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr78);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!mClip)
            {
               if(_loc4_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:String = param1.@visible;
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr219:
               while(true)
               {
                  §§push(§§pop());
                  addr220:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr221:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr223:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr197:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    addr200:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr201:
                                       while(_loc4_ || param1)
                                       {
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.setVisibility(false);
                                 addr214:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                       }
                                       addr216:
                                    }
                                    else
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                              }
                              addr210:
                           }
                           else
                           {
                              this.setVisibility(true);
                              while(true)
                              {
                              }
                              addr194:
                           }
                           while(true)
                           {
                              §§push(param1.@enabled);
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr216);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(Boolean(mParentContainer));
            while(true)
            {
               if(§§pop())
               {
                  addr83:
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  return;
                  addr90:
               }
               §§push(this.§"B§);
               if(_loc4_)
               {
                  break;
               }
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  continue;
               }
               if(§§pop())
               {
                  if(!(_loc4_ && param2))
                  {
                     if(!(_loc4_ && param1))
                     {
                        addr69:
                        §§push(this.§"B§);
                        break;
                     }
                     §§goto(addr83);
                  }
                  addr76:
                  if(_loc4_)
                  {
                     §§goto(addr90);
                  }
               }
               §§goto(addr83);
            }
            §§pop().listenerEventOccured(param1,param2,param3);
            §§goto(addr76);
         }
         §§goto(addr69);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         for each(_loc2_ in this.§]6§)
         {
            if(!_loc5_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc6_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(_loc2_ || _loc1_)
         {
            if(this.§]6§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  addr151:
                  §§push(0);
                  if(_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
               }
               loop0:
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        if(§§pop() >= this.§]6§.length)
                        {
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 this.§]6§ = null;
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§"B§);
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          while(!(_loc3_ && this))
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(this.§"B§);
                                                while(true)
                                                {
                                                   §§pop().movieClip.removeChild(mClip);
                                                   addr89:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                addr84:
                                             }
                                             else
                                             {
                                                addr114:
                                                §§push(_loc1_ + 1);
                                                if(_loc2_)
                                                {
                                                   addr128:
                                                   _loc1_ = int(§§pop());
                                                   break;
                                                }
                                                §§goto(addr128);
                                                addr139:
                                             }
                                             if(_loc2_ || _loc1_)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          super.clear();
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr36);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr84);
                                 }
                                 return;
                              }
                           }
                           addr107:
                        }
                        else
                        {
                           this.§]6§[_loc1_].clear();
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr151);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         if(_loc6_ || this)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_)
            {
               if(this.§]6§ != null)
               {
                  addr57:
                  for each(_loc2_ in this.§]6§)
                  {
                     if(!_loc5_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function §?Q§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(!(_loc4_ && _loc3_))
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc4_)
               {
                  addr34:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(!_loc4_)
               {
                  if(_loc3_ is UIComponentRovio)
                  {
                     if(!_loc4_)
                     {
                        addr63:
                        (_loc3_ as UIComponentRovio).setVisibility(param2);
                        if(_loc5_ || param2)
                        {
                        }
                     }
                     §§goto(addr122);
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_ || this)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && this))
                              {
                                 addr114:
                                 §§push(§§pop() + param1);
                                 if(!_loc5_)
                                 {
                                 }
                                 §§goto(addr120);
                              }
                              §§push(" does not exist");
                           }
                           addr120:
                           §§pop().log(§§pop());
                           addr122:
                           return;
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr63);
         }
         §§goto(addr34);
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:UIComponentRovio = null;
         var _loc3_:UIComponentRovio = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_ || this)
            {
               §§goto(addr47);
            }
            §§goto(addr54);
         }
         addr47:
         if(mName.toUpperCase() == param1)
         {
            if(!_loc7_)
            {
               return this;
               addr54:
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§]6§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc6_)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(!(_loc7_ && this))
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     addr97:
                     if(!(_loc2_ is UIContainerRovio))
                     {
                        continue;
                     }
                  }
                  _loc3_ = (_loc2_ as UIContainerRovio).getItemByName(param1);
                  if(!(_loc6_ || _loc2_))
                  {
                     break;
                  }
                  if(_loc3_ != null)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr97);
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §`X§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§"B§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr53);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr53);
         }
         addr53:
         return this.§"B§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UIComponentRovio = null;
         if(!_loc6_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§]6§)
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
         var _loc2_:UIComponentRovio = null;
         if(!_loc6_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§]6§)
         {
            if(_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
