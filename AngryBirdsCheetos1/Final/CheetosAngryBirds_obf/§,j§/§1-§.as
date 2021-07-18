package §,j§
{
   import § !G§.§ #§;
   import §0F§.§'j§;
   import §1!K§.§<!I§;
   import §1§.§'n§;
   import §1§.§;d§;
   import flash.display.*;
   
   public class §1-§ extends §;d§
   {
       
      
      public var §&_§:§'j§;
      
      public var §%o§:Vector.<§;d§>;
      
      public var §4!Q§:Boolean = false;
      
      public function §1-§(param1:XML, param2:§1-§, param3:§'j§, param4:MovieClip = null)
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
         if(_loc15_ || param1)
         {
            this.mName = param1.@name;
            if(!(_loc16_ && param3))
            {
               if(param3)
               {
                  if(!(_loc16_ && this))
                  {
                     this.§&_§ = param3;
                     if(!_loc16_)
                     {
                        addr72:
                        if(!param4)
                        {
                           if(!_loc16_)
                           {
                              _loc12_ = §<!I§.§;!U§(mName);
                              if(!_loc16_)
                              {
                                 mClip = new _loc12_();
                                 if(_loc15_)
                                 {
                                    this.§&_§.movieClip.addChild(mClip);
                                    addr94:
                                    super(param1,param2,param4);
                                    if(_loc16_)
                                    {
                                    }
                                    var _loc13_:* = 0;
                                    var _loc14_:* = param1.Container;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(!(_loc16_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                             if(_loc15_ || param2)
                                             {
                                                this.§%o§.push(new §1-§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(!(_loc16_ && param1))
                                          {
                                             if(_loc15_ || param3)
                                             {
                                                if(!_loc16_)
                                                {
                                                   §§push(0);
                                                   if(_loc15_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         addr488:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc15_)
                                                            {
                                                               break loop0;
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!_loc16_)
                                                               {
                                                                  this.§%o§.push(new §'3§(_loc11_,this));
                                                               }
                                                               continue;
                                                            }
                                                            addr489:
                                                         }
                                                         addr488:
                                                         addr199:
                                                      }
                                                      addr490:
                                                      if(_loc15_)
                                                      {
                                                         this.readInitialVisibility(param1);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(param1.@MouseDown.toString() != "")
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!(_loc15_ || this))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §2!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                  while(true)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               addr574:
                                                            }
                                                            while(true)
                                                            {
                                                               if(param1.@MouseUp.toString() != "")
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §2!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                     addr560:
                                                                     while(!(_loc15_ || param2))
                                                                     {
                                                                        §§goto(addr574);
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  addr555:
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(param1.@MouseOver.toString() != "")
                                                                  {
                                                                     addr534:
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §2!4§(§6!A§,param1.@MouseOver);
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(!(_loc16_ && param3))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr498:
                                                                                    while(true)
                                                                                    {
                                                                                       if(param1.@MouseOut.toString() != "")
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             if(_loc16_ && param3)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc16_ && this))
                                                                                             {
                                                                                                §2!4§(§'!#§,param1.@MouseOut);
                                                                                                addr527:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr560);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr527);
                                                                                       }
                                                                                       return;
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr548:
                                                                              }
                                                                              §§goto(addr596);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr555);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr534:
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr527);
                                                   }
                                                   addr345:
                                                   _loc13_ = §§pop();
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      _loc14_ = param1.MovieClip;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc14_,_loc13_));
                                                         if(!(_loc16_ && this))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc15_)
                                                               {
                                                                  this.§%o§.push(new §=X§(_loc9_,this));
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc15_ || param3)
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  addr392:
                                                                  if(_loc15_)
                                                                  {
                                                                     addr395:
                                                                     §§push(0);
                                                                     if(_loc15_)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           addr406:
                                                                           _loc14_ = param1.Popup;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              if(!(_loc16_ && param1))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       this.§%o§.push(new §<U§(_loc10_,this));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    addr442:
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       addr450:
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          addr459:
                                                                                          _loc13_ = 0;
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             addr467:
                                                                                             _loc14_ = param1.Slider;
                                                                                             §§goto(addr487);
                                                                                          }
                                                                                          §§goto(addr490);
                                                                                       }
                                                                                       §§goto(addr534);
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                              §§goto(addr488);
                                                                           }
                                                                        }
                                                                        §§goto(addr450);
                                                                     }
                                                                     §§goto(addr459);
                                                                  }
                                                                  §§goto(addr527);
                                                               }
                                                               §§goto(addr490);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr488);
                                                      }
                                                   }
                                                   §§goto(addr490);
                                                }
                                                §§goto(addr596);
                                             }
                                             addr222:
                                             _loc14_ = param1.Button;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                if(_loc15_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(_loc15_ || param2)
                                                      {
                                                         this.§%o§.push(new §0!@§(_loc7_,this));
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc15_ || param1)
                                                   {
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            §§push(0);
                                                            if(_loc15_)
                                                            {
                                                               addr277:
                                                               _loc13_ = §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  addr280:
                                                                  _loc14_ = param1.TextField;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                           if(!(_loc16_ && this))
                                                                           {
                                                                              this.§%o§.push(new §[i§(_loc8_,this));
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           addr331:
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 §§goto(addr459);
                                                                              }
                                                                              §§goto(addr548);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr442);
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                               }
                                                               §§goto(addr490);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr534);
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr488);
                                             }
                                          }
                                          if(!_loc16_)
                                          {
                                             if(!_loc16_)
                                             {
                                                §§push(0);
                                                if(!(_loc16_ && param3))
                                                {
                                                   _loc13_ = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§goto(addr395);
                                          }
                                          §§goto(addr280);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc16_)
                                          {
                                             §§goto(addr205);
                                          }
                                          §§goto(addr442);
                                       }
                                       else
                                       {
                                          _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                          if(!(_loc16_ && this))
                                          {
                                             this.§%o§.push(new §'G§(_loc6_,this,null));
                                          }
                                          §§goto(addr199);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr94);
                     }
                     this.§%o§ = new Vector.<§;d§>();
                     §§goto(addr94);
                  }
                  §§goto(addr72);
               }
               §§goto(addr94);
            }
         }
         §§goto(addr94);
      }
      
      public function §8!@§(param1:§;d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§;d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§;d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§%o§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§%o§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     while(true)
                     {
                        param1.setActiveStatus(this.§<C§);
                        loop3:
                        for(; _loc2_ || _loc3_; if(!(_loc2_ || param1))
                        {
                           continue;
                        },§§goto(addr53))
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc3_ && this))
                              {
                                 §§push(Boolean(this.§4Z§));
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop();
                                          addr83:
                                          §§push(param1.§4Z§);
                                          if(!(_loc3_ && this))
                                          {
                                             addr92:
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       §§goto(addr92);
                                    }
                                    §§pop().setVisibility(§§pop());
                                    while(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          param1.viewWidth = viewWidth;
                                          while(_loc2_ || _loc3_)
                                          {
                                             continue loop3;
                                             param1.viewHeight = viewHeight;
                                             if(_loc2_ || param1)
                                             {
                                                §§goto(addr19);
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr83);
                           }
                        }
                     }
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr111);
      }
      
      public function removeComponent(param1:§;d§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§%o§.indexOf(param1);
         if(_loc4_ || this)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_)
               {
                  param1.mParentContainer = null;
                  do
                  {
                     this.§%o§.splice(_loc2_,1);
                     do
                     {
                        mClip.removeChild(param1.mClip);
                     }
                     while(!(_loc4_ || this));
                     
                  }
                  while(_loc3_);
                  
                  addr85:
               }
               §§goto(addr85);
            }
            return;
         }
         §§goto(addr85);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!mClip)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(!_loc3_)
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
                                 loop10:
                                 while(!(_loc3_ && this))
                                 {
                                    _loc2_ = §§pop();
                                    loop13:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop14:
                                       while(_loc4_ || this)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(_loc4_)
                                             {
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop());
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop13;
                                                   }
                                                   addr146:
                                                }
                                                else
                                                {
                                                   while(!§§pop())
                                                   {
                                                      this.setEnabled(false);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr36);
                                                         }
                                                         continue loop13;
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(_loc3_ && param1)
                                                         {
                                                            addr184:
                                                            while(!_loc3_)
                                                            {
                                                               this.setVisibility(false);
                                                            }
                                                            continue loop4;
                                                            addr184:
                                                         }
                                                         addr36:
                                                         return;
                                                      }
                                                      while(true)
                                                      {
                                                         addr157:
                                                         while(true)
                                                         {
                                                            break loop14;
                                                         }
                                                      }
                                                   }
                                                   this.setEnabled(true);
                                                   addr86:
                                                   §§goto(addr91);
                                                   addr86:
                                                }
                                             }
                                             continue loop3;
                                             addr128:
                                          }
                                          §§push(_loc2_);
                                          continue loop0;
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().toUpperCase() == "TRUE");
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr79:
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§goto(addr86);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      else
                                                      {
                                                         this.setVisibility(true);
                                                         while(true)
                                                         {
                                                         }
                                                         addr176:
                                                      }
                                                      §§goto(addr157);
                                                      §§goto(addr79);
                                                   }
                                                   addr183:
                                                }
                                                §§goto(addr184);
                                             }
                                             else
                                             {
                                                §§goto(addr128);
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       continue loop10;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr183);
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(mParentContainer)
            {
               if(!(_loc5_ && param1))
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  addr76:
               }
               §§goto(addr76);
            }
            else
            {
               §§push(this.§&_§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           addr47:
                           this.§&_§.listenerEventOccured(param1,param2,param3);
                        }
                        else
                        {
                           §§goto(addr76);
                        }
                     }
                  }
                  §§goto(addr19);
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;d§ = null;
         for each(_loc2_ in this.§%o§)
         {
            if(!(_loc5_ && param1))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§%o§)
            {
               if(_loc2_)
               {
                  _loc1_ = 0;
                  addr118:
                  loop6:
                  while(true)
                  {
                     if(_loc1_ >= this.§%o§.length)
                     {
                        addr82:
                        if(_loc2_)
                        {
                           addr84:
                           while(true)
                           {
                              this.§%o§ = null;
                           }
                           addr84:
                        }
                        loop1:
                        while(true)
                        {
                           §§push(this.§&_§);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       addr70:
                                       this.§&_§.movieClip.removeChild(mClip);
                                       loop3:
                                       while(_loc2_)
                                       {
                                          while(true)
                                          {
                                             super.clear();
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             return;
                                          }
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          _loc1_++;
                                       }
                                       addr110:
                                       addr73:
                                    }
                                    while(true)
                                    {
                                       continue loop6;
                                       §§goto(addr110);
                                    }
                                    §§goto(addr82);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr30);
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        this.§%o§[_loc1_].clear();
                     }
                     §§goto(addr70);
                  }
                  addr118:
               }
               §§goto(addr118);
            }
            §§goto(addr84);
         }
         §§goto(addr118);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;d§ = null;
         if(!(_loc6_ && param1))
         {
            super.onParentVisibilityChange(param1);
            if(_loc5_ || _loc2_)
            {
               if(this.§%o§ != null)
               {
                  addr50:
                  for each(_loc2_ in this.§%o§)
                  {
                     if(_loc5_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §7T§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || this)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_ || param2)
               {
                  addr38:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || _loc3_)
               {
                  if(_loc3_ is §;d§)
                  {
                     if(!(_loc4_ && param2))
                     {
                        (_loc3_ as §;d§).setVisibility(param2);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr115);
                     }
                  }
                  else
                  {
                     §§push(§ #§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(_loc5_ || param2)
                        {
                           §§goto(addr108);
                        }
                        §§goto(addr112);
                     }
                     addr108:
                     §§push(§§pop() + param1);
                     if(!_loc4_)
                     {
                        addr112:
                        §§push(§§pop() + " does not exist");
                     }
                     §§pop().log(§§pop());
                     §§goto(addr115);
                  }
                  §§goto(addr115);
               }
            }
            addr115:
            return;
         }
         §§goto(addr38);
      }
      
      public function getItemByName(param1:String) : §;d§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§;d§ = null;
         var _loc3_:§;d§ = null;
         if(!(_loc7_ && this))
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ || _loc2_))
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return this;
         }
         addr55:
         var _loc4_:int = 0;
         var _loc5_:* = this.§%o§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!_loc7_)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(_loc6_ || this)
                     {
                        return _loc2_;
                     }
                  }
                  if(!(_loc2_ is §1-§))
                  {
                     continue;
                  }
               }
               _loc3_ = (_loc2_ as §1-§).getItemByName(param1);
               if(_loc7_ && param1)
               {
                  break;
               }
               if(_loc3_ != null)
               {
                  if(_loc6_ || this)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §'j§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§&_§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§&_§);
                  }
                  else
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         addr53:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;d§ = null;
         if(!_loc5_)
         {
            super.viewWidth = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§%o§)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;d§ = null;
         if(_loc6_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§%o§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
