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
         if(!(_loc16_ && param1))
         {
            this.mName = param1.@name;
            if(!_loc16_)
            {
               §§push(Boolean(param3));
               if(!(_loc16_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc15_)
                     {
                        this.§4!'§ = param3;
                        if(_loc15_ || param1)
                        {
                        }
                        addr85:
                        _loc12_ = AssetCache.§-9§(mName);
                        if(_loc15_ || param1)
                        {
                           mClip = new _loc12_();
                           if(!_loc16_)
                           {
                              this.§4!'§.movieClip.addChild(mClip);
                              addr112:
                              super(param1,param2,param4);
                              if(!_loc16_)
                              {
                                 addr119:
                                 this.§4!W§ = new Vector.<UIComponentRovio>();
                              }
                              var _loc13_:* = 0;
                              var _loc14_:* = param1.Container;
                              loop0:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc14_,_loc13_));
                                 if(_loc15_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                       if(_loc15_ || param1)
                                       {
                                          this.§4!W§.push(new UIContainerRovio(_loc5_,this,null));
                                       }
                                       continue;
                                    }
                                    if(_loc15_ || this)
                                    {
                                       if(!(_loc16_ && param3))
                                       {
                                          if(_loc15_ || this)
                                          {
                                             §§push(0);
                                             if(_loc15_)
                                             {
                                                _loc13_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   _loc14_ = param1.Repeater;
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                            if(_loc15_ || this)
                                                            {
                                                               this.§4!W§.push(new UIRepeaterRovio(_loc6_,this,null));
                                                            }
                                                            continue;
                                                         }
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc16_)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        _loc14_ = param1.Button;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    this.§4!W§.push(new UIButtonRovio(_loc7_,this));
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(_loc15_ || this)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr297:
                                                                                       §§push(0);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr300:
                                                                                          _loc13_ = §§pop();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr313:
                                                                                             _loc14_ = param1.TextField;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                      if(!(_loc16_ && param3))
                                                                                                      {
                                                                                                         this.§4!W§.push(new UITextFieldRovio(_loc8_,this));
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc16_ && param2))
                                                                                                   {
                                                                                                      addr355:
                                                                                                      if(_loc15_ || param2)
                                                                                                      {
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               addr374:
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr377:
                                                                                                                  _loc14_ = param1.MovieClip;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                     if(_loc15_ || this)
                                                                                                                     {
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     addr510:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                           if(!(_loc16_ && param2))
                                                                                                                           {
                                                                                                                              this.§4!W§.push(new UISliderRovio(_loc11_,this));
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           this.readInitialVisibility(param1);
                                                                                                                           loop5:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseDown.toString() != "")
                                                                                                                              {
                                                                                                                                 if(_loc15_ || this)
                                                                                                                                 {
                                                                                                                                    §5j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                    addr631:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr631:
                                                                                                                                 }
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(param1.@MouseUp.toString() != "")
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §5j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                       addr610:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr593:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(param1.@MouseOver.toString() != "")
                                                                                                                                    {
                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             §5j§(§,!k§,param1.@MouseOver);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr525);
                                                                                                                                             }
                                                                                                                                             addr586:
                                                                                                                                          }
                                                                                                                                          §§goto(addr610);
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                    addr525:
                                                                                                                                    loop11:
                                                                                                                                    while(param1.@MouseOut.toString() != "")
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                       addr554:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || param2)
                                                                                                                                          {
                                                                                                                                             addr561:
                                                                                                                                             break loop11;
                                                                                                                                          }
                                                                                                                                          §§goto(addr593);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr636:
                                                                                                                        }
                                                                                                                        §§goto(addr631);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr398:
                                                                                                               }
                                                                                                               addr483:
                                                                                                               _loc14_ = param1.Slider;
                                                                                                               §§goto(addr509);
                                                                                                            }
                                                                                                            addr423:
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               _loc14_ = param1.Popup;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                  if(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr510);
                                                                                                               }
                                                                                                               addr447:
                                                                                                            }
                                                                                                            addr466:
                                                                                                            if(_loc15_ || param2)
                                                                                                            {
                                                                                                               addr475:
                                                                                                               _loc13_ = 0;
                                                                                                               if(_loc15_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr483);
                                                                                                               }
                                                                                                               §§goto(addr512);
                                                                                                            }
                                                                                                            §§goto(addr631);
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   if(_loc15_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   §§goto(addr483);
                                                                                                }
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                    §§goto(addr631);
                                                                                 }
                                                                                 §§goto(addr423);
                                                                              }
                                                                              §§goto(addr512);
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               §§goto(addr561);
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr355);
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
                                                            this.§4!W§.push(new §6#§(_loc9_,this));
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc16_ && this))
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc16_)
                                                               {
                                                                  §§goto(addr423);
                                                               }
                                                               §§goto(addr475);
                                                            }
                                                            §§goto(addr636);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                      §§goto(addr458);
                                                   }
                                                }
                                                §§goto(addr423);
                                             }
                                             §§goto(addr374);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr377);
                                    }
                                    §§goto(addr355);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc15_)
                                    {
                                       this.§4!W§.push(new §1B§(_loc10_,this));
                                    }
                                    continue;
                                 }
                                 if(_loc15_)
                                 {
                                    §§goto(addr458);
                                 }
                                 §§goto(addr512);
                              }
                              §§goto(addr510);
                           }
                        }
                        §§goto(addr112);
                     }
                     addr77:
                     if(!param4)
                     {
                        if(!(_loc16_ && param1))
                        {
                           §§goto(addr85);
                        }
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr85);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                  addr131:
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§;!M§);
                        loop3:
                        while(!_loc2_)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(Boolean(this.§@!#§));
                              if(!_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       addr78:
                                       §§pop();
                                       addr79:
                                       §§push(param1.§@!#§);
                                       if(_loc3_ || _loc2_)
                                       {
                                       }
                                       addr89:
                                       §§pop().setVisibility(§§pop());
                                       while(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             param1.viewWidth = viewWidth;
                                             do
                                             {
                                                param1.viewHeight = viewHeight;
                                             }
                                             while(!_loc3_);
                                             
                                             if(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr20);
                                                }
                                                continue loop3;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr79);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr131);
      }
      
      public function §20§(param1:UIComponentRovio) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§4!W§.indexOf(param1);
         if(!(_loc3_ && this))
         {
            if(_loc2_ >= 0)
            {
               if(!_loc3_)
               {
                  param1.mParentContainer = null;
               }
               while(true)
               {
                  this.§4!W§.splice(_loc2_,1);
                  loop1:
                  while(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        mClip.removeChild(param1.mClip);
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr41);
         }
         §§goto(addr79);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!mClip)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc3_ || _loc2_)
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
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr237:
                           loop18:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr196:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr209:
                                 while(_loc3_ || this)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop18;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.setVisibility(false);
                                 addr223:
                                 while(true)
                                 {
                                 }
                              }
                              addr219:
                           }
                           else
                           {
                              this.setVisibility(true);
                              while(true)
                              {
                              }
                              addr193:
                           }
                           while(true)
                           {
                              §§push(param1.@enabled);
                              loop8:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop9:
                                 while(!_loc4_)
                                 {
                                    §§push(_loc2_);
                                    loop10:
                                    for(; _loc3_; §§push(_loc2_),if(_loc4_)
                                    {
                                       continue;
                                    },if(_loc4_ && param1)
                                    {
                                       continue loop8;
                                    },if(_loc4_)
                                    {
                                       continue loop0;
                                    },§§push(§§pop().toUpperCase() == "TRUE"),if(!_loc4_)
                                    {
                                       addr86:
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr93);
                                       }
                                       while(true)
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             continue loop1;
                                          }
                                          §§pop();
                                          §§goto(addr168);
                                          §§goto(addr86);
                                       }
                                       §§goto(addr67);
                                       addr160:
                                    },§§goto(addr102))
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                          addr93:
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             addr102:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.setEnabled(false);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr103:
                                                         if(_loc3_ || this)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  this.setEnabled(true);
                                                                  addr47:
                                                                  return;
                                                                  addr133:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr193);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr219);
                                                               §§goto(addr103);
                                                            }
                                                            addr168:
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      else
                                                      {
                                                         addr67:
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr103);
                                             }
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr237);
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
      
      public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(Boolean(mParentContainer));
            while(!§§pop())
            {
               §§push(this.§4!'§);
               if(_loc4_ || param3)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           addr70:
                           this.§4!'§.listenerEventOccured(param1,param2,param3);
                           addr75:
                           if(!_loc5_)
                           {
                              §§goto(addr19);
                           }
                           break;
                        }
                        addr19:
                        return;
                        addr89:
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr19);
               }
               §§goto(addr70);
            }
         }
         mParentContainer.containerEventOccured(param1,param2,param3);
         §§goto(addr89);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         for each(_loc2_ in this.§4!W§)
         {
            if(_loc6_)
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
         if(_loc2_ || this)
         {
            if(this.§4!W§)
            {
               if(!(_loc3_ && this))
               {
                  addr151:
                  §§push(0);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(§§pop() >= this.§4!W§.length)
                           {
                              loop1:
                              while(_loc2_ || this)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    this.§4!W§ = null;
                                    while(true)
                                    {
                                       §§push(this.§4!'§);
                                       if(!(_loc3_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                addr77:
                                                this.§4!'§.movieClip.removeChild(mClip);
                                             }
                                             loop4:
                                             while(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   super.clear();
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break loop2;
                                                }
                                                addr139:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr116:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      addr117:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         addr118:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            break loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr30);
                                       }
                                       §§goto(addr77);
                                    }
                                 }
                                 return;
                              }
                              continue;
                           }
                           this.§4!W§[_loc1_].clear();
                           §§goto(addr139);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr109);
         }
         §§goto(addr151);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UIComponentRovio = null;
         if(_loc5_ || param1)
         {
            super.onParentVisibilityChange(param1);
            if(_loc5_ || _loc2_)
            {
               §§goto(addr47);
            }
            §§goto(addr61);
         }
         addr47:
         if(this.§4!W§ != null)
         {
            addr61:
            var _loc3_:int = 0;
            for each(_loc2_ in this.§4!W§)
            {
               if(_loc5_ || _loc3_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §'§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || _loc3_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_ || param1)
               {
                  addr39:
                  this.setVisibility(param2);
               }
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
                        if(_loc4_ && param1)
                        {
                        }
                        §§goto(addr122);
                     }
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() + mName);
                        if(!_loc4_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§push(§§pop() + param1);
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr120);
                              }
                              §§push(" does not exist");
                           }
                           §§push(§§pop() + §§pop());
                        }
                     }
                     addr120:
                     §§pop().log(§§pop());
                     §§goto(addr122);
                  }
                  §§goto(addr122);
               }
            }
            addr122:
            return;
         }
         §§goto(addr39);
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         var _loc3_:UIComponentRovio = null;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!(_loc6_ && this))
            {
               if(mName.toUpperCase() == param1)
               {
                  if(!_loc7_)
                  {
                     var _loc4_:int = 0;
                     var _loc5_:* = this.§4!W§;
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            return this;
         }
         addr57:
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc6_ && this)
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
               if(_loc2_ is UIContainerRovio)
               {
                  _loc3_ = (_loc2_ as UIContainerRovio).getItemByName(param1);
                  if(_loc7_)
                  {
                     if(_loc3_ == null)
                     {
                        continue;
                     }
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                  }
                  return _loc3_;
               }
            }
            return null;
         }
         return _loc2_;
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
      
      override public function getParentView() : §6"§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4!'§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§4!'§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop();
         }
         addr45:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         if(!(_loc5_ && _loc3_))
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§4!W§)
         {
            if(!_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         if(!_loc5_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§4!W§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
