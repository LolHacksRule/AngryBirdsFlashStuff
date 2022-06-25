package §`M§
{
   import §1n§.§ C§;
   import §6z§.§[g§;
   import §=R§.§&W§;
   import §=R§.§7!"§;
   import com.rovio.assets.§9!N§;
   import flash.display.*;
   
   public class §9!#§ extends §&W§
   {
       
      
      public var §3z§:§ C§;
      
      public var §0!i§:Vector.<§&W§>;
      
      public var §-z§:Boolean = false;
      
      public function §9!#§(param1:XML, param2:§9!#§, param3:§ C§, param4:MovieClip = null)
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
         if(_loc15_ || this)
         {
            this.mName = param1.@name;
            if(!(_loc16_ && param2))
            {
               if(param3)
               {
                  if(!_loc16_)
                  {
                     addr62:
                     this.§3z§ = param3;
                     if(!(_loc16_ && param3))
                     {
                        if(!param4)
                        {
                           if(!_loc16_)
                           {
                              _loc12_ = §9!N§.§0!k§(mName);
                              if(_loc15_ || this)
                              {
                                 mClip = new _loc12_();
                                 if(!_loc16_)
                                 {
                                    this.§3z§.movieClip.addChild(mClip);
                                    addr99:
                                    super(param1,param2,param4);
                                    if(!(_loc16_ && param1))
                                    {
                                       addr111:
                                       this.§0!i§ = new Vector.<§&W§>();
                                    }
                                 }
                              }
                              §§goto(addr99);
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
                                    if(_loc15_)
                                    {
                                       this.§0!i§.push(new §9!#§(_loc5_,this,null));
                                    }
                                    continue;
                                 }
                                 if(!(_loc16_ && param2))
                                 {
                                    if(_loc15_ || param3)
                                    {
                                       if(!_loc16_)
                                       {
                                          §§push(0);
                                          if(!_loc16_)
                                          {
                                             _loc13_ = §§pop();
                                             if(!(_loc16_ && param3))
                                             {
                                                _loc14_ = param1.Repeater;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc14_,_loc13_));
                                                   if(_loc15_ || param3)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            this.§0!i§.push(new §[A§(_loc6_,this,null));
                                                         }
                                                         continue;
                                                      }
                                                      if(!(_loc16_ && param3))
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            addr218:
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(0);
                                                               if(_loc15_)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc15_)
                                                                  {
                                                                     _loc14_ = param1.Button;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        addr493:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 this.§0!i§.push(new §<m§(_loc11_,this));
                                                                              }
                                                                              continue;
                                                                           }
                                                                           if(!_loc16_)
                                                                           {
                                                                              this.readInitialVisibility(param1);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(param1.@MouseDown.toString() != "")
                                                                                 {
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §;!9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                       while(true)
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr579:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(param1.@MouseUp.toString() != "")
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §;!9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                          addr572:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr567:
                                                                                    }
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       if(param1.@MouseOver.toString() != "")
                                                                                       {
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §;!9§(§=!g§,param1.@MouseOver);
                                                                                                }
                                                                                                addr538:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr579);
                                                                                             }
                                                                                             §§goto(addr586);
                                                                                          }
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc16_ && this))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(param1.@MouseOut.toString() != "")
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §;!9§(§[$§,param1.@MouseOut);
                                                                                                            }
                                                                                                            addr513:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr586);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            break loop7;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                addr503:
                                                                                             }
                                                                                             §§goto(addr572);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr503);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                              }
                                                                              addr498:
                                                                              addr590:
                                                                           }
                                                                           §§goto(addr586);
                                                                        }
                                                                     }
                                                                     addr252:
                                                                  }
                                                                  addr416:
                                                                  _loc14_ = param1.Popup;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                     if(!_loc16_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr493);
                                                                  }
                                                                  addr441:
                                                               }
                                                               addr277:
                                                               _loc13_ = §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  _loc14_ = param1.TextField;
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                     if(!_loc16_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                           if(!(_loc16_ && param3))
                                                                           {
                                                                              this.§0!i§.push(new §3!@§(_loc8_,this));
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!(_loc16_ && param2))
                                                                        {
                                                                           addr326:
                                                                           if(_loc15_ || this)
                                                                           {
                                                                              addr334:
                                                                              if(!(_loc16_ && param1))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc16_ && param2))
                                                                                 {
                                                                                    addr350:
                                                                                    _loc13_ = §§pop();
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr353:
                                                                                       _loc14_ = param1.MovieClip;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc14_,_loc13_));
                                                                                          if(_loc15_ || param3)
                                                                                          {
                                                                                             break loop19;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr493);
                                                                                       addr373:
                                                                                    }
                                                                                    addr397:
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr400:
                                                                                       §§push(0);
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          addr408:
                                                                                          _loc13_ = §§pop();
                                                                                          if(_loc15_ || param1)
                                                                                          {
                                                                                             §§goto(addr416);
                                                                                          }
                                                                                          addr472:
                                                                                          _loc14_ = param1.Slider;
                                                                                          §§goto(addr492);
                                                                                       }
                                                                                       addr464:
                                                                                       _loc13_ = §§pop();
                                                                                       if(!(_loc16_ && param2))
                                                                                       {
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr495);
                                                                                    }
                                                                                    §§goto(addr513);
                                                                                 }
                                                                                 §§goto(addr408);
                                                                              }
                                                                              §§goto(addr538);
                                                                           }
                                                                           §§goto(addr408);
                                                                        }
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(!(_loc16_ && param3))
                                                                           {
                                                                              §§goto(addr464);
                                                                              §§push(0);
                                                                           }
                                                                           §§goto(addr498);
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           if(_loc15_ || param2)
                                                                           {
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr495);
                                                                        }
                                                                        §§goto(addr452);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                        if(_loc15_)
                                                                        {
                                                                           this.§0!i§.push(new §&!G§(_loc9_,this));
                                                                        }
                                                                        §§goto(addr373);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr495);
                                                            }
                                                            §§goto(addr590);
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         addr258:
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  §§goto(addr277);
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            §§goto(addr586);
                                                         }
                                                         §§goto(addr408);
                                                      }
                                                      §§goto(addr495);
                                                   }
                                                   else
                                                   {
                                                      _loc7_ = §§nextvalue(_loc13_,_loc14_);
                                                      if(_loc15_)
                                                      {
                                                         this.§0!i§.push(new §,c§(_loc7_,this));
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                }
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr400);
                                    }
                                    §§goto(addr334);
                                 }
                                 §§goto(addr258);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc16_ && param1))
                                 {
                                    §§goto(addr452);
                                 }
                                 §§goto(addr495);
                              }
                              else
                              {
                                 _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                 if(!(_loc16_ && param2))
                                 {
                                    this.§0!i§.push(new §%^§(_loc10_,this));
                                 }
                                 §§goto(addr441);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr99);
            }
            §§goto(addr62);
         }
         §§goto(addr111);
      }
      
      public function §5X§(param1:§&W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §2!;§(param1:§&W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§&W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§0!i§.indexOf(param1) < 0)
            {
               loop0:
               while(true)
               {
                  this.§0!i§.push(param1);
                  addr133:
                  loop1:
                  while(true)
                  {
                     param1.mParentContainer = this;
                     while(true)
                     {
                        param1.setActiveStatus(this.§@!"§);
                        loop3:
                        while(!(_loc2_ && this))
                        {
                           §§push(param1);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(Boolean(this.§2]§));
                              if(_loc3_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       §§pop();
                                       addr86:
                                       §§push(param1.§2]§);
                                       if(_loc2_)
                                       {
                                       }
                                       addr91:
                                       §§pop().setVisibility(§§pop());
                                       loop4:
                                       while(_loc3_)
                                       {
                                          param1.viewWidth = viewWidth;
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr86);
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr133);
      }
      
      public function §[!6§(param1:§&W§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§0!i§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc3_ || _loc2_)
               {
                  param1.mParentContainer = null;
               }
               while(true)
               {
                  this.§0!i§.splice(_loc2_,1);
                  loop1:
                  while(_loc3_ || _loc2_)
                  {
                     while(true)
                     {
                        mClip.removeChild(param1.mClip);
                        if(_loc3_ || this)
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
         §§goto(addr75);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!mClip)
            {
               if(!_loc3_)
               {
                  §§goto(addr23);
               }
            }
            var _loc2_:* = param1.@visible;
            if(_loc4_ || _loc2_)
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
                              loop16:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr177:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                    addr180:
                                    while(_loc4_)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop16;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.setVisibility(true);
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1.@enabled);
                                    loop7:
                                    while(_loc4_ || param1)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       _loc2_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(_loc4_ || _loc2_)
                                                      {
                                                         §§pop();
                                                         §§push(§§pop().toUpperCase() == "TRUE");
                                                         continue loop8;
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  this.setEnabled(true);
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            this.setEnabled(false);
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§goto(addr36);
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         addr36:
                                                         return;
                                                         addr96:
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr96);
                                                   }
                                                }
                                                §§push(_loc2_);
                                                addr135:
                                                continue loop2;
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr74);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.setVisibility(false);
                                                addr194:
                                                while(true)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             addr191:
                                          }
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                              }
                           }
                           §§goto(addr191);
                        }
                     }
                  }
               }
            }
            §§goto(addr200);
         }
         addr23:
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
      
      public function containerEventOccured(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
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
               §§push(this.§3z§);
               if(!(_loc5_ && param2))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_ || this)
                        {
                           addr67:
                           this.§3z§.listenerEventOccured(param1,param2,param3);
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                     }
                  }
                  §§goto(addr19);
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
         var _loc2_:§&W§ = null;
         for each(_loc2_ in this.§0!i§)
         {
            if(!(_loc6_ && _loc2_))
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
         if(!_loc2_)
         {
            if(this.§0!i§)
            {
               if(_loc3_)
               {
                  _loc1_ = 0;
                  addr119:
                  loop5:
                  while(true)
                  {
                     if(_loc1_ >= this.§0!i§.length)
                     {
                        addr78:
                        loop0:
                        while(true)
                        {
                           this.§0!i§ = null;
                           while(true)
                           {
                              §§push(this.§3z§);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    addr64:
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(this.§3z§);
                                          break;
                                       }
                                       continue;
                                    }
                                    while(!(_loc2_ && this))
                                    {
                                    }
                                    continue loop0;
                                    addr64:
                                 }
                                 while(true)
                                 {
                                    super.clear();
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr64);
                                    §§goto(addr71);
                                 }
                                 if(_loc3_)
                                 {
                                    break loop0;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop5;
                                    }
                                    addr111:
                                    while(true)
                                    {
                                       _loc1_++;
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr78);
                              }
                              break;
                           }
                           §§pop().movieClip.removeChild(mClip);
                           §§goto(addr64);
                        }
                        return;
                        addr89:
                     }
                     this.§0!i§[_loc1_].clear();
                     §§goto(addr111);
                  }
                  addr119:
               }
               §§goto(addr119);
            }
            §§goto(addr89);
         }
         §§goto(addr119);
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
         while(_loc3_ && _loc3_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&W§ = null;
         if(!_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc6_)
            {
               if(this.§0!i§ != null)
               {
                  addr50:
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§0!i§)
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
         §§goto(addr50);
      }
      
      public function §;!=§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || _loc3_)
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
               if(_loc5_)
               {
                  if(_loc3_ is §&W§)
                  {
                     if(!(_loc4_ && this))
                     {
                        (_loc3_ as §&W§).setVisibility(param2);
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr124);
                     }
                  }
                  else
                  {
                     §§push(§[g§);
                     §§push("WARNING: UIContainer(");
                     if(!(_loc4_ && param2))
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!(_loc4_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() + param1);
                                 if(_loc5_)
                                 {
                                    addr122:
                                    §§push(§§pop() + " does not exist");
                                 }
                              }
                              §§pop().log(§§pop());
                              §§goto(addr124);
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr122);
                  }
               }
            }
            addr124:
            return;
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §&W§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§&W§ = null;
         var _loc3_:§&W§ = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_)
            {
               §§goto(addr32);
            }
            §§goto(addr43);
         }
         addr32:
         if(mName.toUpperCase() == param1)
         {
            if(_loc6_ || param1)
            {
               addr43:
               return this;
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§0!i§;
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
                        return _loc2_;
                     }
                  }
               }
               if(_loc2_ is §9!#§)
               {
                  _loc3_ = (_loc2_ as §9!#§).getItemByName(param1);
                  if(_loc7_ && _loc2_)
                  {
                     break;
                  }
                  if(_loc3_ != null)
                  {
                     if(!(_loc7_ && param1))
                     {
                        break;
                     }
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
         if(!(_loc3_ && _loc3_))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : § C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§3z§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr53);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr53);
         }
         addr53:
         return this.§3z§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&W§ = null;
         if(_loc6_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§0!i§)
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
         var _loc2_:§&W§ = null;
         if(!(_loc5_ && this))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§0!i§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
