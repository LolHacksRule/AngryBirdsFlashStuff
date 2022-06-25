package §_-6C§
{
   import §_-0BH§.§_-FK§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.*;
   
   public class §_-gt§ extends §_-rD§
   {
       
      
      public var §_-hg§:§_-5q§;
      
      public var §_-057§:Vector.<§_-rD§>;
      
      public var §_-lQ§:Boolean = false;
      
      public function §_-gt§(param1:XML, param2:§_-gt§, param3:§_-5q§, param4:MovieClip = null)
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
         if(_loc16_ || param2)
         {
            this.mName = param1.@name;
            if(!_loc15_)
            {
               if(param3)
               {
                  if(!_loc15_)
                  {
                     addr58:
                     this.§_-hg§ = param3;
                     if(_loc16_ || param1)
                     {
                     }
                     addr103:
                     var _loc13_:* = 0;
                     var _loc14_:* = param1.Container;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        if(_loc16_ || param1)
                        {
                           if(§§pop())
                           {
                              _loc5_ = §§nextvalue(_loc13_,_loc14_);
                              if(!_loc15_)
                              {
                                 this.§_-057§.push(new §_-gt§(_loc5_,this,null));
                              }
                              continue;
                           }
                           if(_loc16_)
                           {
                              if(_loc16_ || param2)
                              {
                                 if(!(_loc15_ && param3))
                                 {
                                    §§push(0);
                                    if(!_loc15_)
                                    {
                                       _loc13_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          _loc14_ = param1.Repeater;
                                          loop1:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc14_,_loc13_));
                                             if(_loc16_ || param1)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                   if(_loc16_)
                                                   {
                                                      this.§_-057§.push(new §_-05d§(_loc6_,this,null));
                                                   }
                                                   continue;
                                                }
                                                if(!_loc15_)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      if(_loc16_ || this)
                                                      {
                                                         §§push(0);
                                                         if(_loc16_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            if(_loc16_ || param3)
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
                                                                           this.§_-057§.push(new §_-Mu§(_loc7_,this));
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr244:
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           addr252:
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr263:
                                                                                 _loc13_ = §§pop();
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    _loc14_ = param1.TextField;
                                                                                    addr266:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc14_,_loc13_));
                                                                                       if(!(_loc15_ && param3))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                this.§_-057§.push(new §_-0Eo§(_loc8_,this));
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             if(!(_loc15_ && param3))
                                                                                             {
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr321:
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         _loc14_ = param1.MovieClip;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            addr415:
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     if(_loc16_ || param1)
                                                                                                                     {
                                                                                                                        addr426:
                                                                                                                        if(!(_loc15_ && param3))
                                                                                                                        {
                                                                                                                           addr435:
                                                                                                                           _loc13_ = 0;
                                                                                                                           if(!(_loc15_ && this))
                                                                                                                           {
                                                                                                                              _loc14_ = param1.Slider;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              addr466:
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 this.readInitialVisibility(param1);
                                                                                                                                 loop8:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(param1.@MouseDown.toString() != "")
                                                                                                                                    {
                                                                                                                                       addr562:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §_-Ay§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                                                          addr567:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr562:
                                                                                                                                    }
                                                                                                                                    loop11:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param1.@MouseUp.toString() != "")
                                                                                                                                       {
                                                                                                                                          loop12:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §_-Ay§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                                                             addr553:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr562);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop11;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr474);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr553);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(param1.@MouseOver.toString() != "")
                                                                                                                                          {
                                                                                                                                             §§goto(addr517);
                                                                                                                                          }
                                                                                                                                          addr474:
                                                                                                                                          loop17:
                                                                                                                                          while(param1.@MouseOut.toString() != "")
                                                                                                                                          {
                                                                                                                                             if(!(_loc15_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   continue loop11;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §_-Ay§(§_-09A§,param1.@MouseOut);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop16;
                                                                                                                                                }
                                                                                                                                                addr496:
                                                                                                                                                if(!(_loc15_ && param3))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc15_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr510:
                                                                                                                                                      break loop17;
                                                                                                                                                   }
                                                                                                                                                   break loop16;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §_-Ay§(§_-0-Q§,param1.@MouseOver);
                                                                                                                                                   continue loop16;
                                                                                                                                                   §§goto(addr496);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr489);
                                                                                                                              addr465:
                                                                                                                              addr463:
                                                                                                                           }
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr466);
                                                                                                                  }
                                                                                                                  §§goto(addr465);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                                  if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     this.§_-057§.push(new §_-SW§(_loc10_,this));
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  addr412:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr354:
                                                                                                      }
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   addr379:
                                                                                                   _loc13_ = §§pop();
                                                                                                   if(_loc16_ || param3)
                                                                                                   {
                                                                                                      addr387:
                                                                                                      _loc14_ = param1.Popup;
                                                                                                      §§goto(addr412);
                                                                                                   }
                                                                                                   §§goto(addr466);
                                                                                                }
                                                                                                §§goto(addr562);
                                                                                             }
                                                                                             addr368:
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!(_loc15_ && this))
                                                                                                {
                                                                                                   §§goto(addr379);
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                             §§goto(addr510);
                                                                                          }
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr426);
                                                                              }
                                                                              §§goto(addr379);
                                                                           }
                                                                           §§goto(addr489);
                                                                        }
                                                                        §§goto(addr387);
                                                                     }
                                                                     §§goto(addr365);
                                                                  }
                                                                  break loop1;
                                                               }
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr321);
                                                      }
                                                      §§goto(addr489);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr466);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                if(_loc16_ || param2)
                                                {
                                                   this.§_-057§.push(new §_-k6§(_loc9_,this));
                                                }
                                                continue;
                                             }
                                             if(_loc16_ || param2)
                                             {
                                                §§goto(addr365);
                                             }
                                             §§goto(addr466);
                                          }
                                          §§goto(addr415);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr541);
                              }
                              §§goto(addr426);
                           }
                           §§goto(addr244);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc11_ = §§nextvalue(_loc13_,_loc14_);
                           if(_loc16_)
                           {
                              this.§_-057§.push(new §_-wm§(_loc11_,this));
                           }
                           continue;
                        }
                        §§goto(addr466);
                     }
                  }
                  if(!param4)
                  {
                     if(_loc16_)
                     {
                        _loc12_ = §_-Fc§.§_-YE§(mName);
                        if(_loc16_)
                        {
                           mClip = new _loc12_();
                           if(_loc15_)
                           {
                           }
                           addr90:
                           super(param1,param2,param4);
                           if(!_loc15_)
                           {
                              addr97:
                              this.§_-057§ = new Vector.<§_-rD§>();
                           }
                           §§goto(addr103);
                        }
                        this.§_-hg§.movieClip.addChild(mClip);
                        §§goto(addr90);
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr58);
      }
      
      public function §_-02i§(param1:§_-rD§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §_-ZW§(param1:§_-rD§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§_-rD§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§_-057§.indexOf(param1) < 0)
            {
               while(true)
               {
                  this.§_-057§.push(param1);
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     loop2:
                     while(true)
                     {
                        param1.setActiveStatus(this.§_-rE§);
                        do
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §§push(param1);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(Boolean(this.§_-ej§));
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop();
                                       addr83:
                                       §§push(param1.§_-ej§);
                                       if(!_loc2_)
                                       {
                                       }
                                       addr88:
                                       §§pop().setVisibility(§§pop());
                                       continue loop2;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr83);
                        }
                        while(_loc3_ && _loc2_);
                        
                        addr43:
                     }
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr113);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §_-08X§(param1:§_-rD§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§_-057§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               if(!(_loc3_ && this))
               {
                  param1.mParentContainer = null;
                  addr85:
                  while(true)
                  {
                     this.§_-057§.splice(_loc2_,1);
                     while(_loc4_ || _loc2_)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr26);
                     }
                  }
                  addr85:
               }
               §§goto(addr85);
            }
            addr26:
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
               if(_loc4_)
               {
                  §§goto(addr23);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr194:
                           while(true)
                           {
                              §§pop();
                              addr195:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr167:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                 }
                              }
                           }
                           addr194:
                        }
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.setVisibility(false);
                                    loop9:
                                    while(!(_loc3_ && this))
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(param1.@enabled);
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop7:
                                             while(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      while(!(_loc3_ && param1))
                                                      {
                                                         continue loop1;
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.setEnabled(true);
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               this.setEnabled(false);
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§goto(addr36);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               addr132:
                                                               while(_loc4_ || _loc2_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               continue loop8;
                                                            }
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                         continue;
                                                         addr36:
                                                         return;
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                }
                                             }
                                             addr154:
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              else
                              {
                                 this.setVisibility(true);
                              }
                              §§goto(addr154);
                           }
                        }
                     }
                  }
                  §§goto(addr194);
               }
            }
            §§goto(addr147);
         }
         addr23:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(!mParentContainer)
            {
               §§push(this.§_-hg§);
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && param2))
                        {
                           addr72:
                           this.§_-hg§.listenerEventOccured(param1,param2,param3);
                           addr76:
                           if(!_loc5_)
                           {
                              §§goto(addr24);
                           }
                           else
                           {
                              addr81:
                              mParentContainer.containerEventOccured(param1,param2,param3);
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr76);
                  }
                  addr24:
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr81);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-rD§ = null;
         for each(_loc2_ in this.§_-057§)
         {
            if(_loc5_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc5_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_ || _loc3_)
         {
            if(this.§_-057§)
            {
               if(!_loc2_)
               {
                  addr127:
                  _loc1_ = 0;
               }
               while(true)
               {
                  if(_loc1_ >= this.§_-057§.length)
                  {
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§_-057§ = null;
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-hg§);
                              if(_loc3_ || this)
                              {
                                 if(§§pop())
                                 {
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop().movieClip.removeChild(mClip);
                                    addr86:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr83:
                              }
                              while(true)
                              {
                                 super.clear();
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr86);
                              }
                           }
                        }
                     }
                     addr105:
                  }
                  else
                  {
                     this.§_-057§[_loc1_].clear();
                  }
                  _loc1_++;
               }
            }
            §§goto(addr105);
         }
         §§goto(addr127);
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
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-rD§ = null;
         if(!_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(!(_loc6_ && param1))
            {
               if(this.§_-057§ != null)
               {
                  addr55:
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§_-057§)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function §_-dA§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(!_loc5_)
               {
                  this.setVisibility(param2);
                  addr30:
               }
               §§goto(addr30);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc4_ || _loc3_)
               {
                  if(_loc3_ is §_-rD§)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        (_loc3_ as §_-rD§).setVisibility(param2);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§_-FK§);
                     §§push("WARNING: UIContainer(");
                     if(!_loc5_)
                     {
                        §§push(§§pop() + mName);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr112);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr110);
                  }
               }
            }
            addr112:
            §§push(§§pop() + param1);
            if(_loc4_ || _loc3_)
            {
               addr110:
               §§push(" does not exist");
            }
            §§pop().log(§§pop());
            return;
         }
         §§goto(addr30);
      }
      
      public function getItemByName(param1:String) : §_-rD§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-rD§ = null;
         var _loc3_:§_-rD§ = null;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_ || _loc3_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc7_ || this)
                  {
                     §§goto(addr69);
                  }
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§_-057§;
            while(true)
            {
               for each(_loc2_ in _loc5_)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  else if(!(_loc2_ is §_-gt§))
                  {
                     continue;
                  }
                  _loc3_ = (_loc2_ as §_-gt§).getItemByName(param1);
                  if(!_loc6_)
                  {
                     if(_loc3_ != null)
                     {
                        if(_loc7_)
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
         addr69:
         return this;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §_-5q§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-hg§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr47);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr47);
         }
         addr47:
         return this.§_-hg§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-rD§ = null;
         if(!_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§_-057§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-rD§ = null;
         if(!_loc6_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§_-057§)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
