package §class§
{
   import §+!"§.§5!<§;
   import §-!F§.§&!A§;
   import §-!F§.§^h§;
   import §<!G§.§^3§;
   import com.rovio.assets.§'!H§;
   import flash.display.*;
   
   public class §3C§ extends §&!A§
   {
       
      
      public var §3S§:§^3§;
      
      public var §3! §:Vector.<§&!A§>;
      
      public var §8!;§:Boolean = false;
      
      public function §3C§(param1:XML, param2:§3C§, param3:§^3§, param4:MovieClip = null)
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
         this.mName = param1.@name;
         if(param3)
         {
            if(!_loc15_)
            {
               this.§3S§ = param3;
               if(!(_loc15_ && param1))
               {
                  addr59:
                  if(!param4)
                  {
                     _loc12_ = §'!H§.§&!G§(mName);
                     if(!_loc15_)
                     {
                        mClip = new _loc12_();
                        if(!_loc15_)
                        {
                           this.§3S§.movieClip.addChild(mClip);
                           addr79:
                           super(param1,param2,param4);
                           if(!(_loc15_ && param1))
                           {
                              this.§3! § = new Vector.<§&!A§>();
                           }
                        }
                     }
                  }
                  §§goto(addr79);
               }
               var _loc13_:* = 0;
               var _loc14_:* = param1.Container;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc14_,_loc13_));
                  if(!(_loc15_ && param2))
                  {
                     if(§§pop())
                     {
                        _loc5_ = §§nextvalue(_loc13_,_loc14_);
                        if(!_loc15_)
                        {
                           this.§3! §.push(new §3C§(_loc5_,this,null));
                        }
                        continue;
                     }
                     if(!_loc15_)
                     {
                        §§push(0);
                        if(_loc16_)
                        {
                           for each(_loc6_ in param1.Repeater)
                           {
                              if(!(_loc15_ && param2))
                              {
                                 this.§3! §.push(new §use §(_loc6_,this,null));
                              }
                           }
                           if(_loc16_ || param2)
                           {
                              if(_loc16_)
                              {
                                 §§push(0);
                                 if(!(_loc15_ && param3))
                                 {
                                    _loc13_ = §§pop();
                                    if(_loc16_)
                                    {
                                       for each(_loc7_ in param1.Button)
                                       {
                                          if(_loc16_ || this)
                                          {
                                             this.§3! §.push(new §?q§(_loc7_,this));
                                          }
                                       }
                                       if(!(_loc15_ && param3))
                                       {
                                          addr222:
                                          if(!(_loc15_ && param3))
                                          {
                                             §§push(0);
                                             if(_loc16_ || this)
                                             {
                                                addr248:
                                                _loc13_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   for each(_loc8_ in param1.TextField)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         this.§3! §.push(new §3D§(_loc8_,this));
                                                      }
                                                   }
                                                   if(_loc16_)
                                                   {
                                                      §§push(0);
                                                      if(_loc16_ || param2)
                                                      {
                                                         addr285:
                                                         _loc13_ = §§pop();
                                                         if(_loc16_ || param3)
                                                         {
                                                            _loc14_ = param1.MovieClip;
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                               if(_loc16_ || this)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc9_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(_loc16_ || param3)
                                                                     {
                                                                        this.§3! §.push(new §`!6§(_loc9_,this));
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     addr337:
                                                                     _loc13_ = §§pop();
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        _loc14_ = param1.Popup;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc14_,_loc13_));
                                                                           break loop5;
                                                                        }
                                                                        addr365:
                                                                     }
                                                                     addr407:
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        addr415:
                                                                        this.readInitialVisibility(param1);
                                                                        if(param1.@MouseDown.toString() != "")
                                                                        {
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              §7w§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                                                                              addr435:
                                                                              if(param1.@MouseUp.toString() != "")
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    §7w§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                                                                                    addr457:
                                                                                    if(param1.@MouseOver.toString() != "")
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §7w§(§null§,param1.@MouseOver);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr478);
                                                                                    }
                                                                                    if(param1.@MouseOut.toString() != "")
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§goto(addr478);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr478);
                                                                                 }
                                                                                 addr478:
                                                                                 §7w§(§@!'§,param1.@MouseOut);
                                                                                 return;
                                                                              }
                                                                              §§goto(addr457);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr435);
                                                                  }
                                                                  _loc13_ = §§pop();
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr384:
                                                                     _loc14_ = param1.Slider;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc14_,_loc13_));
                                                                        break loop0;
                                                                     }
                                                                     addr406:
                                                                     §§goto(addr407);
                                                                     addr404:
                                                                  }
                                                                  §§goto(addr407);
                                                               }
                                                               break;
                                                            }
                                                            while(§§pop())
                                                            {
                                                               _loc10_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(!_loc15_)
                                                               {
                                                                  this.§3! §.push(new §0r§(_loc10_,this));
                                                               }
                                                               §§goto(addr365);
                                                            }
                                                            if(!(_loc15_ && param3))
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  addr377:
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§goto(addr381);
                                                                     §§push(0);
                                                                  }
                                                                  §§goto(addr415);
                                                               }
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr435);
                                       }
                                       §§goto(addr377);
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr415);
                           }
                           §§goto(addr222);
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr384);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc11_ = §§nextvalue(_loc13_,_loc14_);
                     if(!_loc15_)
                     {
                        this.§3! §.push(new §>[§(_loc11_,this));
                     }
                     continue;
                  }
                  §§goto(addr384);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr79);
      }
      
      public function §5u§(param1:§&!A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.setChildIndex(param1.mClip,0);
         }
      }
      
      public function §#O§(param1:§&!A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.setChildIndex(param1.mClip,mClip.numChildren - 1);
         }
      }
      
      public function §5'§(param1:§&!A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§3! §.indexOf(param1) < 0)
         {
            this.§3! §.push(param1);
            param1.mParentContainer = this;
            if(!(_loc2_ && _loc2_))
            {
               param1.setActiveStatus(this.§6V§);
               if(_loc3_ || param1)
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Boolean(this.§#!#§));
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              addr90:
                              §§pop();
                              §§push(param1.§#!#§);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        §§pop().setVisibility(§§pop());
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr90);
               }
            }
            addr102:
            param1.viewWidth = viewWidth;
            if(_loc3_ || this)
            {
               param1.viewHeight = viewHeight;
            }
            §§goto(addr115);
         }
         addr115:
      }
      
      public function §!E§(param1:§&!A§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§3! §.indexOf(param1);
         if(!(_loc3_ && this))
         {
            if(_loc2_ >= 0)
            {
               if(!(_loc3_ && this))
               {
                  param1.mParentContainer = null;
                  if(!_loc3_)
                  {
                     this.§3! §.splice(_loc2_,1);
                     if(!_loc3_)
                     {
                        mClip.removeChild(param1.mClip);
                     }
                  }
               }
            }
         }
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!mClip)
            {
               if(_loc4_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:* = param1.@visible;
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || param1)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc4_ || this)
                                 {
                                    addr91:
                                    if(§§pop())
                                    {
                                       this.setVisibility(false);
                                    }
                                    else
                                    {
                                       this.setVisibility(true);
                                    }
                                    §§push(param1.@enabled);
                                    if(!_loc3_)
                                    {
                                       addr104:
                                       _loc2_ = §§pop();
                                       §§push(_loc2_);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr123:
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr131:
                                             if(§§pop())
                                             {
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr135);
                                       }
                                       addr140:
                                       if(_loc4_)
                                       {
                                          addr135:
                                          §§pop();
                                          §§push(_loc2_);
                                       }
                                       if(§§pop())
                                       {
                                          this.setEnabled(true);
                                       }
                                       else
                                       {
                                          this.setEnabled(false);
                                       }
                                       return;
                                       §§push(§§pop().toUpperCase() == "TRUE");
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr131);
               }
               §§goto(addr140);
            }
            §§goto(addr104);
         }
         addr28:
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(mParentContainer)
            {
               if(_loc4_ || this)
               {
                  mParentContainer.containerEventOccured(param1,param2,param3);
                  if(_loc5_)
                  {
                     addr74:
                     this.§3S§.listenerEventOccured(param1,param2,param3);
                     addr72:
                  }
                  §§goto(addr78);
               }
               §§goto(addr72);
            }
            else
            {
               §§push(this.§3S§);
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        §§goto(addr72);
                     }
                  }
                  addr78:
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§&!A§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§3! §)
         {
            if(_loc5_ || this)
            {
               _loc2_.setActiveStatus(param1);
            }
         }
         if(!(_loc6_ && _loc3_))
         {
            super.setActiveStatus(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§3! §)
            {
               if(_loc2_)
               {
                  _loc1_ = 0;
                  addr32:
                  while(_loc1_ < this.§3! §.length)
                  {
                     this.§3! §[_loc1_].clear();
                     _loc1_++;
                  }
                  if(!_loc3_)
                  {
                     addr67:
                     this.§3! § = null;
                     §§push(this.§3S§);
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              addr89:
                              this.§3S§.movieClip.removeChild(mClip);
                              if(_loc2_)
                              {
                                 addr94:
                                 super.clear();
                              }
                           }
                           return;
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr94);
               }
               §§goto(addr32);
            }
            §§goto(addr67);
         }
         §§goto(addr32);
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setVisibility(param1);
            if(!_loc3_)
            {
               addr23:
               this.onParentVisibilityChange(param1);
            }
            return;
         }
         §§goto(addr23);
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&!A§ = null;
         if(_loc6_ || _loc3_)
         {
            super.onParentVisibilityChange(param1);
            if(!_loc5_)
            {
               §§goto(addr52);
            }
            §§goto(addr56);
         }
         addr52:
         if(this.§3! § != null)
         {
            addr56:
            for each(_loc2_ in this.§3! §)
            {
               if(_loc6_)
               {
                  _loc2_.onParentVisibilityChange(param1);
               }
            }
         }
      }
      
      public function §%!+§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_)
         {
            if(mName.toUpperCase() == param1)
            {
               if(_loc5_)
               {
                  addr28:
                  this.setVisibility(param2);
               }
            }
            else
            {
               _loc3_ = this.getItemByName(param1);
               if(_loc5_ || param1)
               {
                  if(_loc3_ is §&!A§)
                  {
                     if(_loc5_)
                     {
                        (_loc3_ as §&!A§).setVisibility(param2);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr124);
                  }
                  else
                  {
                     §§push(§5!<§);
                     §§push("WARNING: UIContainer(");
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + mName);
                        if(_loc5_ || param2)
                        {
                           addr96:
                           §§push(") setItemVisibility can not be done because item ");
                           if(!(_loc4_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() + param1);
                                 if(_loc5_ || param1)
                                 {
                                 }
                                 §§goto(addr123);
                              }
                              §§push(" does not exist");
                           }
                           §§push(§§pop() + §§pop());
                        }
                        addr123:
                        §§pop().log(§§pop());
                        §§goto(addr124);
                     }
                     §§goto(addr96);
                  }
               }
            }
            addr124:
            return;
         }
         §§goto(addr28);
      }
      
      public function getItemByName(param1:String) : §&!A§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§&!A§ = null;
         var _loc3_:§&!A§ = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            if(!(_loc7_ && param1))
            {
               addr37:
               if(mName.toUpperCase() == param1)
               {
                  if(_loc6_ || param1)
                  {
                     return this;
                  }
               }
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§3! §;
            while(true)
            {
               for each(_loc2_ in _loc5_)
               {
                  if(_loc6_ || this)
                  {
                     if(_loc2_.mName.toUpperCase() == param1)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           return _loc2_;
                        }
                     }
                     else
                     {
                        addr96:
                        if(!(_loc2_ is §3C§))
                        {
                           continue;
                        }
                     }
                     _loc3_ = (_loc2_ as §3C§).getItemByName(param1);
                     if(!(_loc7_ && this))
                     {
                        if(_loc3_ != null)
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              break;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr96);
               }
               return null;
            }
            return _loc3_;
         }
         §§goto(addr37);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.mouseEnabled = param1;
         }
      }
      
      override public function getParentView() : §^3§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3S§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§3S§);
                  }
                  else
                  {
                     §§goto(addr29);
                  }
               }
               §§goto(addr29);
            }
            return §§pop();
         }
         addr29:
         return super.getParentView();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&!A§ = null;
         if(!(_loc5_ && param1))
         {
            super.viewWidth = param1;
         }
         for each(_loc2_ in this.§3! §)
         {
            if(_loc6_ || this)
            {
               _loc2_.viewWidth = param1;
            }
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&!A§ = null;
         if(_loc6_ || param1)
         {
            super.viewHeight = param1;
         }
         for each(_loc2_ in this.§3! §)
         {
            if(!_loc5_)
            {
               _loc2_.viewHeight = param1;
            }
         }
      }
   }
}
