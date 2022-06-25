package §"!2§
{
   import §'N§.Log;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   
   public class UIContainerRovio extends UIComponentRovio
   {
       
      
      public var §"G§:§-!H§;
      
      public var § !]§:Vector.<UIComponentRovio>;
      
      public var § =§:Boolean = false;
      
      public function UIContainerRovio(param1:XML, param2:UIContainerRovio, param3:§-!H§, param4:MovieClip = null)
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
         if(!(_loc15_ && this))
         {
            this.mName = param1.@name;
            if(!_loc15_)
            {
               addr54:
               §§push(Boolean(param3));
               if(_loc16_)
               {
                  if(§§pop())
                  {
                     if(_loc16_ || this)
                     {
                        addr66:
                        this.§"G§ = param3;
                        if(!_loc15_)
                        {
                           addr73:
                           if(!param4)
                           {
                              if(!_loc15_)
                              {
                                 addr76:
                                 _loc12_ = AssetCache.§,!k§(mName);
                                 if(!(_loc15_ && param3))
                                 {
                                    mClip = new _loc12_();
                                    if(_loc16_ || param1)
                                    {
                                    }
                                    addr108:
                                    super(param1,param2,param4);
                                    if(_loc16_ || param1)
                                    {
                                       addr120:
                                       this.§ !]§ = new Vector.<UIComponentRovio>();
                                    }
                                    var _loc13_:* = 0;
                                    var _loc14_:* = param1.Container;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(!(_loc15_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                             if(!(_loc15_ && this))
                                             {
                                                this.§ !]§.push(new UIContainerRovio(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(!(_loc15_ && param1))
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                if(_loc16_)
                                                {
                                                   §§push(0);
                                                   if(_loc16_ || param1)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!(_loc15_ && this))
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(!_loc15_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     this.§ !]§.push(new UIRepeaterRovio(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!_loc15_)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc16_ || param3)
                                                                        {
                                                                           addr247:
                                                                           _loc13_ = §§pop();
                                                                           if(_loc16_)
                                                                           {
                                                                              _loc14_ = param1.Button;
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(_loc16_ || param3)
                                                                                       {
                                                                                          this.§ !]§.push(new UIButtonRovio(_loc7_,this));
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc16_ || param3)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   _loc14_ = param1.TextField;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(_loc16_ || this)
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   addr340:
                                                                                                }
                                                                                                addr489:
                                                                                                _loc14_ = param1.Slider;
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                   addr511:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         this.§ !]§.push(new UISliderRovio(_loc11_,this));
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   this.readInitialVisibility(param1);
                                                                                                   addr637:
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(param1.@MouseDown.toString() != "")
                                                                                                      {
                                                                                                         addr623:
                                                                                                         loop10:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §?o§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                            addr630:
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                         }
                                                                                                         addr623:
                                                                                                      }
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(param1.@MouseUp.toString() != "")
                                                                                                         {
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc15_ && this))
                                                                                                               {
                                                                                                                  §?o§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                  addr592:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc16_ || param2)
                                                                                                                     {
                                                                                                                        break loop8;
                                                                                                                     }
                                                                                                                     §§goto(addr623);
                                                                                                                     §§goto(addr592);
                                                                                                                  }
                                                                                                                  addr609:
                                                                                                               }
                                                                                                               §§goto(addr630);
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            addr585:
                                                                                                         }
                                                                                                         loop6:
                                                                                                         while(param1.@MouseOver.toString() != "")
                                                                                                         {
                                                                                                            while(_loc15_ && param3)
                                                                                                            {
                                                                                                               §§goto(addr585);
                                                                                                            }
                                                                                                            §?o§(§"!H§,param1.@MouseOver);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop6;
                                                                                                            }
                                                                                                         }
                                                                                                         while(param1.@MouseOut.toString() != "")
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               if(!(_loc15_ && param2))
                                                                                                               {
                                                                                                                  §?o§(§2!O§,param1.@MouseOut);
                                                                                                               }
                                                                                                               §§goto(addr578);
                                                                                                            }
                                                                                                            if(!(_loc15_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc15_ && param3))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr609);
                                                                                                            }
                                                                                                            §§goto(addr564);
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                   }
                                                                                                   addr637:
                                                                                                }
                                                                                                addr512:
                                                                                             }
                                                                                             addr486:
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc15_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr489);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                    if(_loc16_ || param2)
                                                                                    {
                                                                                       addr477:
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          §§goto(addr486);
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr632);
                                                                                    }
                                                                                    §§goto(addr489);
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                           }
                                                                           addr378:
                                                                           _loc14_ = param1.MovieClip;
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              if(_loc16_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       this.§ !]§.push(new §+,§(_loc9_,this));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc15_ && param2))
                                                                                 {
                                                                                    if(!(_loc15_ && param2))
                                                                                    {
                                                                                       addr418:
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc16_ || param1)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                _loc14_ = param1.Popup;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                   if(!(_loc15_ && param2))
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   break loop11;
                                                                                                }
                                                                                                addr458:
                                                                                             }
                                                                                             §§goto(addr477);
                                                                                          }
                                                                                          §§goto(addr486);
                                                                                       }
                                                                                       §§goto(addr637);
                                                                                    }
                                                                                    §§goto(addr489);
                                                                                 }
                                                                                 §§goto(addr469);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr511);
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                     §§goto(addr623);
                                                                  }
                                                                  addr364:
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc15_)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr489);
                                                                     }
                                                                     §§goto(addr486);
                                                                  }
                                                                  §§goto(addr623);
                                                               }
                                                               §§goto(addr512);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  this.§ !]§.push(new UITextFieldRovio(_loc8_,this));
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc16_ || param1)
                                                            {
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§goto(addr364);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr469);
                                                         }
                                                      }
                                                      §§goto(addr477);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr637);
                                             }
                                             §§goto(addr477);
                                          }
                                          §§goto(addr489);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             §§goto(addr469);
                                          }
                                          §§goto(addr489);
                                       }
                                       else
                                       {
                                          _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                          if(_loc16_ || param3)
                                          {
                                             this.§ !]§.push(new §,!J§(_loc10_,this));
                                          }
                                          §§goto(addr458);
                                       }
                                    }
                                 }
                                 this.§"G§.movieClip.addChild(mClip);
                                 §§goto(addr108);
                              }
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr108);
               }
               §§goto(addr73);
            }
            §§goto(addr66);
         }
         §§goto(addr54);
      }
      
      public function §,!>§(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §"C§(param1:UIComponentRovio) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
            if(this.§ !]§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§ !]§.push(param1);
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     for(; _loc3_ || param1; while(!(_loc2_ && _loc2_))
                     {
                        param1.viewWidth = viewWidth;
                        loop5:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              param1.viewHeight = viewHeight;
                              if(!_loc3_)
                              {
                                 continue loop5;
                              }
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr117);
                           }
                           return;
                        }
                     })
                     {
                        param1.setActiveStatus(this.§'!f§);
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(Boolean(this.§4b§));
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       §§pop();
                                       addr86:
                                       §§push(param1.§4b§);
                                       if(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              §§pop().setVisibility(§§pop());
                              continue loop2;
                           }
                           §§goto(addr86);
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr43);
      }
      
      public function §0!d§(param1:UIComponentRovio) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§ !]§.indexOf(param1);
         if(!_loc3_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  addr83:
                  while(true)
                  {
                     this.§ !]§.splice(_loc2_,1);
                     while(_loc4_)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr66:
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!mClip)
            {
               if(_loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr212:
                              loop18:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    if(_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                       addr199:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.setVisibility(true);
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(param1.@enabled);
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      §§push(_loc2_);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr132:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_ || param1)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop11;
                                                               }
                                                               addr156:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           this.setEnabled(true);
                                                                           break;
                                                                        }
                                                                        addr201:
                                                                        while(true)
                                                                        {
                                                                           this.setVisibility(false);
                                                                           addr205:
                                                                           while(true)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  this.setEnabled(false);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr32);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr32:
                                                               return;
                                                               addr114:
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop18;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr201);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr199);
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(Boolean(mParentContainer));
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§"G§);
                  if(_loc5_)
                  {
                     §§pop().listenerEventOccured(param1,param2,param3);
                     break;
                  }
                  addr70:
                  continue;
               }
               if(!_loc5_)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
               }
            }
            return;
         }
         §§goto(addr89);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:UIComponentRovio = null;
         for each(_loc2_ in this.§ !]§)
         {
            if(!_loc6_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!_loc6_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(_loc2_ || _loc3_)
         {
            if(this.§ !]§)
            {
               if(!_loc3_)
               {
                  §§push(0);
                  if(_loc2_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc1_ = §§pop();
                  addr141:
                  loop5:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(§§pop() >= this.§ !]§.length)
                           {
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    this.§ !]§ = null;
                                    while(true)
                                    {
                                       §§push(this.§"G§);
                                       if(_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             addr72:
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(this.§"G§);
                                                   break;
                                                }
                                                continue;
                                             }
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             continue loop5;
                                             addr72:
                                          }
                                          while(true)
                                          {
                                             super.clear();
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   return;
                                                }
                                                addr129:
                                                §§push(_loc1_ + 1);
                                                if(_loc2_)
                                                {
                                                   addr118:
                                                   _loc1_ = int(§§pop());
                                                   continue loop5;
                                                }
                                                §§goto(addr118);
                                             }
                                             else
                                             {
                                                §§goto(addr72);
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    §§pop().movieClip.removeChild(mClip);
                                    §§goto(addr72);
                                 }
                              }
                              addr97:
                           }
                           else
                           {
                              this.§ !]§[_loc1_].clear();
                           }
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr118);
                  }
                  addr141:
               }
               §§goto(addr141);
            }
            §§goto(addr97);
         }
         §§goto(addr141);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(_loc2_);
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         if(!_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_ || param1)
            {
               if(this.§ !]§ != null)
               {
                  addr57:
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§ !]§)
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
         §§goto(addr57);
      }
      
      public function §3N§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || param2)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_ || _loc3_)
               {
                  this.setVisibility(param2);
                  addr43:
               }
               §§goto(addr43);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || param1)
               {
                  if(_loc3_ is UIComponentRovio)
                  {
                     if(_loc4_ && param2)
                     {
                     }
                     §§goto(addr127);
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING: UIContainer(");
                     if(!_loc4_)
                     {
                        §§push(§§pop() + mName);
                        if(!_loc4_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 addr114:
                                 §§push(§§pop() + param1);
                                 if(_loc5_ || this)
                                 {
                                 }
                                 §§goto(addr125);
                              }
                              §§push(" does not exist");
                           }
                           addr125:
                           §§pop().log(§§pop());
                           addr127:
                           return;
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr114);
                  }
               }
               (_loc3_ as UIComponentRovio).setVisibility(param2);
               if(_loc4_)
               {
               }
            }
            §§goto(addr127);
         }
         §§goto(addr43);
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:UIComponentRovio = null;
         var _loc3_:UIComponentRovio = null;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(!(_loc7_ && this))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!_loc7_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ || _loc3_))
                  {
                     §§goto(addr56);
                  }
               }
               §§goto(addr56);
            }
            return this;
         }
         addr56:
         var _loc4_:int = 0;
         var _loc5_:* = this.§ !]§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!(_loc7_ && param1))
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     addr107:
                     if(!(_loc2_ is UIContainerRovio))
                     {
                        continue;
                     }
                  }
                  _loc3_ = (_loc2_ as UIContainerRovio).getItemByName(param1);
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
                  if(_loc3_ != null)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr107);
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §-!H§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§"G§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§"G§);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         addr49:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:UIComponentRovio = null;
         if(_loc6_ || _loc2_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§ !]§)
         {
            if(_loc6_ || this)
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
         if(!(_loc6_ && _loc3_))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§ !]§)
         {
            if(!(_loc6_ && this))
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
