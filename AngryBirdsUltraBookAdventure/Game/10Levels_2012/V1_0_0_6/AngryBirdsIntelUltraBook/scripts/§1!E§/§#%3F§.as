package §1!E§
{
   import §"x§.§-8§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.*;
   
   public class §#?§ extends §&! §
   {
       
      
      public var §"h§:§4`§;
      
      public var §6!§:Vector.<§&! §>;
      
      public var §`u§:Boolean = false;
      
      public function §#?§(param1:XML, param2:§#?§, param3:§4`§, param4:MovieClip = null)
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
         if(!(_loc15_ && param1))
         {
            this.mName = param1.@name;
            if(_loc16_ || this)
            {
               if(param3)
               {
                  if(!_loc15_)
                  {
                     this.§"h§ = param3;
                     if(!_loc16_)
                     {
                     }
                     addr102:
                     this.§6!§ = new Vector.<§&! §>();
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
                              if(_loc16_)
                              {
                                 this.§6!§.push(new §#?§(_loc5_,this,null));
                              }
                              continue;
                           }
                           if(!_loc15_)
                           {
                              if(!_loc15_)
                              {
                                 if(_loc16_ || param3)
                                 {
                                    §§push(0);
                                    if(_loc16_ || this)
                                    {
                                       _loc13_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          _loc14_ = param1.Repeater;
                                          loop1:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc14_,_loc13_));
                                             if(_loc16_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                                   if(!_loc15_)
                                                   {
                                                      this.§6!§.push(new §31§(_loc6_,this,null));
                                                   }
                                                   continue;
                                                }
                                                if(_loc16_ || param1)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         §§push(0);
                                                         if(_loc16_ || param1)
                                                         {
                                                            addr210:
                                                            _loc13_ = §§pop();
                                                            if(_loc16_ || this)
                                                            {
                                                               _loc14_ = param1.Button;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                  if(_loc16_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  break;
                                                               }
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        if(_loc16_ || param2)
                                                                        {
                                                                           addr378:
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr381:
                                                                              §§push(0);
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 addr389:
                                                                                 _loc13_ = §§pop();
                                                                                 if(_loc16_ || param2)
                                                                                 {
                                                                                    _loc14_ = param1.Popup;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc14_,_loc13_));
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       addr479:
                                                                                       addr481:
                                                                                       loop5:
                                                                                       while(§§pop())
                                                                                       {
                                                                                          _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                          if(_loc16_ || param2)
                                                                                          {
                                                                                             this.§6!§.push(new §3W§(_loc11_,this));
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                       }
                                                                                       addr481:
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          this.readInitialVisibility(param1);
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             if(param1.@MouseDown.toString() != "")
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §-?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                                   addr582:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr577:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(param1.@MouseUp.toString() != "")
                                                                                                {
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         §-?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr499:
                                                                                                            if(_loc15_ && param3)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §-?§(§^v§,param1.@MouseOut);
                                                                                                               addr511:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc15_ && param3))
                                                                                                                  {
                                                                                                                     addr485:
                                                                                                                     return;
                                                                                                                     addr518:
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr582);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr577);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(param1.@MouseOver.toString() != "")
                                                                                                   {
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                   §§goto(addr489);
                                                                                                   §§goto(addr570);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr506);
                                                                                    }
                                                                                    addr422:
                                                                                 }
                                                                                 addr453:
                                                                                 _loc14_ = param1.Slider;
                                                                                 §§goto(addr478);
                                                                              }
                                                                              addr445:
                                                                              _loc13_ = §§pop();
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 §§goto(addr453);
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                           §§goto(addr582);
                                                                        }
                                                                        addr436:
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           addr444:
                                                                           §§goto(addr445);
                                                                           §§push(0);
                                                                        }
                                                                        §§goto(addr506);
                                                                     }
                                                                     §§goto(addr481);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        this.§6!§.push(new §1!=§(_loc9_,this));
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        if(!_loc16_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr364:
                                                                  }
                                                               }
                                                               addr238:
                                                               addr367:
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                         addr263:
                                                         _loc13_ = §§pop();
                                                         if(_loc16_)
                                                         {
                                                            _loc14_ = param1.TextField;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                               if(_loc16_ || param2)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc8_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(_loc16_)
                                                                     {
                                                                        this.§6!§.push(new §?!x§(_loc8_,this));
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(_loc16_ || param3)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc15_ && param2))
                                                                           {
                                                                              addr331:
                                                                              _loc13_ = §§pop();
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 _loc14_ = param1.MovieClip;
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                           §§goto(addr389);
                                                                        }
                                                                        §§goto(addr444);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§goto(addr436);
                                                                  }
                                                                  §§goto(addr389);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr479);
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                }
                                                §§goto(addr481);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                if(!(_loc15_ && this))
                                                {
                                                   this.§6!§.push(new §&!J§(_loc10_,this));
                                                }
                                                continue;
                                             }
                                             if(_loc16_)
                                             {
                                                §§goto(addr433);
                                             }
                                             §§goto(addr481);
                                          }
                                       }
                                       §§goto(addr389);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr506);
                              }
                              §§goto(addr436);
                           }
                           §§goto(addr433);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc16_)
                           {
                              if(!(_loc15_ && this))
                              {
                                 if(!_loc15_)
                                 {
                                    §§push(0);
                                    if(!(_loc15_ && param2))
                                    {
                                       §§goto(addr263);
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr518);
                              }
                              §§goto(addr481);
                           }
                           §§goto(addr433);
                        }
                        else
                        {
                           _loc7_ = §§nextvalue(_loc13_,_loc14_);
                           if(_loc16_)
                           {
                              this.§6!§.push(new §==§(_loc7_,this));
                           }
                           §§goto(addr238);
                        }
                     }
                  }
                  if(!param4)
                  {
                     if(!_loc15_)
                     {
                        _loc12_ = §`!t§.§=J§(mName);
                        if(_loc16_ || param2)
                        {
                           mClip = new _loc12_();
                           if(_loc16_)
                           {
                              this.§"h§.movieClip.addChild(mClip);
                              addr95:
                              super(param1,param2,param4);
                              if(!_loc15_)
                              {
                                 §§goto(addr102);
                              }
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr102);
      }
      
      public function §@l§(param1:§&! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §6!Z§(param1:§&! §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function addComponent(param1:§&! §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§6!§.indexOf(param1) < 0)
            {
               if(!(_loc2_ && param1))
               {
                  this.§6!§.push(param1);
               }
               loop0:
               while(true)
               {
                  param1.mParentContainer = this;
                  loop1:
                  while(true)
                  {
                     param1.setActiveStatus(this.§=F§);
                     addr110:
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc3_ || param1)
                        {
                           §§push(Boolean(this.§8!N§));
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§pop();
                                    addr84:
                                    §§push(param1.§8!N§);
                                    if(!_loc2_)
                                    {
                                       addr88:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 §§goto(addr88);
                              }
                              §§pop().setVisibility(§§pop());
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                                 addr104:
                                 param1.viewWidth = viewWidth;
                                 do
                                 {
                                    param1.viewHeight = viewHeight;
                                 }
                                 while(_loc2_);
                                 
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr84);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr110);
      }
      
      public function §`O§(param1:§&! §) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§6!§.indexOf(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_ >= 0)
            {
               if(!_loc4_)
               {
                  param1.mParentContainer = null;
               }
               loop0:
               while(true)
               {
                  this.§6!§.splice(_loc2_,1);
                  addr80:
                  while(true)
                  {
                     mClip.removeChild(param1.mClip);
                     if(_loc3_ || param1)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr40);
               }
            }
            addr40:
            return;
         }
         §§goto(addr80);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!mClip)
            {
               if(_loc3_ || this)
               {
                  §§goto(addr27);
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
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr194:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr180:
                                 while(true)
                                 {
                                    §§push(§§pop().toUpperCase() == "FALSE");
                                 }
                              }
                           }
                           addr193:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.setVisibility(true);
                                 loop8:
                                 while(true)
                                 {
                                    addr144:
                                    while(true)
                                    {
                                       §§push(param1.@enabled);
                                       addr148:
                                       while(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop8;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr185);
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr135);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr193);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr188);
         }
         addr27:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§,!c§) : void
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
                  addr86:
               }
               §§goto(addr86);
            }
            else
            {
               §§push(this.§"h§);
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || param2)
                        {
                           addr72:
                           this.§"h§.listenerEventOccured(param1,param2,param3);
                        }
                        else
                        {
                           §§goto(addr86);
                        }
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&! § = null;
         for each(_loc2_ in this.§6!§)
         {
            if(!_loc5_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§6!§)
            {
               if(_loc3_)
               {
                  addr127:
                  _loc1_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§6!§.length)
                  {
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§6!§ = null;
                           while(true)
                           {
                              §§push(this.§"h§);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§push(this.§"h§);
                                                break;
                                             }
                                             addr121:
                                             _loc1_++;
                                             break loop2;
                                          }
                                          break loop2;
                                       }
                                       continue;
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       addr31:
                                       while(true)
                                       {
                                          super.clear();
                                          if(!_loc2_)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop2;
                                    addr98:
                                 }
                                 §§goto(addr31);
                              }
                              break;
                           }
                           §§pop().movieClip.removeChild(mClip);
                           §§goto(addr98);
                        }
                        continue loop0;
                     }
                     addr105:
                  }
                  else
                  {
                     this.§6!§[_loc1_].clear();
                  }
                  §§goto(addr121);
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
         if(!_loc2_)
         {
            super.setVisibility(param1);
         }
         do
         {
            this.onParentVisibilityChange(param1);
         }
         while(_loc2_);
         
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&! § = null;
         if(!_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc5_)
            {
               §§goto(addr47);
            }
            §§goto(addr51);
         }
         addr47:
         if(this.§6!§ != null)
         {
            addr51:
            for each(_loc2_ in this.§6!§)
            {
               if(!_loc5_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §package§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc4_)
               {
                  this.setVisibility(param2);
                  addr30:
               }
               §§goto(addr30);
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc4_ || this)
               {
                  if(_loc3_ is §&! §)
                  {
                     if(_loc4_)
                     {
                        (_loc3_ as §&! §).setVisibility(param2);
                        if(_loc5_ && _loc3_)
                        {
                        }
                        §§goto(addr113);
                     }
                  }
                  else
                  {
                     §§push(§-8§);
                     §§push("WARNING: UIContainer(");
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() + mName);
                        if(!_loc5_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 addr101:
                                 §§push(§§pop() + param1);
                                 if(_loc5_ && param2)
                                 {
                                 }
                                 §§goto(addr112);
                              }
                              §§push(" does not exist");
                           }
                           addr112:
                           §§pop().log(§§pop());
                           addr113:
                           return;
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr113);
         }
         §§goto(addr30);
      }
      
      public function getItemByName(param1:String) : §&! §
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§&! § = null;
         var _loc3_:§&! § = null;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_ || param1)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc7_)
                  {
                     §§goto(addr49);
                  }
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§6!§;
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
                  else if(!(_loc2_ is §#?§))
                  {
                     continue;
                  }
                  _loc3_ = (_loc2_ as §#?§).getItemByName(param1);
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc3_ != null)
                     {
                        if(!(_loc6_ && this))
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
         addr49:
         return this;
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
      
      override public function getParentView() : §4`§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"h§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr43);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr43);
         }
         addr43:
         return this.§"h§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&! § = null;
         if(!_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§6!§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&! § = null;
         if(!_loc6_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§6!§)
         {
            if(!_loc6_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
