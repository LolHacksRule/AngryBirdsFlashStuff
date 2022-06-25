package §]!6§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   
   public class UIContainerRovio extends UIComponentRovio
   {
       
      
      public var §4!'§:§6"§;
      
      public var §4!W§:Vector.<UIComponentRovio>;
      
      public var §@a§:Boolean = false;
      
      public function UIContainerRovio(param1:XML, param2:UIContainerRovio, param3:§6"§, param4:MovieClip = null)
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
         if(!(_loc16_ && param3))
         {
            this.mName = param1.@name;
            if(_loc15_)
            {
               §§push(Boolean(param3));
               if(_loc15_)
               {
                  if(§§pop())
                  {
                     if(!(_loc16_ && this))
                     {
                        this.§4!'§ = param3;
                        if(_loc15_ || this)
                        {
                           addr77:
                           if(!param4)
                           {
                              if(!(_loc16_ && param1))
                              {
                                 _loc12_ = AssetCache.§-9§(mName);
                                 if(_loc15_ || param1)
                                 {
                                    mClip = new _loc12_();
                                    if(!_loc16_)
                                    {
                                       this.§4!'§.movieClip.addChild(mClip);
                                    }
                                 }
                              }
                              addr132:
                              var _loc13_:* = 0;
                              var _loc14_:* = param1.Container;
                              loop0:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc14_,_loc13_));
                                 if(!(_loc16_ && param3))
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                       if(!(_loc16_ && this))
                                       {
                                          this.§4!W§.push(new UIContainerRovio(_loc5_,this,null));
                                       }
                                       continue;
                                    }
                                    if(_loc15_ || param2)
                                    {
                                       if(_loc15_ || this)
                                       {
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(0);
                                             if(!(_loc16_ && param1))
                                             {
                                                _loc13_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   _loc14_ = param1.Repeater;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                      if(_loc15_)
                                                      {
                                                         break loop0;
                                                      }
                                                      break;
                                                   }
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(_loc15_ || param1)
                                                            {
                                                               addr363:
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc15_ || param2)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(_loc15_)
                                                                     {
                                                                        _loc14_ = param1.MovieClip;
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                           if(!_loc16_)
                                                                           {
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       this.§4!W§.push(new §6#§(_loc9_,this));
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc15_ || param2)
                                                                                 {
                                                                                    addr409:
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr420:
                                                                                          §§push(0);
                                                                                          if(_loc15_ || param1)
                                                                                          {
                                                                                             addr428:
                                                                                             _loc13_ = §§pop();
                                                                                             if(!(_loc16_ && param1))
                                                                                             {
                                                                                                addr436:
                                                                                                _loc14_ = param1.Popup;
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(_loc15_ || param3)
                                                                                                            {
                                                                                                               this.§4!W§.push(new §1B§(_loc10_,this));
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         if(_loc15_ || this)
                                                                                                         {
                                                                                                            addr473:
                                                                                                            if(_loc15_ || param2)
                                                                                                            {
                                                                                                               addr481:
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr485:
                                                                                                                  _loc13_ = 0;
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr488:
                                                                                                                     _loc14_ = param1.Slider;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                        break loop9;
                                                                                                                     }
                                                                                                                     addr514:
                                                                                                                  }
                                                                                                                  addr517:
                                                                                                                  if(_loc15_ || this)
                                                                                                                  {
                                                                                                                     this.readInitialVisibility(param1);
                                                                                                                     loop12:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(param1.@MouseDown.toString() != "")
                                                                                                                        {
                                                                                                                           loop6:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc16_ && this)
                                                                                                                              {
                                                                                                                                 continue loop12;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §5j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                 addr626:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    break loop6;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           addr612:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.@MouseUp.toString() != "")
                                                                                                                           {
                                                                                                                              addr588:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §5j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                 addr605:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr588:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseOver.toString() != "")
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || param2)
                                                                                                                                    {
                                                                                                                                       §5j§(§,!k§,param1.@MouseOver);
                                                                                                                                       loop7:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             while(param1.@MouseOut.toString() != "")
                                                                                                                                             {
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §5j§(§@8§,param1.@MouseOut);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr605);
                                                                                                                                                }
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                if(!(_loc16_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr556:
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr588);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                             addr530:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr579:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr612);
                                                                                                                                    }
                                                                                                                                    §§goto(addr626);
                                                                                                                                 }
                                                                                                                                 §§goto(addr579);
                                                                                                                              }
                                                                                                                              §§goto(addr530);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr631:
                                                                                                                  }
                                                                                                                  §§goto(addr605);
                                                                                                               }
                                                                                                               §§goto(addr619);
                                                                                                            }
                                                                                                            §§goto(addr488);
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                      addr465:
                                                                                                   }
                                                                                                   break loop9;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr488);
                                                                                          }
                                                                                          §§goto(addr485);
                                                                                       }
                                                                                       §§goto(addr556);
                                                                                    }
                                                                                    §§goto(addr488);
                                                                                 }
                                                                                 §§goto(addr473);
                                                                                 continue loop11;
                                                                              }
                                                                              addr401:
                                                                           }
                                                                           while(§§pop())
                                                                           {
                                                                              _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                              if(_loc15_ || param3)
                                                                              {
                                                                                 this.§4!W§.push(new UISliderRovio(_loc11_,this));
                                                                              }
                                                                              §§goto(addr514);
                                                                           }
                                                                           §§goto(addr516);
                                                                        }
                                                                     }
                                                                     §§goto(addr485);
                                                                  }
                                                                  §§goto(addr428);
                                                               }
                                                               §§goto(addr420);
                                                            }
                                                            §§goto(addr485);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      else
                                                      {
                                                         _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(!_loc16_)
                                                         {
                                                            this.§4!W§.push(new UITextFieldRovio(_loc8_,this));
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(!(_loc15_ || param3))
                                                            {
                                                               break;
                                                            }
                                                            continue loop17;
                                                         }
                                                         addr344:
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   addr226:
                                                   addr352:
                                                }
                                                §§goto(addr436);
                                             }
                                             §§goto(addr428);
                                          }
                                          §§goto(addr588);
                                       }
                                       §§goto(addr488);
                                    }
                                    §§goto(addr409);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc16_)
                                    {
                                       if(_loc15_)
                                       {
                                          if(_loc15_ || this)
                                          {
                                             §§push(0);
                                             if(!_loc16_)
                                             {
                                                _loc13_ = §§pop();
                                                if(!(_loc16_ && this))
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
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               this.§4!W§.push(new UIButtonRovio(_loc7_,this));
                                                            }
                                                            continue;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        _loc14_ = param1.TextField;
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr485);
                                                               }
                                                               §§goto(addr631);
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr465);
                                                }
                                                §§goto(addr488);
                                             }
                                             §§goto(addr428);
                                          }
                                          §§goto(addr556);
                                       }
                                       §§goto(addr481);
                                    }
                                    §§goto(addr473);
                                 }
                                 else
                                 {
                                    _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                    if(!_loc16_)
                                    {
                                       this.§4!W§.push(new UIRepeaterRovio(_loc6_,this,null));
                                    }
                                    §§goto(addr226);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr132);
                  }
                  super(param1,param2,param4);
                  if(_loc15_ || this)
                  {
                     this.§4!W§ = new Vector.<UIComponentRovio>();
                  }
                  §§goto(addr132);
               }
               §§goto(addr77);
            }
            §§goto(addr132);
         }
         §§goto(addr77);
      }
      
      public function §4E§(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §<m§(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§4!W§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§4!W§.push(param1);
                  addr146:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     while(!(_loc2_ && param1))
                     {
                        param1.setActiveStatus(this.§;!M§);
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(Boolean(this.§@!#§));
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop();
                                       addr91:
                                       §§push(param1.§@!#§);
                                       if(!_loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              §§pop().setVisibility(§§pop());
                              continue;
                           }
                           §§goto(addr91);
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr146);
      }
      
      public function §20§(param1:UIComponentRovio) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§4!W§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_)
               {
                  addr85:
                  param1.mParentContainer = null;
               }
               do
               {
                  this.§4!W§.splice(_loc2_,1);
                  do
                  {
                     mClip.removeChild(param1.mClip);
                  }
                  while(!(_loc4_ || param1));
                  
               }
               while(_loc3_);
               
            }
            return;
         }
         §§goto(addr85);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!mClip)
            {
               if(_loc3_)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc3_ || this)
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
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr207:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr165:
                                 while(!_loc4_)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr181:
                                       while(!(_loc4_ && _loc2_))
                                       {
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    this.setVisibility(false);
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(param1.@enabled);
                                          while(!_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr127:
                                                   while(!_loc4_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(!_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§pop();
                                                               continue loop13;
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr181);
                                                         addr141:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr107:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.setEnabled(true);
                                                                        continue loop9;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.setEnabled(false);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr60:
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr42:
                                                                           return;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         addr106:
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          §§goto(addr165);
                                       }
                                    }
                                    addr198:
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr198);
                           }
                           else
                           {
                              this.setVisibility(true);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr162);
         }
         addr29:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                  if(_loc5_)
                  {
                     addr88:
                     mParentContainer.containerEventOccured(param1,param2,param3);
                  }
                  break;
                  addr95:
               }
               §§push(this.§4!'§);
               if(!_loc5_)
               {
                  §§pop().listenerEventOccured(param1,param2,param3);
                  break;
               }
               addr76:
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && param2))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || param3)
                     {
                        if(!(_loc4_ && param2))
                        {
                           §§goto(addr76);
                           §§push(this.§4!'§);
                        }
                        else
                        {
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr76);
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         for each(_loc2_ in this.§4!W§)
         {
            if(!_loc5_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!(_loc5_ && this))
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(_loc3_)
         {
            if(this.§4!W§)
            {
               if(!_loc2_)
               {
                  addr137:
                  §§push(0);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
               }
               loop0:
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() >= this.§4!W§.length)
                        {
                           loop1:
                           while(!(_loc2_ && _loc1_))
                           {
                              while(true)
                              {
                                 this.§4!W§ = null;
                                 loop3:
                                 while(_loc3_ || _loc2_)
                                 {
                                    §§push(this.§4!'§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             addr53:
                                             this.§4!'§.movieClip.removeChild(mClip);
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             addr26:
                                             while(true)
                                             {
                                                super.clear();
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   return;
                                                }
                                                continue loop1;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr26);
                                    }
                                    §§goto(addr53);
                                 }
                              }
                           }
                           continue;
                        }
                        this.§4!W§[_loc1_].clear();
                        while(true)
                        {
                           §§push(_loc1_);
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc2_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     continue loop0;
                  }
               }
            }
            §§goto(addr91);
         }
         §§goto(addr137);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
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
         var _loc2_:UIComponentRovio = null;
         if(_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_)
            {
               if(this.§4!W§ != null)
               {
                  addr52:
                  for each(_loc2_ in this.§4!W§)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §'§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc4_ && param1))
               {
                  this.setVisibility(param2);
                  addr38:
               }
               §§goto(addr38);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_)
               {
                  if(_loc3_ is UIComponentRovio)
                  {
                     if(_loc5_)
                     {
                        (_loc3_ as UIComponentRovio).setVisibility(param2);
                        if(_loc5_ || param1)
                        {
                        }
                        §§goto(addr127);
                     }
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_ || param2)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_ || param2)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 addr114:
                                 §§push(§§pop() + param1);
                                 if(_loc4_ && this)
                                 {
                                 }
                                 §§goto(addr125);
                              }
                              §§push(" does not exist");
                           }
                           §§push(§§pop() + §§pop());
                        }
                        addr125:
                        §§pop().log(§§pop());
                        §§goto(addr127);
                     }
                     §§goto(addr114);
                  }
               }
            }
            addr127:
            return;
         }
         §§goto(addr38);
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         var _loc3_:UIComponentRovio = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_ || _loc3_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc7_)
                  {
                     return this;
                  }
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§4!W§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
               }
               else if(!(_loc2_ is UIContainerRovio))
               {
                  continue;
               }
               _loc3_ = (_loc2_ as UIContainerRovio).getItemByName(param1);
               if(!_loc6_)
               {
                  if(_loc3_ != null)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §6"§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4!'§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§4!'§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         if(_loc6_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§4!W§)
         {
            if(!(_loc5_ && param1))
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
         if(!(_loc6_ && _loc2_))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§4!W§)
         {
            if(_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
