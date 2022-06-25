package §%4§
{
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
   import flash.display.*;
   
   public class §4!=§ extends §'!,§
   {
       
      
      public var §[0§:§4!,§;
      
      public var §+q§:Vector.<§'!,§>;
      
      public var §7!I§:Boolean = false;
      
      public function §4!=§(param1:XML, param2:§4!=§, param3:§4!,§, param4:MovieClip = null)
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
         if(!(_loc15_ && param3))
         {
            this.mName = param1.@name;
            if(!(_loc15_ && param2))
            {
               if(param3)
               {
                  addr61:
                  this.§[0§ = param3;
                  if(_loc16_ || this)
                  {
                     addr71:
                     if(!param4)
                     {
                        _loc12_ = §]!>§.§8!@§(mName);
                        if(!_loc15_)
                        {
                           mClip = new _loc12_();
                           if(_loc16_)
                           {
                              this.§[0§.movieClip.addChild(mClip);
                              addr91:
                              super(param1,param2,param4);
                              if(!_loc15_)
                              {
                                 addr98:
                                 this.§+q§ = new Vector.<§'!,§>();
                              }
                              var _loc13_:* = 0;
                              var _loc14_:* = param1.Container;
                              loop0:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc14_,_loc13_));
                                 if(_loc16_ || this)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc15_ && param3))
                                       {
                                          §§push(0);
                                          if(!(_loc15_ && this))
                                          {
                                             _loc13_ = §§pop();
                                             if(!(_loc15_ && param1))
                                             {
                                                for each(_loc6_ in param1.Repeater)
                                                {
                                                   if(_loc16_ || param1)
                                                   {
                                                      this.§+q§.push(new §]q§(_loc6_,this,null));
                                                   }
                                                }
                                                if(!_loc15_)
                                                {
                                                   if(_loc16_ || param3)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc15_ && this))
                                                         {
                                                            _loc13_ = §§pop();
                                                            for each(_loc7_ in param1.Button)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  this.§+q§.push(new §7-§(_loc7_,this));
                                                               }
                                                            }
                                                            if(_loc16_ || param2)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc16_)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(!_loc15_)
                                                                     {
                                                                        for each(_loc8_ in param1.TextField)
                                                                        {
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              this.§+q§.push(new §`a§(_loc8_,this));
                                                                           }
                                                                        }
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           addr295:
                                                                           §§push(0);
                                                                           if(_loc16_ || param2)
                                                                           {
                                                                              addr304:
                                                                              _loc13_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr307:
                                                                                 _loc14_ = param1.MovieClip;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc14_,_loc13_));
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 loop5:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       this.§+q§.push(new §#!M§(_loc11_,this));
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 addr332:
                                                                                 addr422:
                                                                              }
                                                                              addr396:
                                                                              _loc14_ = param1.Slider;
                                                                              §§goto(addr421);
                                                                           }
                                                                           addr355:
                                                                           _loc13_ = §§pop();
                                                                           addr356:
                                                                           for each(_loc10_ in param1.Popup)
                                                                           {
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 this.§+q§.push(new §"e§(_loc10_,this));
                                                                              }
                                                                           }
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr385:
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 addr395:
                                                                                 _loc13_ = 0;
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                        }
                                                                        addr425:
                                                                        this.readInitialVisibility(param1);
                                                                        if(!(_loc15_ && param2))
                                                                        {
                                                                           if(param1.@MouseDown.toString() != "")
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §else§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                                 if(!(_loc15_ && param3))
                                                                                 {
                                                                                    §§goto(addr454);
                                                                                 }
                                                                              }
                                                                              §§goto(addr493);
                                                                           }
                                                                           §§goto(addr454);
                                                                        }
                                                                        §§goto(addr493);
                                                                        addr423:
                                                                     }
                                                                     §§goto(addr307);
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            addr343:
                                                            if(!_loc15_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr395);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                      addr454:
                                                      if(param1.@MouseUp.toString() != "")
                                                      {
                                                         if(_loc16_ || param1)
                                                         {
                                                            §else§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                         }
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   §§goto(addr295);
                                                }
                                                §§goto(addr385);
                                             }
                                          }
                                          §§goto(addr304);
                                       }
                                       addr471:
                                       if(param1.@MouseOver.toString() != "")
                                       {
                                          if(!(_loc15_ && this))
                                          {
                                             addr493:
                                             §else§(§[F§,param1.@MouseOver);
                                             §§goto(addr498);
                                          }
                                          §§goto(addr510);
                                       }
                                       addr498:
                                    }
                                    _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc16_)
                                    {
                                       this.§+q§.push(new §4!=§(_loc5_,this,null));
                                    }
                                    continue;
                                    if(param1.@MouseOut.toString() != "")
                                    {
                                       if(_loc16_ || param2)
                                       {
                                          addr510:
                                          §else§(§@^§,param1.@MouseOut);
                                       }
                                    }
                                    return;
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc15_ && param2))
                                    {
                                       §§goto(addr343);
                                    }
                                    §§goto(addr423);
                                 }
                                 else
                                 {
                                    _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                    if(_loc16_ || param1)
                                    {
                                       this.§+q§.push(new §9O§(_loc9_,this));
                                    }
                                    §§goto(addr332);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr98);
               }
               §§goto(addr91);
            }
            §§goto(addr71);
         }
         §§goto(addr61);
      }
      
      public function § try§(param1:§'!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §@;§(param1:§'!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §9!@§(param1:§'!,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§+q§.indexOf(param1) < 0)
         {
            this.§+q§.push(param1);
            if(!_loc3_)
            {
               param1.mParentContainer = this;
               if(!_loc3_)
               {
                  param1.setActiveStatus(this.§`!L§);
               }
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(Boolean(this.§"a§));
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr74:
                           §§pop();
                           §§push(param1.§"a§);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     §§pop().setVisibility(§§pop());
                     if(!_loc3_)
                     {
                        param1.viewWidth = viewWidth;
                        if(_loc3_)
                        {
                        }
                        §§goto(addr91);
                     }
                     param1.viewHeight = viewHeight;
                     §§goto(addr91);
                  }
               }
               §§goto(addr74);
            }
         }
         addr91:
      }
      
      public function §^Y§(param1:§'!,§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§+q§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ >= 0)
            {
               if(!(_loc3_ && param1))
               {
                  param1.mParentContainer = null;
                  if(!(_loc3_ && param1))
                  {
                     this.§+q§.splice(_loc2_,1);
                     if(_loc4_ || param1)
                     {
                        addr77:
                        mClip.removeChild(param1.mClip);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(!mClip)
            {
               if(_loc4_)
               {
                  return;
               }
            }
         }
         var _loc2_:* = param1.@visible;
         §§push(_loc2_);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§pop();
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           §§push(§§pop().toUpperCase() == "FALSE");
                           if(_loc4_ || this)
                           {
                              addr84:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    this.setVisibility(false);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr108:
                                       §§push(param1.@enabled);
                                       if(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                addr119:
                                                §§push(Boolean(§§pop()));
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr127:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr146:
                                                         §§pop();
                                                      }
                                                      addr151:
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr154:
                                                            this.setEnabled(true);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr168:
                                                               return;
                                                               addr164:
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      else
                                                      {
                                                         this.setEnabled(false);
                                                         §§goto(addr168);
                                                      }
                                                   }
                                                   §§goto(addr151);
                                                }
                                                §§goto(addr146);
                                             }
                                             addr148:
                                             §§goto(addr151);
                                             §§push(§§pop().toUpperCase() == "TRUE");
                                          }
                                          §§goto(addr148);
                                          §§push(_loc2_);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr154);
                              }
                              else
                              {
                                 this.setVisibility(true);
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr108);
                                 }
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr84);
               }
               §§goto(addr127);
            }
            §§goto(addr151);
         }
         §§goto(addr148);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            if(mParentContainer)
            {
               if(!_loc4_)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  if(!_loc5_)
                  {
                     addr75:
                     this.§[0§.listenerEventOccured(param1,param2,param3);
                     addr73:
                  }
                  else
                  {
                     addr55:
                  }
                  §§goto(addr79);
               }
               §§goto(addr55);
            }
            else
            {
               §§push(this.§[0§);
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        §§goto(addr73);
                     }
                  }
                  addr79:
                  return;
               }
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'!,§ = null;
         for each(_loc2_ in this.§+q§)
         {
            if(!_loc5_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_ || _loc3_)
         {
            if(this.§+q§)
            {
               if(_loc3_)
               {
                  _loc1_ = 0;
                  addr33:
                  while(_loc1_ < this.§+q§.length)
                  {
                     this.§+q§[_loc1_].clear();
                     _loc1_++;
                  }
               }
               §§goto(addr33);
            }
            this.§+q§ = null;
            if(_loc3_)
            {
               §§push(this.§[0§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc1_)
                     {
                        addr85:
                        this.§[0§.movieClip.removeChild(mClip);
                        if(_loc2_ && _loc2_)
                        {
                        }
                     }
                     §§goto(addr97);
                  }
                  super.clear();
                  addr97:
                  return;
               }
            }
            §§goto(addr85);
         }
         §§goto(addr33);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.setVisibility(param1);
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               this.onParentVisibilityChange(param1);
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'!,§ = null;
         if(!_loc5_)
         {
            super.onParentVisibilityChange(param1);
            if(_loc6_ || this)
            {
               if(this.§+q§ != null)
               {
                  addr56:
                  var _loc3_:int = 0;
                  for each(_loc2_ in this.§+q§)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        _loc2_.onParentVisibilityChange(param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §-!7§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || param1)
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
               if(!_loc4_)
               {
                  if(_loc3_ is §'!,§)
                  {
                     if(_loc5_)
                     {
                        (_loc3_ as §'!,§).setVisibility(param2);
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(§7!+§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_)
                        {
                           addr96:
                           §§push(") setItemVisibility can not be done because item ");
                           if(_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                              }
                              §§goto(addr113);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr96);
                  }
               }
            }
            addr113:
            §§push(§§pop() + param1);
            if(_loc5_ || param2)
            {
               §§push(" does not exist");
            }
            §§pop().log(§§pop());
            return;
         }
         §§goto(addr33);
      }
      
      public function getItemByName(param1:String) : §'!,§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§'!,§ = null;
         var _loc3_:§'!,§ = null;
         if(_loc6_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc6_)
            {
               §§goto(addr42);
            }
            §§goto(addr63);
         }
         addr42:
         if(mName.toUpperCase() == param1)
         {
            if(_loc6_ || this)
            {
               addr63:
               return this;
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = this.§+q§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.mName.toUpperCase() == param1)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               else if(!(_loc2_ is §4!=§))
               {
                  continue;
               }
               _loc3_ = (_loc2_ as §4!=§).getItemByName(param1);
               if(_loc6_ || this)
               {
                  if(_loc3_ != null)
                  {
                     if(!_loc7_)
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
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §4!,§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§[0§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr42);
         }
         addr42:
         return this.§[0§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§'!,§ = null;
         if(_loc5_)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§+q§)
         {
            if(_loc5_)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§'!,§ = null;
         if(!(_loc5_ && this))
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§+q§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
