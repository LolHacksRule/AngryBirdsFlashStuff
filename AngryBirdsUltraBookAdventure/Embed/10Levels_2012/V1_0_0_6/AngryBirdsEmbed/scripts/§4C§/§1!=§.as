package §4C§
{
   import §0w§.§0#§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import com.rovio.assets.§!Q§;
   import flash.display.*;
   
   public class §1!=§ extends §4Y§
   {
       
      
      public var § in§:§0#§;
      
      public var §@_§:Vector.<§4Y§>;
      
      public var §[U§:Boolean = false;
      
      public function §1!=§(param1:XML, param2:§1!=§, param3:§0#§, param4:MovieClip = null)
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
            if(param3)
            {
               this.§ in§ = param3;
               if(!(_loc15_ && param2))
               {
                  addr64:
                  if(!param4)
                  {
                     _loc12_ = §!Q§.§^!H§(mName);
                     if(!_loc15_)
                     {
                        mClip = new _loc12_();
                        if(_loc16_ || param2)
                        {
                        }
                        addr89:
                        super(param1,param2,param4);
                        if(!_loc15_)
                        {
                           addr96:
                           this.§@_§ = new Vector.<§4Y§>();
                        }
                        for each(_loc5_ in param1.Container)
                        {
                           if(_loc16_ || param3)
                           {
                              this.§@_§.push(new §1!=§(_loc5_,this,null));
                           }
                        }
                        if(_loc16_)
                        {
                           if(!_loc15_)
                           {
                              §§push(0);
                              if(_loc16_ || param3)
                              {
                                 var _loc13_:* = §§pop();
                                 if(_loc16_)
                                 {
                                    var _loc14_:* = param1.Repeater;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(_loc16_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                             if(_loc16_)
                                             {
                                                this.§@_§.push(new §->§(_loc6_,this,null));
                                             }
                                             continue;
                                          }
                                          §§push(0);
                                          if(!_loc15_)
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
                                                         if(!(_loc15_ && param3))
                                                         {
                                                            this.§@_§.push(new §6<§(_loc7_,this));
                                                         }
                                                         continue;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(_loc16_ || param2)
                                                            {
                                                               §§push(0);
                                                               if(!_loc15_)
                                                               {
                                                                  _loc13_ = §§pop();
                                                                  if(_loc16_)
                                                                  {
                                                                     §§goto(addr230);
                                                                  }
                                                                  addr319:
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc15_ && param3)
                                                                     {
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§goto(addr481);
                                                               }
                                                               _loc13_ = §§pop();
                                                               _loc14_ = param1.Popup;
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr367);
                                                   }
                                                   break loop1;
                                                }
                                             }
                                             addr230:
                                             for each(_loc8_ in param1.TextField)
                                             {
                                                if(_loc16_)
                                                {
                                                   this.§@_§.push(new §<k§(_loc8_,this));
                                                }
                                             }
                                             if(_loc16_ || this)
                                             {
                                                addr269:
                                                if(_loc16_ || this)
                                                {
                                                   §§push(0);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr286:
                                                      _loc13_ = §§pop();
                                                      if(_loc16_)
                                                      {
                                                         addr289:
                                                         _loc14_ = param1.MovieClip;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            if(_loc16_)
                                                            {
                                                               break loop1;
                                                            }
                                                            addr359:
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     addr368:
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        addr377:
                                                                        _loc13_ = 0;
                                                                        if(!_loc15_)
                                                                        {
                                                                           _loc14_ = param1.Slider;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc14_,_loc13_));
                                                                              addr406:
                                                                              §§goto(addr408);
                                                                           }
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     §§goto(addr411);
                                                                     addr367:
                                                                  }
                                                                  §§goto(addr408);
                                                               }
                                                               else
                                                               {
                                                                  _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     this.§@_§.push(new §'!D§(_loc10_,this));
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc14_,_loc13_));
                                                                     if(_loc15_ && param3)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr351:
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                         }
                                                         addr314:
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr416);
                                             }
                                             addr408:
                                             while(§§pop())
                                             {
                                                _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                if(!(_loc15_ && this))
                                                {
                                                   this.§@_§.push(new §3!"§(_loc11_,this));
                                                }
                                                continue loop9;
                                             }
                                             addr408:
                                             if(!_loc15_)
                                             {
                                                addr411:
                                                this.readInitialVisibility(param1);
                                                if(_loc16_)
                                                {
                                                   addr416:
                                                   if(param1.@MouseDown.toString() != "")
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         §1?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                         if(_loc16_ || this)
                                                         {
                                                            addr435:
                                                            if(param1.@MouseUp.toString() != "")
                                                            {
                                                               if(_loc16_ || param2)
                                                               {
                                                                  §1?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                  if(_loc15_)
                                                                  {
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               addr486:
                                                               §1?§(§#x§,param1.@MouseOut);
                                                               §§goto(addr491);
                                                            }
                                                            if(param1.@MouseOver.toString() != "")
                                                            {
                                                               §§goto(addr469);
                                                            }
                                                            §§goto(addr481);
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                   }
                                                   §§goto(addr435);
                                                }
                                                addr469:
                                                §1?§(§;!4§,param1.@MouseOver);
                                                if(_loc16_ || this)
                                                {
                                                   addr481:
                                                   if(param1.@MouseOut.toString() != "")
                                                   {
                                                   }
                                                }
                                                §§goto(addr491);
                                             }
                                             addr491:
                                             return;
                                          }
                                          §§goto(addr286);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                          if(_loc16_ || param1)
                                          {
                                             this.§@_§.push(new §"m§(_loc9_,this));
                                          }
                                          continue;
                                       }
                                       §§goto(addr319);
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr368);
                              }
                           }
                           §§goto(addr377);
                        }
                        §§goto(addr269);
                     }
                     this.§ in§.movieClip.addChild(mClip);
                  }
                  §§goto(addr89);
               }
               §§goto(addr96);
            }
            §§goto(addr89);
         }
         §§goto(addr64);
      }
      
      public function §`;§(param1:§4Y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §2!7§(param1:§4Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §^!I§(param1:§4Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§@_§.indexOf(param1) < 0)
         {
            this.§@_§.push(param1);
            param1.mParentContainer = this;
            if(_loc3_)
            {
               param1.setActiveStatus(this.§>U§);
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(Boolean(this.§2!-§));
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§pop();
                           addr74:
                           §§push(param1.§2!-§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                  }
                  §§pop().setVisibility(§§pop());
                  if(_loc3_)
                  {
                     param1.viewWidth = viewWidth;
                     if(!_loc2_)
                     {
                        addr92:
                        param1.viewHeight = viewHeight;
                     }
                     §§goto(addr95);
                  }
                  addr95:
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr92);
      }
      
      public function §9K§(param1:§4Y§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§@_§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ >= 0)
            {
               if(_loc3_)
               {
                  addr54:
                  param1.mParentContainer = null;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr75);
               }
               this.§@_§.splice(_loc2_,1);
               if(!(_loc4_ && param1))
               {
                  mClip.removeChild(param1.mClip);
               }
            }
            addr75:
            return;
         }
         §§goto(addr54);
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
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
         if(!(_loc3_ && this))
         {
            §§push(Boolean(§§pop()));
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop();
                        §§push(_loc2_);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop().toUpperCase() == "FALSE");
                           if(!_loc3_)
                           {
                              §§goto(addr79);
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr123);
                  }
                  addr79:
                  if(§§pop())
                  {
                     this.setVisibility(false);
                     §§goto(addr94);
                  }
                  else
                  {
                     this.setVisibility(true);
                     if(_loc4_ || param1)
                     {
                        addr94:
                        §§push(param1.@enabled);
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || _loc3_)
                              {
                                 addr120:
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    addr123:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr127:
                                          §§pop();
                                          if(!(_loc3_ && this))
                                          {
                                             §§goto(addr139);
                                          }
                                          this.setEnabled(true);
                                       }
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr139);
                           }
                        }
                        addr139:
                        if(_loc2_.toUpperCase() != "TRUE")
                        {
                           this.setEnabled(false);
                        }
                        §§goto(addr147);
                     }
                  }
                  addr147:
                  return;
               }
               §§goto(addr123);
            }
            §§goto(addr127);
         }
         §§goto(addr120);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(mParentContainer)
            {
               if(!_loc5_)
               {
                  addr37:
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  if(_loc5_)
                  {
                     addr54:
                     this.§ in§.listenerEventOccured(param1,param2,param3);
                     addr52:
                  }
               }
               §§goto(addr58);
            }
            else
            {
               §§push(this.§ in§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr52);
                     }
                  }
                  addr58:
                  return;
               }
            }
            §§goto(addr54);
         }
         §§goto(addr37);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4Y§ = null;
         for each(_loc2_ in this.§@_§)
         {
            if(!_loc5_)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(_loc6_)
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_ || _loc3_)
         {
            if(this.§@_§)
            {
               if(!_loc3_)
               {
                  _loc1_ = 0;
               }
               §§goto(addr42);
            }
            §§goto(addr69);
         }
         addr42:
         while(_loc1_ < this.§@_§.length)
         {
            this.§@_§[_loc1_].clear();
            if(!_loc3_)
            {
               _loc1_++;
            }
         }
         if(_loc2_)
         {
            addr69:
            this.§@_§ = null;
            if(!_loc3_)
            {
               §§push(this.§ in§);
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr91);
               }
               §§pop().movieClip.removeChild(mClip);
               if(_loc3_)
               {
               }
               §§goto(addr91);
            }
            §§goto(addr84);
         }
         addr91:
         if(§§pop())
         {
            addr84:
            §§push(this.§ in§);
         }
         super.clear();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setVisibility(param1);
            if(!(_loc3_ && _loc2_))
            {
               this.onParentVisibilityChange(param1);
            }
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4Y§ = null;
         if(_loc6_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc5_)
            {
               §§goto(addr37);
            }
            §§goto(addr51);
         }
         addr37:
         if(this.§@_§ != null)
         {
            addr51:
            var _loc3_:int = 0;
            for each(_loc2_ in this.§@_§)
            {
               if(_loc6_ || _loc3_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §`X§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(!(_loc5_ && param1))
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc4_ || this)
               {
                  addr37:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc4_)
               {
                  if(_loc3_ is §4Y§)
                  {
                     if(!_loc5_)
                     {
                        (_loc3_ as §4Y§).setVisibility(param2);
                        if(_loc4_ || _loc3_)
                        {
                        }
                        §§goto(addr113);
                     }
                  }
                  else
                  {
                     §§push(§9X§);
                     §§push("WARNING: UIContainer(");
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + mName);
                        if(!_loc5_)
                        {
                           §§push(") setItemVisibility can not be done because item ");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 addr106:
                                 §§push(§§pop() + param1);
                                 if(_loc4_)
                                 {
                                    addr111:
                                    §§push(§§pop() + " does not exist");
                                 }
                              }
                              §§pop().log(§§pop());
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr113);
               }
            }
            addr113:
            return;
         }
         §§goto(addr37);
      }
      
      public function getItemByName(param1:String) : §4Y§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§4Y§ = null;
         var _loc3_:§4Y§ = null;
         if(_loc7_ || _loc2_)
         {
            §§push(param1);
            if(_loc7_ || param1)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(_loc7_)
            {
               if(mName.toUpperCase() == param1)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr54);
                  }
               }
            }
            for each(_loc2_ in this.§@_§)
            {
               if(_loc7_ || this)
               {
                  if(_loc2_.mName.toUpperCase() == param1)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        return _loc2_;
                     }
                  }
                  else if(!(_loc2_ is §1!=§))
                  {
                     continue;
                  }
               }
               _loc3_ = (_loc2_ as §1!=§).getItemByName(param1);
               if(_loc7_ || this)
               {
                  if(_loc3_ != null)
                  {
                     if(!_loc6_)
                     {
                        return _loc3_;
                     }
                  }
               }
            }
            return null;
         }
         addr54:
         return this;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §0#§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§ in§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr47);
                  }
               }
               return super.getParentView();
            }
            §§goto(addr47);
         }
         addr47:
         return this.§ in§;
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4Y§ = null;
         if(_loc6_ || param1)
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§@_§)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4Y§ = null;
         if(_loc6_ || _loc3_)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§@_§)
         {
            if(_loc6_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
