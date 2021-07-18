package §+D§
{
   import §5t§.Log;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]#X§;
   import §<w§.§6#'§;
   import com.rovio.assets.§5_§;
   import flash.display.*;
   import flash.events.Event;
   
   public class § #^§ extends §1"z§
   {
       
      
      public var §+"W§:§]#[§;
      
      public var §%"u§:Vector.<§]#X§>;
      
      public var §3"s§:Boolean = false;
      
      public function § #^§(param1:XML, param2:§ #^§, param3:§]#[§, param4:MovieClip = null)
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
            if(_loc15_ || param2)
            {
               if(param3)
               {
                  if(_loc15_)
                  {
                     this.§+"W§ = param3;
                     if(!_loc16_)
                     {
                        addr67:
                        if(!param4)
                        {
                           if(_loc15_)
                           {
                              addr71:
                              _loc12_ = §5_§.§`"G§(mName);
                              if(_loc15_ || this)
                              {
                                 mClip = new _loc12_();
                                 if(_loc15_)
                                 {
                                    this.§+"W§.movieClip.addChild(mClip);
                                    addr94:
                                    super(param1,param2,param4);
                                    if(_loc15_ || param3)
                                    {
                                       addr106:
                                       this.§%"u§ = new Vector.<§]#X§>();
                                    }
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
                                             if(_loc15_ || this)
                                             {
                                                this.§%"u§.push(§"-§.§=#T§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(_loc15_)
                                          {
                                             if(_loc15_)
                                             {
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(0);
                                                   if(!(_loc16_ && param2))
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(!(_loc16_ && this))
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
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     this.§%"u§.push(§"-§.§,#H§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
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
                                                                           if(!_loc16_)
                                                                           {
                                                                              _loc14_ = param1.Button;
                                                                              addr429:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       this.§%"u§.push(§"-§.§@!I§(_loc10_,this));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc15_ || param2)
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr440:
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr444:
                                                                                          _loc13_ = 0;
                                                                                          addr443:
                                                                                          if(_loc15_)
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
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             this.readInitialVisibility(param1);
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                if(param1.@MouseDown.toString() != "")
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      § #A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                      addr576:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr561:
                                                                                                }
                                                                                                addr541:
                                                                                                loop12:
                                                                                                while(param1.@MouseUp.toString() != "")
                                                                                                {
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      § #A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                      addr552:
                                                                                                      addr554:
                                                                                                      while(!_loc15_)
                                                                                                      {
                                                                                                         §§goto(addr576);
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop12;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(param1.@MouseOver.toString() != "")
                                                                                                   {
                                                                                                      loop7:
                                                                                                      while(_loc15_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            § #A§(§;#V§,param1.@MouseOver);
                                                                                                            loop8:
                                                                                                            while(_loc15_ || this)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(param1.@MouseOut.toString() != "")
                                                                                                                     {
                                                                                                                        if(_loc15_ || param2)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ || this))
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              § #A§(§<!^§,param1.@MouseOut);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           if(_loc16_ && param1)
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr541);
                                                                                                                  addr483:
                                                                                                               }
                                                                                                               §§goto(addr547);
                                                                                                            }
                                                                                                            §§goto(addr552);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr483);
                                                                                                }
                                                                                             }
                                                                                             addr580:
                                                                                          }
                                                                                          §§goto(addr526);
                                                                                       }
                                                                                       §§goto(addr554);
                                                                                    }
                                                                                    §§goto(addr447);
                                                                                 }
                                                                              }
                                                                              addr429:
                                                                              addr247:
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        addr393:
                                                                        _loc13_ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr396:
                                                                           _loc14_ = param1.Popup;
                                                                           §§goto(addr421);
                                                                        }
                                                                        §§goto(addr447);
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               if(_loc15_ || param3)
                                                               {
                                                                  if(!(_loc16_ && param2))
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc16_)
                                                                     {
                                                                        _loc13_ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           _loc14_ = param1.TextField;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              if(!_loc16_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       this.§%"u§.push(§"-§.§5;§(_loc8_,this));
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc16_ && param2))
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr329:
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                addr343:
                                                                                                _loc14_ = param1.MovieClip;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            this.§%"u§.push(§"-§.§`"'§(_loc9_,this));
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         addr374:
                                                                                                         if(!(_loc16_ && param3))
                                                                                                         {
                                                                                                            addr382:
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc15_ || param2)
                                                                                                               {
                                                                                                                  §§goto(addr393);
                                                                                                               }
                                                                                                               §§goto(addr444);
                                                                                                            }
                                                                                                            §§goto(addr503);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr474);
                                                                                                   }
                                                                                                   §§goto(addr429);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                          §§goto(addr444);
                                                                                       }
                                                                                       §§goto(addr580);
                                                                                    }
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 §§goto(addr474);
                                                                              }
                                                                              §§goto(addr429);
                                                                           }
                                                                        }
                                                                        §§goto(addr444);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr547);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                            else
                                                            {
                                                               _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc15_ || this)
                                                               {
                                                                  this.§%"u§.push(§"-§.§0!i§(_loc7_,this));
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                §§goto(addr576);
                                             }
                                             §§goto(addr382);
                                          }
                                          §§goto(addr374);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                       if(!(_loc16_ && param3))
                                       {
                                          this.§%"u§.push(§"-§.§6L§(_loc11_,this));
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr474);
                                 }
                              }
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr71);
               }
               §§goto(addr94);
            }
            §§goto(addr67);
         }
         §§goto(addr71);
      }
      
      public function §6#?§(param1:§]#X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §"!-§(param1:§]#X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §;S§(param1:§]#X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§%"u§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§%"u§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     while(_loc3_)
                     {
                        param1.setActiveStatus(this.§;"w§);
                        loop3:
                        for(; _loc3_ || this; do
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        while(param1.viewWidth = viewWidth, do
                        {
                           param1.viewHeight = viewHeight;
                        }
                        while(_loc2_);
                        , !(_loc3_ || _loc2_));
                        ,return)
                        {
                           §§push(param1);
                           if(_loc3_ || param1)
                           {
                              §§push(Boolean(this.§9C§));
                              if(_loc3_ || this)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       addr82:
                                       §§push(param1.§9C§);
                                       if(!_loc2_)
                                       {
                                          addr86:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 §§pop().setVisibility(§§pop());
                                 continue;
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr82);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr42);
      }
      
      public function §#=§(param1:§]#X§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§%"u§.indexOf(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  while(true)
                  {
                     this.§%"u§.splice(_loc2_,1);
                     loop2:
                     while(!_loc4_)
                     {
                        continue loop0;
                        while(true)
                        {
                           mClip.removeChild(param1.mClip);
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr30);
         }
         §§goto(addr77);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!mClip)
            {
               if(_loc4_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:* = param1.@visible;
            if(!(_loc3_ && _loc2_))
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
                           while(true)
                           {
                              §§pop();
                              addr200:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr176:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                 }
                              }
                           }
                           addr199:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.setVisibility(true);
                                 loop8:
                                 for(; !(_loc3_ && this); while(true)
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc4_ || this)
                                    {
                                       §§goto(addr153);
                                    }
                                    §§goto(addr194);
                                 },§§goto(addr176))
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(param1.@enabled);
                                       loop10:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr127:
                                                while(!_loc3_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop8;
                                                      }
                                                      addr138:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            this.setEnabled(false);
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§goto(addr41);
                                                               }
                                                               addr109:
                                                               if(!_loc3_)
                                                               {
                                                                  this.setEnabled(true);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.setVisibility(false);
                                                                     continue loop9;
                                                                  }
                                                                  addr181:
                                                               }
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr41:
                                                      return;
                                                      addr107:
                                                   }
                                                }
                                                §§push(_loc2_);
                                                addr153:
                                                continue loop1;
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr176);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr200);
                              }
                              addr88:
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 §§goto(addr107);
                              }
                              else
                              {
                                 §§goto(addr199);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr181);
         }
         addr28:
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function childUIEventOccured(param1:int, param2:String, param3:§&#X§, param4:Event = null) : void
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
                  addr104:
                  while(true)
                  {
                  }
                  addr81:
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  addr25:
                  return;
                  addr98:
               }
            }
            while(true)
            {
               if(!mParentContainer)
               {
                  §§push(this.§+"W§);
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           if(!_loc5_)
                           {
                              addr58:
                              this.§+"W§.listenerUIEventOccured(param1,param2,param3);
                              addr62:
                              if(_loc6_ || param2)
                              {
                                 break;
                              }
                              addr73:
                              if(_loc5_)
                              {
                                 continue;
                              }
                              mParentContainer.childUIEventOccured(param1,param2,param3,param4);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr62);
                     }
                     break;
                  }
                  §§goto(addr58);
               }
               §§goto(addr73);
            }
            §§goto(addr25);
         }
         §§goto(addr98);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]#X§ = null;
         for each(_loc2_ in this.§%"u§)
         {
            if(!_loc5_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!(_loc5_ && param1))
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_)
         {
            if(this.§%"u§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr121:
                  _loc1_ = 0;
               }
               while(true)
               {
                  if(_loc1_ >= this.§%"u§.length)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           addr84:
                           this.§%"u§ = null;
                           break;
                        }
                        _loc1_++;
                        continue;
                        addr100:
                     }
                     break;
                  }
                  this.§%"u§[_loc1_].clear();
                  §§goto(addr100);
               }
               loop1:
               while(true)
               {
                  §§push(this.§+"W§);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        continue;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§pop().movieClip.removeChild(mClip);
                        addr66:
                        while(true)
                        {
                        }
                     }
                     addr63:
                  }
                  while(true)
                  {
                     super.clear();
                     if(!_loc3_)
                     {
                        addr30:
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     §§goto(addr66);
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr121);
      }
      
      public function §7N§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_)
         {
            if(this.§%"u§)
            {
               if(_loc2_ || this)
               {
                  _loc1_ = 0;
                  while(true)
                  {
                     if(_loc1_ >= this.§%"u§.length)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              this.§%"u§ = new Vector.<§]#X§>();
                              break;
                           }
                           _loc1_++;
                           continue;
                           addr70:
                        }
                        break;
                     }
                     this.§%"u§[_loc1_].clear();
                     §§goto(addr70);
                  }
                  addr93:
               }
               §§goto(addr93);
            }
            return;
         }
         §§goto(addr93);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(_loc2_ && param1);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]#X§ = null;
         if(_loc5_ || _loc3_)
         {
            super.onParentVisibilityChange(param1);
            if(!(_loc6_ && _loc2_))
            {
               if(this.§%"u§ != null)
               {
                  addr50:
                  for each(_loc2_ in this.§%"u§)
                  {
                     if(_loc5_ || _loc2_)
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
      
      public function §'P§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(!(_loc4_ && param2))
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc4_)
               {
                  addr33:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || _loc3_)
               {
                  if(_loc3_ is §]#X§)
                  {
                     if(_loc5_ || param2)
                     {
                        (_loc3_ as §]#X§).setVisibility(param2);
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr110);
                     }
                  }
                  else
                  {
                     §§push(Log);
                     §§push("WARNING: UIContainer(" + mName);
                     if(_loc5_)
                     {
                        §§push(§§pop() + ") setItemVisibility can not be done because item ");
                        if(_loc5_ || param2)
                        {
                           §§goto(addr103);
                        }
                        §§goto(addr107);
                     }
                     addr103:
                     §§push(§§pop() + param1);
                     if(_loc5_)
                     {
                        addr107:
                        §§push(§§pop() + " does not exist");
                     }
                     §§pop().log(§§pop());
                     §§goto(addr110);
                  }
                  §§goto(addr110);
               }
            }
            addr110:
            return;
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §]#X§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§]#X§ = null;
         var _loc3_:§]#X§ = null;
         if(_loc7_ || _loc2_)
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_ || param1)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(!_loc6_)
                  {
                     return this;
                  }
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§%"u§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc7_ || _loc2_)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(_loc7_ || _loc3_)
                     {
                        return _loc2_;
                     }
                  }
                  else if(!(_loc2_ is § #^§))
                  {
                     continue;
                  }
               }
               _loc3_ = (_loc2_ as § #^§).getItemByName(param1);
               if(_loc6_)
               {
                  break;
               }
               if(_loc3_ != null)
               {
                  if(_loc7_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc3_;
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            mClip.mouseEnabled = param1;
            loop0:
            while(param2)
            {
               if(!_loc4_)
               {
                  while(true)
                  {
                     mClip.mouseChildren = param1;
                  }
                  addr43:
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function getParentView() : §]#[§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+"W§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr48);
         }
         addr48:
         return this.§+"W§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]#X§ = null;
         if(!_loc6_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§%"u§)
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
         var _loc2_:§]#X§ = null;
         if(_loc5_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§%"u§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc5_)
         {
            if(!(_loc3_ is §6!D§))
            {
               throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
            }
            if(!_loc4_)
            {
               (_loc3_ as §6!D§).setText(param1);
            }
         }
      }
   }
}
