package §8!+§
{
   import § !u§.§0m§;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §<!B§.b2Vec2;
   import §`a§.§ !U§;
   import §`a§.§^7§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]p§ extends EventDispatcher
   {
       
      
      protected var §4!-§:Vector.<§;5§>;
      
      protected var §%!3§:§"U§;
      
      protected var §8W§:Boolean = false;
      
      protected var §8e§:§0m§;
      
      private var §0"§:Boolean = false;
      
      public function §]p§(param1:§"U§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4!-§ = new Vector.<§;5§>();
            if(!_loc2_)
            {
               super();
               if(_loc3_ || _loc2_)
               {
                  this.§%!3§ = param1;
                  if(!_loc2_)
                  {
                     addr66:
                     addEventListener(Event.CHANGE,this.§1!?§);
                     if(!_loc2_)
                     {
                        addEventListener(Event.COMPLETE,this.onComplete);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function §1!?§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§0"§)
            {
               if(!(_loc3_ && this))
               {
                  addr43:
                  this.§0"§ = true;
                  if(_loc2_ || _loc3_)
                  {
                     this.§%!3§.§]! §();
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§0"§)
            {
               if(_loc3_ || this)
               {
                  this.§0"§ = false;
                  if(_loc3_ || _loc3_)
                  {
                     addr64:
                     §§push(this.§%!3§);
                     if(_loc3_)
                     {
                        §§pop().§9V§();
                        §§goto(addr76);
                     }
                     §§pop().mEditorUI.§[!t§(true);
                  }
               }
               §§goto(addr64);
            }
            addr76:
            if(_loc3_)
            {
               §§push(this.§%!3§);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function § do§(param1:§0m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8e§ = param1;
         }
      }
      
      public function update(param1:int) : void
      {
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;5§ = null;
         if(!(_loc4_ && this))
         {
            this.§8W§ = true;
            if(_loc5_)
            {
               this.§%!3§.mEditorUI.§ do§(this.§8e§);
            }
         }
         for each(_loc1_ in this.§4!-§)
         {
            if(_loc5_)
            {
               this.§%!3§.§^?§(true,_loc1_);
            }
         }
      }
      
      public function §7,§() : Sprite
      {
         return this.§8e§;
      }
      
      public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;5§ = null;
         if(!(_loc5_ && _loc1_))
         {
            dispatchEvent(new Event(Event.COMPLETE));
            if(_loc4_ || _loc1_)
            {
               this.§8W§ = false;
               if(!(_loc5_ && _loc1_))
               {
                  addr69:
                  this.§%!3§.mEditorUI.§ do§(null);
               }
            }
            for each(_loc1_ in this.§4!-§)
            {
               if(_loc4_)
               {
                  this.§%!3§.§^?§(false,_loc1_);
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function onMouseDown() : void
      {
      }
      
      public function onMouseUp() : void
      {
      }
      
      public function onMouseMove() : void
      {
      }
      
      public function onMouseWheel(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:§^7§ = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:b2Vec2 = null;
         §§push(§ !U§.§#!-§);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc9_)
         {
            §§push(this.§%!3§);
            if(_loc9_)
            {
               §§push(§§pop().getCamera());
               if(!_loc8_)
               {
                  §§pop().zoom(param1);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§goto(addr58);
                  }
               }
            }
            §§goto(addr81);
         }
         addr58:
         if(param1 > 0)
         {
            if(_loc9_ || _loc3_)
            {
               §§push(this.§%!3§);
               if(!_loc8_)
               {
                  §§push(§§pop().getLevelMain().camera.§3!p§);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  addr81:
                  if(_loc4_ = this.§%!3§.getCamera())
                  {
                     if(_loc9_)
                     {
                        if(this.§",§() == 0)
                        {
                           if(_loc9_)
                           {
                              §§push(this.§%!3§);
                              if(_loc9_)
                              {
                                 §§push(§§pop().mMousePositionB2.x - _loc4_.xCenterB2);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc8_ && this))
                                    {
                                       _loc5_ = §§pop();
                                       §§goto(addr175);
                                    }
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc4_.§8!B§ = this.§%!3§.mMousePositionB2.x - _loc2_ / _loc3_ * _loc5_;
                                    if(!_loc8_)
                                    {
                                       addr163:
                                       _loc4_.§package§ = this.§%!3§.mMousePositionB2.y - _loc2_ / _loc3_ * _loc6_;
                                    }
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr163);
                        }
                        else
                        {
                           §§push((_loc7_ = this.§>!p§()).x);
                           §§push(_loc4_.xCenterB2);
                           if(!_loc8_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc8_ && param1))
                              {
                                 §§push(1.3);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop() / §§pop()));
                                    if(!_loc8_)
                                    {
                                       _loc5_ = §§pop();
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(_loc7_.y);
                                          if(!_loc8_)
                                          {
                                             §§push(_loc4_.yCenterB2);
                                             if(_loc9_ || _loc3_)
                                             {
                                                addr224:
                                                _loc6_ = Number((§§pop() - §§pop()) / 1.3);
                                                if(_loc9_)
                                                {
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr279);
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                       addr229:
                                       §§push(_loc4_);
                                       §§push(_loc7_.x);
                                       if(_loc9_ || this)
                                       {
                                          §§push(_loc2_);
                                          if(_loc9_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§goto(addr260);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                          §§goto(addr260);
                                       }
                                       addr260:
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(_loc5_);
                                       }
                                       §§pop().§8!B§ = §§pop() - §§pop();
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          addr279:
                                          §§push(_loc4_);
                                          §§push(_loc7_.y);
                                          if(!_loc8_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(_loc3_);
                                                if(_loc9_)
                                                {
                                                   §§goto(addr306);
                                                }
                                             }
                                             §§goto(addr304);
                                          }
                                          addr306:
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr304:
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().§package§ = §§pop() - §§pop();
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                              }
                           }
                           §§goto(addr224);
                        }
                     }
                     §§goto(addr175);
                  }
               }
            }
            §§goto(addr81);
         }
         addr175:
         if(_loc9_ || this)
         {
            addr123:
            §§push(this.§%!3§.mMousePositionB2.y - _loc4_.yCenterB2);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
      }
      
      public function onKeyDown(param1:int) : void
      {
      }
      
      public function onKeyUp(param1:int) : void
      {
      }
      
      public function setSelection(param1:Vector.<§;5§>) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;5§ = null;
         if(!(_loc6_ && param1))
         {
            if(this.§8W§)
            {
               addr29:
               var _loc3_:int = 0;
               var _loc4_:* = this.§4!-§;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        _loc2_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc2_)
                        {
                           this.§%!3§.§^?§(false,_loc2_);
                        }
                        continue;
                     }
                     if(_loc5_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              _loc3_ = 0;
                              if(!_loc6_)
                              {
                                 _loc4_ = param1;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr119:
                                 addr117:
                              }
                           }
                           §§goto(addr128);
                        }
                        if(_loc6_ && _loc3_)
                        {
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr119);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc6_ && _loc2_))
                     {
                        this.§%!3§.§^?§(true,_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr119);
               }
            }
            addr128:
            this.§4!-§ = param1;
            return;
         }
         §§goto(addr29);
      }
      
      public function §;;§(param1:§;5§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2);
         if(!(_loc3_ && param2))
         {
            if(!§§pop())
            {
               if(!_loc3_)
               {
                  this.clearSelection();
                  if(!_loc3_)
                  {
                     addr52:
                     if(this.§4!-§.indexOf(param1) > -1)
                     {
                        return;
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr70);
               }
               §§goto(addr69);
            }
            §§goto(addr52);
         }
         addr61:
         if(param1.isGround())
         {
            if(_loc4_ || param1)
            {
               addr69:
               return;
            }
         }
         else
         {
            addr70:
            this.§%!3§.§^?§(true,param1);
            if(_loc4_)
            {
               this.§4!-§.push(param1);
            }
         }
      }
      
      public function §!!K§(param1:§;5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§4!-§.indexOf(param1) > -1)
            {
               if(_loc2_ || this)
               {
                  this.§4!-§.splice(this.§4!-§.indexOf(param1),1);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr66:
                     this.§%!3§.§^?§(false,param1);
                  }
               }
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function clearSelection() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;5§ = null;
         for each(_loc1_ in this.§4!-§)
         {
            if(_loc4_)
            {
               this.§%!3§.§^?§(false,_loc1_);
            }
         }
         if(!_loc5_)
         {
            this.§4!-§ = new Vector.<§;5§>();
         }
      }
      
      public function §",§() : int
      {
         return this.§4!-§.length;
      }
      
      public function §0j§() : Point
      {
         var _loc1_:b2Vec2 = this.§>!p§();
         return this.§%!3§.§-!M§(_loc1_.x,_loc1_.y);
      }
      
      public function §>!p§() : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(_loc3_ || _loc3_)
         {
            if(this.§4!-§.length > 0)
            {
               if(!_loc4_)
               {
                  _loc2_ = this.§!!d§(this.§4!-§);
                  if(_loc3_ || this)
                  {
                     _loc1_.x = _loc2_.x + _loc2_.width / 2;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.y = _loc2_.y + _loc2_.height / 2;
                     }
                  }
               }
               else
               {
                  addr101:
                  _loc1_.y = 0;
               }
            }
            else
            {
               _loc1_.x = 0;
               if(!_loc4_)
               {
                  §§goto(addr101);
               }
            }
            return _loc1_;
         }
         §§goto(addr101);
      }
      
      public function getSelectedObjects() : Vector.<§;5§>
      {
         return this.§4!-§;
      }
      
      protected function §!!d§(param1:Vector.<§;5§>, param2:Number = 0) : Rectangle
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Point = null;
         var _loc3_:* = Number(Number.MAX_VALUE);
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(_loc10_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(_loc10_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            _loc8_ = param1[_loc7_].getCenter();
            if(!(_loc9_ && _loc3_))
            {
               §§push(Number(Math.min(_loc3_,_loc8_.x)));
               if(!(_loc9_ && this))
               {
                  _loc3_ = §§pop();
                  if(_loc10_ || param1)
                  {
                     §§push(Number(Math.max(_loc5_,_loc8_.x)));
                     if(_loc10_ || this)
                     {
                        _loc5_ = §§pop();
                        if(_loc10_ || this)
                        {
                           addr121:
                           §§push(Number(Math.min(_loc4_,_loc8_.y)));
                           if(!_loc10_)
                           {
                           }
                           addr143:
                           _loc6_ = §§pop();
                           if(_loc10_ || this)
                           {
                              addr161:
                              _loc7_++;
                           }
                        }
                        continue;
                     }
                     _loc4_ = §§pop();
                     if(_loc9_ && param2)
                     {
                        continue;
                     }
                     §§goto(addr143);
                     §§push(Number(Math.max(_loc6_,_loc8_.y)));
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr161);
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
   }
}
