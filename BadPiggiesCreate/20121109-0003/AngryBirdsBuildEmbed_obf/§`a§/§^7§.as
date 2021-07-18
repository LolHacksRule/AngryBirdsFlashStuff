package §`a§
{
   import §-!0§.§!!s§;
   import §-!0§.§2! §;
   import §<!<§.§7E§;
   import §<!<§.§]K§;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^7§ extends § !U§
   {
      
      public static const §9!8§:Number = 1;
      
      public static const §&f§:Number = 0.3;
      
      private static const §;!k§:Number = 0.6;
      
      private static const §'K§:int = 50;
      
      private static const §`j§:Number = 0;
      
      public static const §,!C§:Number = 150;
      
      private static const §[!^§:Number = 50;
      
      public static const §;g§:Number;
      
      public static const §;l§:Number = 10;
      
      private static var §8"§:Boolean = false;
      
      private static var §4!?§:§!!s§ = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'K§ = 50;
            §`j§ = 0;
            §,!C§ = 150;
            §[!^§ = 50;
            §§push(§§findproperty(§;g§));
            §§push(§[!^§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(-§§pop());
            }
            §§pop().§;g§ = §§pop();
            §;l§ = 10;
            §8"§ = false;
            §4!?§ = null;
         }
      }
      
      private var §%!R§:§&W§;
      
      private var §0!a§:Number;
      
      private var §7d§:Number;
      
      private var §7P§:Number;
      
      private var §#B§:Number = 0.01;
      
      public function §^7§(param1:§7E§, param2:§2! §)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§%!R§ = new §&W§(0,0,1,false);
            if(_loc3_)
            {
               super(param1,param2);
               if(_loc3_)
               {
                  §3!p§ = §?C§;
                  if(!(_loc4_ && param1))
                  {
                     addr64:
                     this.§0!a§ = §^T§;
                     if(_loc3_ || param1)
                     {
                        addr74:
                        this.§7d§ = §<9§;
                     }
                  }
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr64);
      }
      
      public static function §>!B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §8"§ = param1;
         }
      }
      
      public function set xCenterB2(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §^T§ = param1;
         }
      }
      
      public function get xCenterB2() : Number
      {
         return §^T§;
      }
      
      public function set yCenterB2(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §<9§ = param1;
         }
      }
      
      public function get yCenterB2() : Number
      {
         return §<9§;
      }
      
      public function set §8!B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§0!a§ = param1;
         }
      }
      
      public function get §8!B§() : Number
      {
         return this.§0!a§;
      }
      
      public function set §package§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§7d§ = param1;
         }
      }
      
      public function get §package§() : Number
      {
         return this.§7d§;
      }
      
      public function § !C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4!?§ = new §!!s§();
            if(!_loc2_)
            {
               §§push(§4!?§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.xCenterB2);
                  if(!_loc2_)
                  {
                     §§pop().x = §§pop();
                     if(_loc1_)
                     {
                        §§push(§4!?§);
                        if(!_loc2_)
                        {
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr68);
                  }
                  addr64:
                  §§pop().y = this.yCenterB2;
                  §§goto(addr62);
               }
               addr62:
               if(_loc1_)
               {
                  addr68:
                  §4!?§.scale = §?C§;
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function §@!a§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            if(!§4!?§)
            {
               if(!(_loc3_ && this))
               {
                  §4!?§ = this.§5w§(true);
                  if(_loc2_ || this)
                  {
                     addr54:
                     this.xCenterB2 = this.§8!B§ = §4!?§.x;
                     if(!_loc3_)
                     {
                        §§goto(addr76);
                     }
                     §§goto(addr93);
                  }
               }
               addr76:
               this.yCenterB2 = this.§package§ = §4!?§.y;
               if(_loc2_ || _loc3_)
               {
                  addr93:
                  §?C§ = §3!p§ = §4!?§.scale;
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function §9!4§(param1:§!!s§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §^T§ = param1.x;
         §<9§ = param1.y;
         if(_loc2_)
         {
            §3!p§ = param1.scale;
            if(!(_loc3_ && param1))
            {
               §?C§ = param1.scale;
               if(!(_loc3_ && _loc2_))
               {
                  addr68:
                  this.§0!a§ = §^T§;
               }
               this.§7d§ = §<9§;
               §§goto(addr74);
            }
            §§goto(addr68);
         }
         addr74:
      }
      
      override public function updateCamera(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            if(!§8"§)
            {
               if(_loc7_ || this)
               {
                  super.updateCamera(param1);
                  if(!(_loc7_ || param1))
                  {
                     addr46:
                     §3!p§ = Math.max(§3!p§,§&f§);
                     var _loc2_:Number = Math.min(this.§#B§ * param1,1);
                     if(_loc7_ || _loc3_)
                     {
                        §?C§ -= (§?C§ - §3!p§) * _loc2_;
                        if(!_loc6_)
                        {
                           §^T§ -= (§^T§ - this.§0!a§) * _loc2_;
                           if(_loc7_ || _loc2_)
                           {
                              §<9§ -= (§<9§ - this.§7d§) * _loc2_;
                              addr96:
                           }
                        }
                        var _loc3_:Rectangle = this.getCameraLimits();
                        §§push(SCREEN_WIDTH_B2 * 0.5);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() / §?C§);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc4_:* = §§pop();
                        §§push(SCREEN_HEIGHT_B2 * 0.5);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() / §?C§);
                           if(_loc7_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_)
                        {
                           §^T§ = Math.max(_loc3_.x + _loc4_,§^T§);
                           if(!_loc6_)
                           {
                              §^T§ = Math.min(_loc3_.width + _loc3_.x - _loc4_,§^T§);
                              if(_loc7_)
                              {
                                 §<9§ = Math.max(_loc3_.height + _loc3_.y + _loc5_,§<9§);
                                 if(_loc7_)
                                 {
                                    §<9§ = Math.min(_loc3_.y - _loc5_,§<9§);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr233);
                              }
                              addr224:
                              §0!=§();
                              if(!(_loc6_ && this))
                              {
                                 addr233:
                                 §7!d§();
                                 if(!_loc7_)
                                 {
                                 }
                                 §§goto(addr239);
                              }
                              §!J§();
                              addr239:
                              return;
                           }
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr96);
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function getCameraLimits() : Rectangle
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle();
         if(!_loc2_)
         {
            _loc1_.x = -§[!^§;
            if(_loc3_ || _loc1_)
            {
               _loc1_.width = §`j§ + §,!C§ - _loc1_.x;
               if(_loc2_ && this)
               {
               }
               §§goto(addr85);
            }
            _loc1_.y = §;l§;
            if(!(_loc2_ && this))
            {
               _loc1_.height = -SCREEN_HEIGHT_B2 / §&f§;
            }
         }
         addr85:
         return _loc1_;
      }
      
      public function getCurrentBorders() : Rectangle
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(SCREEN_WIDTH_B2 * 0.5);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() / §?C§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(SCREEN_HEIGHT_B2 * 0.5);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / §?C§);
            if(_loc4_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:Rectangle = new Rectangle();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.x = §^T§ - _loc1_;
            if(_loc4_ || _loc2_)
            {
               _loc3_.y = §<9§ - _loc2_;
               if(_loc4_ || this)
               {
                  §§goto(addr108);
               }
            }
            §§goto(addr120);
         }
         addr108:
         _loc3_.width = 2 * _loc1_;
         if(_loc4_ || _loc3_)
         {
            addr120:
            _loc3_.height = 2 * _loc2_;
         }
         return _loc3_;
      }
      
      public function zoom(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(int(§§pop() / Math.abs(param1)));
            }
            param1 = §§pop();
            if(_loc3_ || this)
            {
               §3!p§ += param1 * § !U§.MANUAL_SCALE_STEP * §3!p§;
               if(_loc3_)
               {
                  §3!p§ = Math.max(§&f§,Math.min(§9!8§,§3!p§));
               }
            }
         }
      }
      
      public function dragTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§0!a§ = param1;
            if(_loc4_)
            {
               addr24:
               this.§7d§ = param2;
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function goToCastleView() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!§8"§)
            {
               if(_loc3_ || _loc2_)
               {
                  super.goToCastleView();
                  if(_loc2_)
                  {
                     §§goto(addr58);
                  }
               }
               return;
            }
         }
         addr58:
         var _loc1_:§!!s§ = this.§5w§(true);
         if(_loc3_)
         {
            §3!p§ = _loc1_.scale;
            if(!(_loc2_ && _loc1_))
            {
               this.dragTo(_loc1_.x,_loc1_.y);
            }
         }
      }
      
      override public function goToBirdView() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!§8"§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  super.goToBirdView();
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr61);
            }
            var _loc1_:§!!s§ = this.§9!'§(true);
            if(_loc2_)
            {
               §3!p§ = _loc1_.scale;
               if(!(_loc3_ && _loc1_))
               {
                  addr80:
                  this.dragTo(_loc1_.x,_loc1_.y);
               }
               return;
            }
            §§goto(addr80);
         }
         addr61:
      }
      
      public function §9!'§(param1:Boolean = false) : §!!s§
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:§]K§ = null;
         var _loc10_:§!!s§ = null;
         var _loc2_:Number = 4;
         var _loc3_:Point = new Point(§-n§.slingshot.mX,§-n§.slingshot.mY);
         var _loc4_:Rectangle;
         (_loc4_ = new Rectangle()).offsetPoint(_loc3_);
         if(!_loc13_)
         {
            _loc4_.bottom = §;l§;
         }
         for each(_loc5_ in §-n§.slingshot.mBirds)
         {
            if(_loc14_)
            {
               _loc4_.left = Math.min(_loc4_.left,_loc5_.mX);
               if(!_loc14_)
               {
                  continue;
               }
               _loc4_.right = Math.max(_loc4_.right,_loc5_.mX);
               if(!_loc14_)
               {
                  continue;
               }
            }
            _loc4_.top = Math.min(_loc4_.top,_loc5_.mY);
         }
         if(_loc14_)
         {
            _loc4_.left -= _loc2_;
            if(!_loc13_)
            {
               _loc4_.right += _loc2_;
               if(_loc14_ || this)
               {
                  _loc4_.top -= _loc2_ * 3;
                  if(_loc14_)
                  {
                     addr129:
                     if(param1)
                     {
                        if(!_loc13_)
                        {
                           _loc4_.left -= _loc2_ * 5;
                           addr151:
                           addr133:
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        _loc10_ = this.§5w§(false);
                        if(!_loc13_)
                        {
                           _loc4_.right = Math.max(_loc4_.right,(_loc10_.left + _loc10_.right) / 2);
                           if(_loc13_)
                           {
                           }
                           addr182:
                           §§push(§ !U§.SCREEN_WIDTH_B2 / _loc4_.width);
                           if(_loc14_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(§ !U§.SCREEN_HEIGHT_B2 / _loc4_.height);
                           if(_loc14_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           var _loc8_:Number = Math.min(_loc6_,_loc7_);
                           if(_loc14_ || this)
                           {
                              if(param1)
                              {
                                 if(!_loc13_)
                                 {
                                    addr217:
                                    _loc8_ = Math.min(_loc8_,§;!k§);
                                 }
                              }
                              var _loc9_:§!!s§;
                              (_loc9_ = new §!!s§()).id = § !U§.CAMERA_ID_SLINGSHOT;
                              if(_loc14_ || _loc2_)
                              {
                                 _loc9_.x = (_loc4_.left + _loc4_.right) / 2;
                                 _loc9_.y = (_loc4_.top + _loc4_.bottom) / 2;
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    _loc9_.left = _loc4_.left;
                                    if(!_loc13_)
                                    {
                                       §§goto(addr279);
                                    }
                                    §§goto(addr294);
                                 }
                                 addr279:
                                 _loc9_.top = _loc4_.top;
                                 if(_loc14_ || _loc3_)
                                 {
                                    addr290:
                                    _loc9_.right = _loc4_.right;
                                    addr294:
                                    _loc9_.bottom = _loc4_.bottom;
                                 }
                                 _loc9_.scale = _loc8_;
                                 return _loc9_;
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr217);
                        }
                        _loc4_.top = Math.min(_loc4_.top,_loc10_.top);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr151);
               }
               §§goto(addr129);
            }
         }
         §§goto(addr133);
      }
      
      public function §5w§(param1:Boolean = false) : §!!s§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc12_:§<!3§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:Number = 4;
         var _loc3_:Rectangle = new Rectangle();
         if(_loc14_)
         {
            _loc3_.x = 0;
            if(_loc14_ || this)
            {
               _loc3_.right = _loc3_.left + §,!C§ / 3;
               if(_loc14_ || _loc3_)
               {
                  _loc3_.top = 0;
                  if(!_loc14_)
                  {
                  }
                  addr64:
                  var _loc4_:int = 0;
                  var _loc5_:int = 0;
                  while(_loc5_ < §-n§.objects.getObjectCount())
                  {
                     if((_loc12_ = §-n§.objects.getObject(_loc5_)).§7T§)
                     {
                        if(!_loc14_)
                        {
                           continue;
                        }
                        if((_loc13_ = _loc12_.getBody().GetPosition()).x < §-n§.slingshot.mX)
                        {
                           if(_loc14_)
                           {
                              addr160:
                              _loc5_++;
                              continue;
                           }
                           addr129:
                           _loc3_.right = Math.max(_loc3_.right,_loc13_.x);
                           if(_loc15_ && _loc3_)
                           {
                           }
                           §§goto(addr160);
                           §§goto(addr160);
                        }
                        else if(_loc4_ == 0)
                        {
                           _loc3_.left = _loc13_.x;
                           _loc3_.right = _loc13_.x;
                           if(!(_loc14_ || this))
                           {
                              §§goto(addr129);
                           }
                           §§goto(addr160);
                        }
                        else
                        {
                           _loc3_.left = Math.min(_loc3_.left,_loc13_.x);
                           if(_loc14_ || _loc2_)
                           {
                              §§goto(addr129);
                           }
                        }
                        _loc3_.top = Math.min(_loc3_.top,_loc13_.y);
                        if(!(_loc15_ && _loc3_))
                        {
                           _loc4_++;
                        }
                     }
                     §§goto(addr160);
                  }
                  if(!(_loc15_ && _loc3_))
                  {
                     _loc3_.left -= _loc2_ * 3;
                     if(_loc14_ || param1)
                     {
                        _loc3_.right += _loc2_ * 3;
                        if(!_loc15_)
                        {
                           addr208:
                           _loc3_.top -= _loc2_ * 3;
                        }
                     }
                     var _loc6_:Rectangle = this.getCameraLimits();
                     §§push(§ !U§.SCREEN_WIDTH_B2 / _loc3_.width);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(§ !U§.SCREEN_HEIGHT_B2 / _loc3_.height);
                     if(_loc14_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     var _loc9_:* = Number(Math.min(_loc7_,_loc8_));
                     §§push(Number(Math.min(_loc9_,§;!k§)));
                     if(_loc14_ || param1)
                     {
                        §§push(§§pop());
                        if(_loc14_)
                        {
                           _loc9_ = §§pop();
                           addr267:
                           if(_loc14_)
                           {
                              §§push(_loc8_);
                           }
                           var _loc10_:* = §§pop();
                           if(!(_loc15_ && this))
                           {
                              _loc3_.top = Math.min(_loc3_.top,-§ !U§.SCREEN_HEIGHT_B2 - §;l§);
                           }
                           var _loc11_:§!!s§;
                           (_loc11_ = new §!!s§()).id = § !U§.CAMERA_ID_CASTLE;
                           _loc11_.x = (_loc3_.left + _loc3_.right) / 2;
                           if(!_loc15_)
                           {
                              _loc11_.y = (_loc3_.top + _loc3_.bottom) / 2;
                              _loc11_.left = _loc3_.left;
                              _loc11_.top = _loc3_.top;
                              if(!(_loc15_ && _loc3_))
                              {
                                 _loc11_.right = _loc3_.right;
                                 if(_loc14_)
                                 {
                                    addr345:
                                    _loc11_.bottom = _loc3_.bottom;
                                    addr349:
                                    _loc11_.scale = _loc9_;
                                 }
                                 return _loc11_;
                              }
                              §§goto(addr349);
                           }
                           §§goto(addr345);
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc14_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr208);
               }
               §§goto(addr64);
            }
            _loc3_.bottom = §;l§;
         }
         §§goto(addr64);
      }
      
      override public function writeCameraInformation(param1:§2! §) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(!§8"§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  addr42:
                  super.writeCameraInformation(param1);
                  if(_loc5_ && this)
                  {
                     §§goto(addr63);
                  }
               }
               return;
            }
            addr63:
            var _loc2_:§!!s§ = this.§5w§();
            var _loc3_:§!!s§ = this.§9!'§();
            if(_loc4_)
            {
               param1.§7!q§();
               if(_loc4_ || this)
               {
                  param1.§,!j§(_loc3_);
                  if(_loc4_)
                  {
                     param1.§,!j§(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function loadCameraBorders() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!§8"§)
         {
            super.loadCameraBorders();
            if(_loc1_)
            {
               return;
            }
         }
         else
         {
            §§push(§§findproperty(§%S§));
            §§push(§[!^§);
            if(_loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().§%S§ = §§pop();
            §§push(§§findproperty(§7O§));
            §§push(§`j§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + §,!C§);
            }
            §§pop().§7O§ = §§pop();
            if(_loc1_)
            {
               §1%§ = §-n§.borders.mBorderGround_B2 - 20 * §7E§.§5H§ * §7E§.§8!'§;
               §;![§ = §-n§.borders.mBorderGround_B2 + 4;
            }
         }
      }
      
      override public function getZoomRatio() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§8"§)
            {
               if(!_loc1_)
               {
                  addr38:
                  §§push(super.getZoomRatio());
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  §§push(§3!p§ - §&f§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§9!8§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() - §&f§);
                     }
                     §§push(§§pop() / §§pop());
                  }
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr38);
      }
      
      override public function setZoomRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§8"§)
            {
               if(_loc2_)
               {
                  super.setZoomRatio(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
                  addr55:
                  §§push(§§findproperty(§3!p§));
                  §§push(Math.min(Math.max(param1,0),1) * (§9!8§ - §&f§));
                  if(!_loc3_)
                  {
                     §§push(§§pop() + §&f§);
                  }
                  §§pop().§3!p§ = §§pop();
               }
               return;
            }
         }
         §§goto(addr55);
      }
   }
}
