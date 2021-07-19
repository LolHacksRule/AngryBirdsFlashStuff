package §77§
{
   import §0N§.§2!@§;
   import §5X§.§+!#§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import §^=§.§1"F§;
   import com.rovio.assets.§ !h§;
   import flash.display.*;
   import flash.events.Event;
   
   public class § ",§ extends §@!!§
   {
       
      
      public var §1a§:§1"F§;
      
      public var §1"0§:Vector.<§8n§>;
      
      public var §[b§:Boolean = false;
      
      public function § ",§(param1:XML, param2:§ ",§, param3:§1"F§, param4:MovieClip = null)
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
            if(_loc15_ || param3)
            {
               if(param3)
               {
                  if(!(_loc16_ && param1))
                  {
                     this.§1a§ = param3;
                     if(_loc15_)
                     {
                        if(!param4)
                        {
                           if(!_loc16_)
                           {
                              addr71:
                              _loc12_ = § !h§.§["3§(mName);
                              if(!_loc16_)
                              {
                                 mClip = new _loc12_();
                                 if(!_loc15_)
                                 {
                                 }
                                 addr89:
                                 super(param1,param2,param4);
                                 if(!(_loc16_ && this))
                                 {
                                    addr101:
                                    this.§1"0§ = new Vector.<§8n§>();
                                    addr107:
                                    var _loc13_:* = 0;
                                    var _loc14_:* = param1.Container;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(!_loc16_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                             if(_loc15_)
                                             {
                                                this.§1"0§.push(new § ",§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(_loc15_ || param1)
                                          {
                                             if(!_loc16_)
                                             {
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§push(0);
                                                   if(_loc15_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(_loc15_ || param3)
                                                      {
                                                         _loc14_ = param1.Repeater;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc15_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(_loc15_)
                                                                  {
                                                                     this.§1"0§.push(new §%]§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(!(_loc16_ && param3))
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     addr203:
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        addr211:
                                                                        §§push(0);
                                                                        if(!_loc16_)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(!_loc16_)
                                                                           {
                                                                              _loc14_ = param1.Button;
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(_loc15_ || param3)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                                                       if(!(_loc16_ && param1))
                                                                                       {
                                                                                          this.§1"0§.push(new §@_§(_loc7_,this));
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(!(_loc16_ && param3))
                                                                                                {
                                                                                                   addr290:
                                                                                                   _loc14_ = param1.TextField;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      addr424:
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               addr427:
                                                                                                               if(!(_loc16_ && param3))
                                                                                                               {
                                                                                                                  addr435:
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr439:
                                                                                                                     _loc13_ = 0;
                                                                                                                     addr438:
                                                                                                                     if(_loc15_ || param2)
                                                                                                                     {
                                                                                                                        addr447:
                                                                                                                        _loc14_ = param1.Slider;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                           break loop0;
                                                                                                                        }
                                                                                                                        addr472:
                                                                                                                     }
                                                                                                                     addr475:
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        this.readInitialVisibility(param1);
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.@MouseDown.toString() != "")
                                                                                                                           {
                                                                                                                              addr561:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §]!d§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                 addr576:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr561:
                                                                                                                           }
                                                                                                                           loop5:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseUp.toString() != "")
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §]!d§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                    addr554:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr549:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(param1.@MouseOver.toString() != "")
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §]!d§(§3!R§,param1.@MouseOver);
                                                                                                                                       addr535:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ && this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr549);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr554);
                                                                                                                                    }
                                                                                                                                    addr530:
                                                                                                                                 }
                                                                                                                                 loop11:
                                                                                                                                 while(param1.@MouseOut.toString() != "")
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(_loc16_ && param2)
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §]!d§(§ h§,param1.@MouseOut);
                                                                                                                                             addr512:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         break loop11;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr561);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr530);
                                                                                                                                                }
                                                                                                                                                §§goto(addr554);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr535);
                                                                                                                                    }
                                                                                                                                    §§goto(addr512);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr478:
                                                                                                                     }
                                                                                                                     §§goto(addr576);
                                                                                                                  }
                                                                                                                  §§goto(addr507);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr447);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               this.§1"0§.push(new §0C§(_loc10_,this));
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr421:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr310:
                                                                                                }
                                                                                                §§goto(addr447);
                                                                                             }
                                                                                             addr393:
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                _loc14_ = param1.Popup;
                                                                                                §§goto(addr421);
                                                                                             }
                                                                                             §§goto(addr475);
                                                                                          }
                                                                                          §§goto(addr478);
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr382:
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!(_loc16_ && param2))
                                                                                          {
                                                                                             §§goto(addr393);
                                                                                          }
                                                                                          §§goto(addr439);
                                                                                       }
                                                                                       §§goto(addr438);
                                                                                    }
                                                                                    §§goto(addr435);
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr393);
                                                                     }
                                                                     §§goto(addr561);
                                                                  }
                                                               }
                                                               §§goto(addr447);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc15_)
                                                               {
                                                                  this.§1"0§.push(new §&!>§(_loc8_,this));
                                                               }
                                                               continue;
                                                            }
                                                            if(!_loc16_)
                                                            {
                                                               if(_loc15_ || this)
                                                               {
                                                                  if(!(_loc16_ && param2))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           addr348:
                                                                           _loc14_ = param1.MovieClip;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              if(!(_loc16_ && param3))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       this.§1"0§.push(new §,y§(_loc9_,this));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§goto(addr379);
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                                  §§goto(addr561);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            §§goto(addr447);
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr439);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr348);
                                          }
                                          §§goto(addr379);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                          if(_loc15_ || param1)
                                          {
                                             this.§1"0§.push(new §<#§(_loc11_,this));
                                          }
                                          continue;
                                       }
                                       §§goto(addr447);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              this.§1a§.movieClip.addChild(mClip);
                              §§goto(addr89);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr101);
               }
               §§goto(addr89);
            }
            §§goto(addr101);
         }
         §§goto(addr71);
      }
      
      public function §^U§(param1:§8n§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function setObjectToFront(param1:§8n§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §;!h§(param1:§8n§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§1"0§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§1"0§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     while(true)
                     {
                        param1.setActiveStatus(this.§-7§);
                        while(_loc2_)
                        {
                           continue loop0;
                           loop5:
                           while(!(_loc3_ && _loc2_))
                           {
                              param1.viewHeight = viewHeight;
                              if(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc3_ && param1)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    addr81:
                                    while(true)
                                    {
                                       param1.viewWidth = viewWidth;
                                       continue loop5;
                                    }
                                    addr81:
                                 }
                                 §§goto(addr19);
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr19:
            return;
         }
         §§goto(addr81);
      }
      
      public function § !F§(param1:§8n§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§1"0§.indexOf(param1);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  while(true)
                  {
                     this.§1"0§.splice(_loc2_,1);
                     while(_loc3_)
                     {
                        continue loop0;
                        mClip.removeChild(param1.mClip);
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr30);
                        }
                     }
                  }
               }
               addr81:
            }
            addr30:
            return;
         }
         §§goto(addr81);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(!mClip)
            {
               if(!_loc3_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:* = param1.@visible;
            if(!(_loc3_ && _loc3_))
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
                        if(!§§pop())
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.setVisibility(true);
                                    loop17:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(param1.@enabled);
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(_loc2_);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop12;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc3_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr125:
                                                               while(!(_loc3_ && param1))
                                                               {
                                                                  §§pop();
                                                               }
                                                               continue loop1;
                                                               addr125:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        this.setEnabled(true);
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  this.setEnabled(false);
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§goto(addr41);
                                                                  }
                                                               }
                                                               addr41:
                                                               return;
                                                               addr86:
                                                            }
                                                            while(!_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop17;
                                                               §§goto(addr132);
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§goto(addr125);
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr174:
                                                   addr200:
                                                   while(!(_loc3_ && this))
                                                   {
                                                      this.setVisibility(false);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      continue loop0;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             addr199:
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr200);
                                             }
                                          }
                                       }
                                    }
                                    addr159:
                                 }
                                 §§goto(addr174);
                              }
                           }
                           addr172:
                        }
                        §§goto(addr199);
                     }
                  }
               }
            }
            §§goto(addr159);
         }
         addr28:
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§+!#§, param4:Event = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            if(param4)
            {
               while(true)
               {
                  dispatchEvent(param4);
                  addr99:
                  while(true)
                  {
                  }
               }
               addr96:
            }
            while(true)
            {
               if(!mParentContainer)
               {
                  §§push(this.§1a§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           addr51:
                           this.§1a§.listenerUIEventOccured(param1,param2,param3);
                        }
                        if(_loc6_ || param2)
                        {
                           if(!_loc6_)
                           {
                              addr70:
                              if(_loc6_ || param1)
                              {
                                 break;
                              }
                              continue;
                           }
                           if(!_loc6_)
                           {
                              §§goto(addr96);
                           }
                        }
                        addr93:
                     }
                     return;
                  }
                  §§goto(addr51);
               }
               §§goto(addr70);
            }
            mParentContainer.childUIEventOccured(param1,param2,param3,param4);
         }
         §§goto(addr93);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8n§ = null;
         for each(_loc2_ in this.§1"0§)
         {
            if(!(_loc5_ && this))
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc6_ || param1)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!_loc2_)
         {
            if(this.§1"0§)
            {
               if(_loc3_)
               {
                  addr102:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§1"0§.length)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           this.§1"0§ = null;
                        }
                        addr70:
                     }
                     while(true)
                     {
                        §§push(this.§1a§);
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              addr57:
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.§1a§);
                                    break;
                                 }
                                 continue;
                              }
                              while(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_++;
                                    break;
                                    addr96:
                                 }
                              }
                              continue loop0;
                              addr57:
                           }
                           while(true)
                           {
                              super.clear();
                              if(_loc3_)
                              {
                                 return;
                              }
                              §§goto(addr57);
                           }
                        }
                        break;
                     }
                     §§pop().movieClip.removeChild(mClip);
                     §§goto(addr57);
                  }
                  else
                  {
                     this.§1"0§[_loc1_].clear();
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr102);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(!_loc3_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8n§ = null;
         if(_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc6_)
            {
               if(this.§1"0§ != null)
               {
                  addr40:
                  for each(_loc2_ in this.§1"0§)
                  {
                     if(!(_loc6_ && this))
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      public function §?"C§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(!(_loc5_ && param1))
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  this.setVisibility(param2);
                  addr40:
               }
               §§goto(addr40);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc4_)
               {
                  if(_loc3_ is §8n§)
                  {
                     if(_loc4_)
                     {
                        (_loc3_ as §8n§).setVisibility(param2);
                        if(!_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§2!@§);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(_loc4_ || this)
                        {
                           §§goto(addr92);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr92);
                  }
               }
            }
            addr92:
            §§push(§§pop() + param1);
            if(_loc4_ || _loc3_)
            {
               addr111:
               §§push(§§pop() + " does not exist");
            }
            §§pop().log(§§pop());
            return;
         }
         §§goto(addr40);
      }
      
      public function getItemByName(param1:String) : §8n§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§8n§ = null;
         var _loc3_:§8n§ = null;
         if(!(_loc7_ && param1))
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || this)
                  {
                     return this;
                  }
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§1"0§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                  }
                  else if(!(_loc2_ is § ",§))
                  {
                     continue;
                  }
                  _loc3_ = (_loc2_ as § ",§).getItemByName(param1);
                  if(!(_loc7_ && _loc2_))
                  {
                     if(_loc3_ == null)
                     {
                        continue;
                     }
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  return _loc3_;
               }
               break;
            }
            return null;
         }
         return _loc2_;
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
      
      override public function getParentView() : §1"F§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1a§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr48);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr48);
         }
         addr48:
         return this.§1a§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8n§ = null;
         if(_loc5_)
         {
            super.viewWidth = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§1"0§)
         {
            if(!(_loc6_ && _loc3_))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8n§ = null;
         if(!(_loc5_ && _loc2_))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§1"0§)
         {
            if(!_loc5_)
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
         if(_loc4_ || param1)
         {
            if(!(_loc3_ is §&!>§))
            {
               throw "--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio";
            }
            (_loc3_ as §&!>§).setText(param1);
         }
      }
   }
}
