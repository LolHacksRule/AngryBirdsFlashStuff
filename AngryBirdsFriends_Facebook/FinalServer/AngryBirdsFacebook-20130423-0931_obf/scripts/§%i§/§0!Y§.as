package §%i§
{
   import §+!c§.§;!=§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.*;
   
   public class §0!Y§ extends §!>§
   {
       
      
      public var § f§:§`_§;
      
      public var §+?§:Vector.<§!>§>;
      
      public var §'!u§:Boolean = false;
      
      public function §0!Y§(param1:XML, param2:§0!Y§, param3:§`_§, param4:MovieClip = null)
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
         if(_loc16_)
         {
            this.mName = param1.@name;
            if(!(_loc15_ && this))
            {
               if(param3)
               {
                  if(_loc16_ || this)
                  {
                     this.§ f§ = param3;
                     if(!(_loc15_ && param2))
                     {
                        if(!param4)
                        {
                           if(_loc16_)
                           {
                              addr77:
                              _loc12_ = §?q§.§ q§(mName);
                              if(_loc16_)
                              {
                                 mClip = new _loc12_();
                                 if(!_loc15_)
                                 {
                                    this.§ f§.movieClip.addChild(mClip);
                                    addr95:
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
                                             if(!_loc15_)
                                             {
                                                this.§+?§.push(new §0!Y§(_loc5_,this,null));
                                             }
                                             continue;
                                          }
                                          if(_loc16_ || this)
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§push(0);
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      _loc13_ = §§pop();
                                                      if(_loc16_)
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
                                                                  if(!(_loc15_ && param3))
                                                                  {
                                                                     this.§+?§.push(new §7!t§(_loc6_,this,null));
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc16_)
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     addr214:
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr225:
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
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          this.§+?§.push(new §7"0§(_loc7_,this));
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc15_ && param2))
                                                                                    {
                                                                                       if(_loc16_ || param3)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                if(!(_loc15_ && param1))
                                                                                                {
                                                                                                   _loc14_ = param1.TextField;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                      if(!(_loc15_ && param2))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               this.§+?§.push(new §4"9§(_loc8_,this));
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc16_ || param2)
                                                                                                         {
                                                                                                            addr327:
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               if(_loc16_ || this)
                                                                                                               {
                                                                                                                  addr338:
                                                                                                                  §§push(0);
                                                                                                                  if(_loc16_ || this)
                                                                                                                  {
                                                                                                                     addr346:
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        addr349:
                                                                                                                        _loc14_ = param1.MovieClip;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                                 if(_loc16_ || param1)
                                                                                                                                 {
                                                                                                                                    this.§+?§.push(new §^n§(_loc9_,this));
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 addr385:
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    addr388:
                                                                                                                                    if(!(_loc15_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             addr407:
                                                                                                                                             _loc14_ = param1.Popup;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                {
                                                                                                                                                   break loop1;
                                                                                                                                                }
                                                                                                                                                break loop0;
                                                                                                                                             }
                                                                                                                                             addr427:
                                                                                                                                          }
                                                                                                                                          addr446:
                                                                                                                                          if(_loc16_ || param3)
                                                                                                                                          {
                                                                                                                                             addr455:
                                                                                                                                             _loc13_ = 0;
                                                                                                                                             addr454:
                                                                                                                                             if(!(_loc15_ && param3))
                                                                                                                                             {
                                                                                                                                                addr463:
                                                                                                                                                _loc14_ = param1.Slider;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                                   break loop0;
                                                                                                                                                }
                                                                                                                                                addr488:
                                                                                                                                             }
                                                                                                                                             if(_loc16_ || param2)
                                                                                                                                             {
                                                                                                                                                this.readInitialVisibility(param1);
                                                                                                                                                loop12:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(param1.@MouseDown.toString() != "")
                                                                                                                                                   {
                                                                                                                                                      addr590:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §[o§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                                         addr595:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc15_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr590:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(param1.@MouseUp.toString() != "")
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §[o§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                                               addr583:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr578:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr583);
                                                                                                                                                      }
                                                                                                                                                      loop7:
                                                                                                                                                      for(; param1.@MouseOver.toString() != ""; §§goto(addr583))
                                                                                                                                                      {
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc15_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc15_ && this))
                                                                                                                                                            {
                                                                                                                                                               §[o§(§?"H§,param1.@MouseOver);
                                                                                                                                                               do
                                                                                                                                                               {
                                                                                                                                                                  break loop7;
                                                                                                                                                               }
                                                                                                                                                               while(_loc15_ && param1);
                                                                                                                                                               
                                                                                                                                                               addr500:
                                                                                                                                                               return;
                                                                                                                                                               addr559:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr590);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr559);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(param1.@MouseOut.toString() != "")
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §[o§(§6!E§,param1.@MouseOut);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr595);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr524);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr500);
                                                                                                                                                         §§goto(addr500);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr500);
                                                                                                                                          }
                                                                                                                                          §§goto(addr590);
                                                                                                                                       }
                                                                                                                                       §§goto(addr455);
                                                                                                                                    }
                                                                                                                                    §§goto(addr454);
                                                                                                                                 }
                                                                                                                                 §§goto(addr463);
                                                                                                                              }
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 §§goto(addr446);
                                                                                                                              }
                                                                                                                              §§goto(addr463);
                                                                                                                           }
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  §§goto(addr455);
                                                                                                               }
                                                                                                               §§goto(addr500);
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr385);
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr407);
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  §§goto(addr443);
                                                               }
                                                               addr490:
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc16_)
                                                               {
                                                                  this.§+?§.push(new §=!t§(_loc10_,this));
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr455);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr583);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr490);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                       if(!(_loc15_ && param1))
                                       {
                                          this.§+?§.push(new §>!y§(_loc11_,this));
                                       }
                                       §§goto(addr488);
                                    }
                                    §§goto(addr490);
                                 }
                              }
                              §§goto(addr95);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
                  this.§+?§ = new Vector.<§!>§>();
               }
               §§goto(addr95);
            }
            §§goto(addr77);
         }
         §§goto(addr95);
      }
      
      public function §>!h§(param1:§!>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §!7§(param1:§!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §2!I§(param1:§!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§+?§.indexOf(param1) < 0)
            {
               if(!(_loc2_ && param1))
               {
                  addr129:
                  this.§+?§.push(param1);
               }
               while(true)
               {
                  param1.mParentContainer = this;
                  while(!(_loc2_ && _loc2_))
                  {
                     param1.setActiveStatus(this.§@!Q§);
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(Boolean(this.§!!V§));
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr75:
                                    §§pop();
                                    §§push(param1.§!!V§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                              §§pop().setVisibility(§§pop());
                              do
                              {
                                 param1.viewWidth = viewWidth;
                                 continue loop2;
                              }
                              while(_loc2_);
                              
                              §§goto(addr25);
                           }
                        }
                        §§goto(addr75);
                     }
                  }
               }
            }
            addr25:
            return;
         }
         §§goto(addr129);
      }
      
      public function §<B§(param1:§!>§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§+?§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               loop0:
               while(true)
               {
                  param1.mParentContainer = null;
                  loop1:
                  while(true)
                  {
                     this.§+?§.splice(_loc2_,1);
                     addr78:
                     while(true)
                     {
                        mClip.removeChild(param1.mClip);
                        if(!_loc3_)
                        {
                           if(_loc4_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     addr71:
                  }
               }
            }
            return;
         }
         §§goto(addr78);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!mClip)
            {
               if(_loc3_ || this)
               {
                  §§goto(addr32);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr209:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr188:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    addr191:
                                    while(true)
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                           addr208:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.setVisibility(true);
                              loop5:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.setVisibility(false);
                                       addr203:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr200:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.@enabled);
                                    addr154:
                                    while(_loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop5;
                                    }
                                    §§goto(addr188);
                                    §§goto(addr203);
                                 }
                              }
                           }
                           §§goto(addr200);
                        }
                     }
                  }
               }
            }
            §§goto(addr209);
         }
         addr32:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(mParentContainer)
            {
               if(_loc4_)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  addr81:
               }
               §§goto(addr81);
            }
            else
            {
               §§push(this.§ f§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        if(!_loc5_)
                        {
                           addr67:
                           this.§ f§.listenerEventOccured(param1,param2,param3);
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr81);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§!>§ = null;
         for each(_loc2_ in this.§+?§)
         {
            if(_loc5_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§+?§)
            {
               if(!_loc2_)
               {
                  _loc1_ = 0;
                  addr129:
                  loop7:
                  while(true)
                  {
                     if(_loc1_ >= this.§+?§.length)
                     {
                        loop5:
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              loop0:
                              while(true)
                              {
                                 this.§+?§ = null;
                                 loop1:
                                 while(true)
                                 {
                                    §§push(this.§ f§);
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   continue loop7;
                                                   addr121:
                                                   while(true)
                                                   {
                                                      _loc1_++;
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop0;
                                                addr112:
                                             }
                                             addr64:
                                             this.§ f§.movieClip.removeChild(mClip);
                                          }
                                          while(true)
                                          {
                                             if(!(_loc3_ || _loc1_))
                                             {
                                                continue loop1;
                                             }
                                             if(_loc2_ && _loc3_)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop5;
                                          addr67:
                                       }
                                       while(true)
                                       {
                                          super.clear();
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr67);
                                       }
                                       return;
                                    }
                                    §§goto(addr64);
                                 }
                              }
                              addr105:
                           }
                           else
                           {
                              §§goto(addr121);
                           }
                           §§goto(addr112);
                        }
                     }
                     else
                     {
                        this.§+?§[_loc1_].clear();
                     }
                     §§goto(addr121);
                  }
                  addr129:
               }
               §§goto(addr129);
            }
            §§goto(addr105);
         }
         §§goto(addr129);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!>§ = null;
         if(!(_loc5_ && param1))
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_ || this)
            {
               if(this.§+?§ != null)
               {
                  addr61:
                  for each(_loc2_ in this.§+?§)
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
         §§goto(addr61);
      }
      
      public function §0! §(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(!(_loc4_ && _loc3_))
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_)
               {
                  this.setVisibility(param2);
                  addr36:
               }
               §§goto(addr36);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || param1)
               {
                  if(_loc3_ is §!>§)
                  {
                     if(_loc4_ && param1)
                     {
                     }
                  }
                  else
                  {
                     §§push(§;!=§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     addr107:
                     §§push(§§pop() + param1);
                     if(_loc5_ || param1)
                     {
                        addr116:
                        §§push(§§pop() + " does not exist");
                     }
                     §§pop().log(§§pop());
                  }
                  §§goto(addr119);
               }
               (_loc3_ as §!>§).setVisibility(param2);
               if(_loc4_)
               {
               }
            }
            addr119:
            return;
         }
         §§goto(addr36);
      }
      
      public function getItemByName(param1:String) : §!>§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§!>§ = null;
         var _loc3_:§!>§ = null;
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_ || this)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(!(_loc6_ && this))
                  {
                     return this;
                  }
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§+?§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!_loc6_)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(_loc7_ || param1)
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     addr97:
                     if(!(_loc2_ is §0!Y§))
                     {
                        continue;
                     }
                  }
                  _loc3_ = (_loc2_ as §0!Y§).getItemByName(param1);
                  if(_loc6_ && _loc3_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §`_§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§ f§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr42);
         }
         addr42:
         return this.§ f§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§!>§ = null;
         if(_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§+?§)
         {
            if(!_loc6_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!>§ = null;
         if(!(_loc5_ && this))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§+?§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
