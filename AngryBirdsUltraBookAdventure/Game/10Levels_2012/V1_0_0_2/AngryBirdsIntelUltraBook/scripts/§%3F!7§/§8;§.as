package §?!7§
{
   import §2h§.§'!^§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.*;
   
   public class §8;§ extends §9j§
   {
       
      
      public var §"N§:§'!^§;
      
      public var §>!!§:Vector.<§9j§>;
      
      public var §;b§:Boolean = false;
      
      public function §8;§(param1:XML, param2:§8;§, param3:§'!^§, param4:MovieClip = null)
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
         if(_loc16_ || param3)
         {
            this.mName = param1.@name;
            if(_loc16_)
            {
               addr54:
               if(param3)
               {
                  if(!(_loc15_ && param1))
                  {
                     this.§"N§ = param3;
                     if(_loc16_ || this)
                     {
                        addr73:
                        if(!param4)
                        {
                           if(!_loc15_)
                           {
                              addr77:
                              _loc12_ = §%!G§.§^!B§(mName);
                              if(_loc16_ || this)
                              {
                                 mClip = new _loc12_();
                                 if(!_loc15_)
                                 {
                                    this.§"N§.movieClip.addChild(mClip);
                                    addr100:
                                    super(param1,param2,param4);
                                    if(_loc16_ || this)
                                    {
                                       addr112:
                                       this.§>!!§ = new Vector.<§9j§>();
                                    }
                                 }
                              }
                              §§goto(addr100);
                           }
                           var _loc13_:* = 0;
                           var _loc14_:* = param1.Container;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc14_,_loc13_));
                              if(!(_loc15_ && param3))
                              {
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc16_)
                                    {
                                       this.§>!!§.push(new §8;§(_loc5_,this,null));
                                    }
                                    continue;
                                 }
                                 if(_loc16_ || param2)
                                 {
                                    if(!(_loc15_ && param1))
                                    {
                                       if(!_loc15_)
                                       {
                                          §§push(0);
                                          if(!_loc15_)
                                          {
                                             _loc13_ = §§pop();
                                             if(!(_loc15_ && param3))
                                             {
                                                _loc14_ = param1.Repeater;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(_loc16_ || param3)
                                                         {
                                                            this.§>!!§.push(new §?!x§(_loc6_,this,null));
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc16_ || param2)
                                                      {
                                                         addr221:
                                                         if(_loc16_)
                                                         {
                                                            if(_loc16_ || param2)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(!_loc15_)
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
                                                                              if(_loc16_)
                                                                              {
                                                                                 this.§>!!§.push(new §5!I§(_loc7_,this));
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(!(_loc15_ && param3))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc16_ || param3)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(!(_loc15_ && param3))
                                                                                       {
                                                                                          addr311:
                                                                                          _loc14_ = param1.TextField;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc14_,_loc13_));
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                   if(!(_loc15_ && this))
                                                                                                   {
                                                                                                      this.§>!!§.push(new §"j§(_loc8_,this));
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr342:
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      if(_loc16_ || param1)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr359:
                                                                                                               _loc14_ = param1.MovieClip;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                  if(_loc16_ || param3)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  addr499:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           this.§>!!§.push(new §?D§(_loc11_,this));
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        this.readInitialVisibility(param1);
                                                                                                                        loop12:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(param1.@MouseDown.toString() != "")
                                                                                                                           {
                                                                                                                              addr597:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §7k§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                 addr602:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr597:
                                                                                                                           }
                                                                                                                           loop9:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param1.@MouseUp.toString() != "")
                                                                                                                              {
                                                                                                                                 addr590:
                                                                                                                                 loop5:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    §7k§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          break loop5;
                                                                                                                                       }
                                                                                                                                       §§goto(addr602);
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr581:
                                                                                                                                 addr590:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(param1.@MouseOver.toString() != "")
                                                                                                                                 {
                                                                                                                                    if(!(_loc15_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!(_loc15_ && this))
                                                                                                                                       {
                                                                                                                                          §7k§(§^§,param1.@MouseOver);
                                                                                                                                          for(; _loc16_; if(_loc15_ && param1)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          },§7k§(§[!J§,param1.@MouseOut),§§goto(addr529))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr509);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr562:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr581);
                                                                                                                                       }
                                                                                                                                       §§goto(addr588);
                                                                                                                                    }
                                                                                                                                    §§goto(addr562);
                                                                                                                                 }
                                                                                                                                 addr509:
                                                                                                                                 while(param1.@MouseOut.toString() != "")
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    addr529:
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                       addr536:
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr384:
                                                                                                            }
                                                                                                            addr427:
                                                                                                            _loc14_ = param1.Popup;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               §§goto(addr499);
                                                                                                            }
                                                                                                            addr447:
                                                                                                         }
                                                                                                         addr470:
                                                                                                         _loc13_ = §§pop();
                                                                                                         if(_loc16_ || param3)
                                                                                                         {
                                                                                                            _loc14_ = param1.Slider;
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         §§goto(addr501);
                                                                                                      }
                                                                                                      §§goto(addr590);
                                                                                                   }
                                                                                                   §§goto(addr359);
                                                                                                }
                                                                                                if(_loc16_ || param2)
                                                                                                {
                                                                                                   addr461:
                                                                                                   if(_loc16_ || param3)
                                                                                                   {
                                                                                                      addr469:
                                                                                                      §§goto(addr470);
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                   §§goto(addr564);
                                                                                                }
                                                                                                §§goto(addr501);
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                    addr424:
                                                                                    _loc13_ = §§pop();
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§goto(addr427);
                                                                                    }
                                                                                    §§goto(addr501);
                                                                                 }
                                                                                 §§goto(addr536);
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                        §§goto(addr499);
                                                                     }
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr424);
                                                            }
                                                            §§goto(addr597);
                                                         }
                                                         addr408:
                                                         if(!(_loc15_ && param3))
                                                         {
                                                            §§push(0);
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               §§goto(addr424);
                                                            }
                                                            §§goto(addr470);
                                                         }
                                                         §§goto(addr590);
                                                      }
                                                      if(!(_loc15_ && param3))
                                                      {
                                                         §§goto(addr408);
                                                      }
                                                      §§goto(addr501);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(_loc16_)
                                                      {
                                                         this.§>!!§.push(new §[![§(_loc10_,this));
                                                      }
                                                      continue;
                                                   }
                                                   if(!_loc15_)
                                                   {
                                                      §§goto(addr453);
                                                   }
                                                   §§goto(addr501);
                                                }
                                                §§goto(addr499);
                                             }
                                             §§goto(addr461);
                                          }
                                          §§goto(addr424);
                                       }
                                       §§goto(addr469);
                                    }
                                    §§goto(addr427);
                                 }
                                 §§goto(addr221);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc15_ && param1))
                                 {
                                    §§goto(addr400);
                                 }
                                 §§goto(addr453);
                              }
                              else
                              {
                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                 if(!(_loc15_ && param2))
                                 {
                                    this.§>!!§.push(new §[I§(_loc9_,this));
                                 }
                                 §§goto(addr384);
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr112);
               }
               §§goto(addr100);
            }
            §§goto(addr73);
         }
         §§goto(addr54);
      }
      
      public function §[!`§(param1:§9j§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §]P§(param1:§9j§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§9j§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§>!!§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§>!!§.push(param1);
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(_loc2_ || this)
                     {
                        param1.setActiveStatus(this.§2c§);
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(Boolean(this.§&!g§));
                              if(_loc2_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       §§pop();
                                       addr97:
                                       §§push(param1.§&!g§);
                                       if(_loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              §§pop().setVisibility(§§pop());
                              while(true)
                              {
                                 param1.viewWidth = viewWidth;
                                 loop5:
                                 while(!(_loc3_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             param1.viewHeight = viewHeight;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                continue loop0;
                                             }
                                             continue loop5;
                                          }
                                          return;
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                     }
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr67);
      }
      
      public function §@!g§(param1:§9j§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§>!!§.indexOf(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               if(!_loc4_)
               {
                  param1.mParentContainer = null;
               }
               do
               {
                  this.§>!!§.splice(_loc2_,1);
                  do
                  {
                     mClip.removeChild(param1.mClip);
                  }
                  while(!(_loc3_ || _loc2_));
                  
               }
               while(!(_loc3_ || param1));
               
               addr73:
            }
            return;
         }
         §§goto(addr73);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!mClip)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr212:
               while(true)
               {
                  §§push(§§pop());
                  addr213:
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
                                 addr202:
                                 while(!_loc3_)
                                 {
                                 }
                                 continue loop3;
                                 loop10:
                                 while(_loc4_ || param1)
                                 {
                                    _loc2_ = §§pop();
                                    loop11:
                                    while(_loc4_)
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             continue loop0;
                                          }
                                          continue loop10;
                                          loop14:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_ && _loc2_)
                                             {
                                                break;
                                             }
                                             addr86:
                                             §§push(§§pop().toUpperCase() == "TRUE");
                                             if(!(_loc3_ && param1))
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.setEnabled(false);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(_loc3_ && param1)
                                                         {
                                                            addr108:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               this.setEnabled(true);
                                                               §§goto(addr125);
                                                               continue loop11;
                                                            }
                                                            continue loop14;
                                                         }
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr41);
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr206:
                                                            while(true)
                                                            {
                                                               this.setVisibility(false);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            addr165:
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr125:
                                                      }
                                                      addr41:
                                                      return;
                                                   }
                                                   §§goto(addr108);
                                                   §§goto(addr86);
                                                }
                                                addr106:
                                             }
                                             else
                                             {
                                                addr161:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop14;
                                                   }
                                                }
                                                addr161:
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr165);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr206);
                        }
                        else
                        {
                           this.setVisibility(true);
                        }
                        §§goto(addr196);
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!mParentContainer)
            {
               §§push(this.§"N§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        if(!_loc4_)
                        {
                           addr63:
                           this.§"N§.listenerEventOccured(param1,param2,param3);
                           addr67:
                           if(_loc5_)
                           {
                              §§goto(addr20);
                           }
                           addr20:
                           return;
                           addr61:
                        }
                        else
                        {
                           addr72:
                           mParentContainer.containerEventOccured(param1,param2,param3);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr20);
               }
               §§goto(addr63);
            }
            §§goto(addr72);
         }
         §§goto(addr61);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9j§ = null;
         for each(_loc2_ in this.§>!!§)
         {
            if(_loc6_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!_loc3_)
         {
            if(this.§>!!§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  addr116:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§>!!§.length)
                  {
                     loop1:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.§>!!§ = null;
                           loop3:
                           for(; _loc2_ || _loc2_; while(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr25);
                           })
                           {
                              §§push(this.§"N§);
                              if(!_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       super.clear();
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    addr25:
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(this.§"N§);
                              }
                              §§pop().movieClip.removeChild(mClip);
                           }
                        }
                     }
                     continue;
                  }
                  this.§>!!§[_loc1_].clear();
                  while(true)
                  {
                     _loc1_++;
                     continue loop0;
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr116);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setVisibility(param1);
            do
            {
               this.onParentVisibilityChange(param1);
            }
            while(_loc3_);
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§9j§ = null;
         if(_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc5_ || this)
            {
               §§goto(addr51);
            }
            §§goto(addr55);
         }
         addr51:
         if(this.§>!!§ != null)
         {
            addr55:
            for each(_loc2_ in this.§>!!§)
            {
               if(!_loc6_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §for§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_ || this)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!(_loc5_ && param2))
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
                  if(_loc3_ is §9j§)
                  {
                     if(_loc4_ || this)
                     {
                     }
                     §§goto(addr118);
                  }
                  else
                  {
                     §§push(§!>§);
                     §§push("WARNING: UIContainer(");
                     if(_loc4_)
                     {
                        §§push(§§pop() + mName);
                        if(_loc4_ || this)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr117);
                              }
                              §§goto(addr115);
                           }
                           addr117:
                           §§push(§§pop() + param1);
                           if(_loc4_)
                           {
                              addr115:
                              §§push(" does not exist");
                           }
                           §§pop().log(§§pop());
                           addr118:
                           return;
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr117);
                  }
               }
               (_loc3_ as §9j§).setVisibility(param2);
               if(_loc5_)
               {
               }
            }
            §§goto(addr118);
         }
         §§goto(addr40);
      }
      
      public function getItemByName(param1:String) : §9j§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§9j§ = null;
         var _loc3_:§9j§ = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_ || this)
            {
               §§goto(addr38);
            }
            §§goto(addr44);
         }
         addr38:
         if(mName.toUpperCase() == param1)
         {
            if(!_loc6_)
            {
               addr44:
               return this;
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§>!!§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!(_loc7_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(_loc7_ || _loc3_)
                  {
                     break;
                  }
               }
               if(_loc2_ is §8;§)
               {
                  _loc3_ = (_loc2_ as §8;§).getItemByName(param1);
                  if(_loc7_)
                  {
                     if(_loc3_ == null)
                     {
                        continue;
                     }
                     if(_loc6_ && _loc3_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §'!^§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"N§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr43);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr43);
         }
         addr43:
         return this.§"N§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9j§ = null;
         if(_loc6_ || _loc3_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§>!!§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9j§ = null;
         if(!(_loc5_ && _loc3_))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§>!!§)
         {
            if(_loc6_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
