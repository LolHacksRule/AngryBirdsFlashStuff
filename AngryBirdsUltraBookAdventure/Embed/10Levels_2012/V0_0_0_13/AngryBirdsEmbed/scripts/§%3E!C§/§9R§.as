package §>!C§
{
   import §#k§.§"!D§;
   import §#k§.§%!?§;
   import §#k§.§?!3§;
   import §%x§.§#;§;
   import §;!'§.*;
   import §[F§.§`m§;
   import §`K§.§+i§;
   import §`K§.§3n§;
   import flash.geom.Point;
   
   public class §9R§
   {
      
      public static const § !4§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § !4§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §2^§:Number = 0;
      
      public var §7!H§:Number = -8;
      
      private var §2x§:Vector.<§"!D§> = null;
      
      private var §"_§:Vector.<§?!3§> = null;
      
      private var §-!C§:Vector.<§%!?§> = null;
      
      private var §1A§:Vector.<§'H§> = null;
      
      public var §2!%§:Number = 0;
      
      public var §[!$§:Boolean = false;
      
      public var §!!9§:int = 0;
      
      public var §4$§:int = 0;
      
      private var §-!6§:int = 0;
      
      private var §^?§:String = null;
      
      public var mName:String = null;
      
      public function §9R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            this.§1A§ = new Vector.<§'H§>();
            if(!_loc1_)
            {
               this.§2x§ = new Vector.<§"!D§>();
               this.§"_§ = new Vector.<§?!3§>();
               §§goto(addr39);
            }
            §§goto(addr76);
         }
         addr39:
         if(_loc2_)
         {
            this.§-!C§ = new Vector.<§%!?§>();
            if(_loc2_ || _loc1_)
            {
               addr76:
               this.§^?§ = § !4§;
            }
         }
      }
      
      public static function §4!#§(param1:String) : §9R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9R§ = new §9R§();
         if(!(_loc3_ && param1))
         {
            _loc2_.§>!E§(param1);
         }
         return _loc2_;
      }
      
      public static function §<!0§(param1:§+i§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§'F§);
            if(_loc2_ || §9R§)
            {
               §§push(§+i§.§try§);
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              addr40:
                              §§pop();
                              if(!_loc3_)
                              {
                                 addr43:
                                 §§push(param1.§'F§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(§+i§.§]D§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_ || §9R§)
                                       {
                                          addr74:
                                          if(!§§pop())
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr83:
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   addr100:
                                                   §§push(param1.§'F§ == §+i§.§+^§);
                                                   if(_loc2_ || param1)
                                                   {
                                                      addr108:
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr116:
                                                            §§push(true);
                                                            if(_loc2_ || param1)
                                                            {
                                                               §§goto(addr124);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr126);
                                                            }
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                      addr126:
                                                      return §§pop();
                                                      §§push(false);
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr116);
                                             }
                                             addr124:
                                             return §§pop();
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr126);
                                    }
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr40);
               }
            }
            §§goto(addr100);
         }
         §§goto(addr43);
      }
      
      public static function §07§(param1:String) : §9R§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§9R§ = §4!#§(param1);
         if(!_loc4_)
         {
            _loc2_.§2^§ = _loc2_.§"_§[0].x;
            if(_loc5_ || §9R§)
            {
               _loc2_.§7!H§ = _loc2_.§"_§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < _loc2_.§2x§.length)
            {
               _loc2_.§2x§[_loc3_].angle = 360 - _loc2_.§2x§[_loc3_].angle;
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                  }
               }
               _loc3_ = §§pop();
               if(!_loc5_)
               {
                  break;
               }
               continue loop0;
            }
            return _loc2_;
         }
      }
      
      protected static function §3y§(param1:int, param2:Object) : Vector.<§%!?§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§%!?§ = null;
         var _loc3_:Vector.<§%!?§> = new Vector.<§%!?§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc10_ || param1)
               {
                  §§push(_loc5_.type == §%!?§.§#>§);
                  if(_loc10_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(_loc10_)
                        {
                           §§pop();
                           addr122:
                           if(!(_loc9_ && param1))
                           {
                              §§push(_loc5_.type == §%!?§.§!E§);
                           }
                           _loc8_ = new §%!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                           if(_loc5_.type == §%!?§.§!E§)
                           {
                              _loc8_.axisX = _loc5_.axisX;
                              if(!_loc9_)
                              {
                                 _loc8_.axisY = _loc5_.axisY;
                                 if(!(_loc9_ && §9R§))
                                 {
                                    addr197:
                                    if(_loc5_.type == §%!?§.§?f§)
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          addr209:
                                          _loc8_.§ 0§ = _loc5_.destroyTimer;
                                          if(_loc9_)
                                          {
                                          }
                                          addr218:
                                          _loc4_++;
                                          continue;
                                       }
                                    }
                                    addr172:
                                 }
                                 _loc3_.push(_loc8_);
                                 §§goto(addr218);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr172);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr122);
                  }
                  else
                  {
                     _loc8_ = new §%!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                  }
                  §§goto(addr197);
               }
               §§goto(addr122);
            }
            §§goto(addr209);
         }
         return _loc3_;
      }
      
      public function get § M§() : int
      {
         return this.§2x§.length;
      }
      
      public function get §"9§() : int
      {
         return this.§-!C§.length;
      }
      
      public function get §5C§() : int
      {
         return this.§"_§.length;
      }
      
      public function get §`R§() : int
      {
         return this.§1A§.length;
      }
      
      public function get theme() : String
      {
         return this.§^?§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^?§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§,!%§());
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           addr58:
                           §§pop();
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(_loc1_);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr84:
                                 §§push(this.§-!6§);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr94);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr102);
                        }
                     }
                     addr94:
                     if(§§pop() < §§pop())
                     {
                        if(_loc3_ || _loc1_)
                        {
                           addr102:
                           §§push(_loc1_);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr120:
                              return §§pop();
                           }
                           §§goto(addr144);
                        }
                        else
                        {
                           addr145:
                           §§push(this.§-!6§);
                        }
                     }
                     else
                     {
                        §§push(this.§-!6§);
                        if(_loc3_)
                        {
                           addr133:
                           if(§§pop() == 0)
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    addr144:
                                    return §§pop();
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr145);
                        }
                     }
                     addr147:
                     return §§pop();
                  }
                  §§goto(addr58);
               }
               §§goto(addr133);
            }
            §§goto(addr84);
         }
         §§goto(addr102);
      }
      
      public function §>+§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§,!%§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(0);
               if(_loc3_ || this)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§pop();
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr88);
                           }
                           §§goto(addr99);
                        }
                     }
                  }
                  addr88:
                  §§goto(addr87);
               }
               addr87:
               §§goto(addr86);
            }
            addr86:
            if(_loc2_ < param1)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr96);
               }
            }
            else
            {
               addr99:
               this.§-!6§ = param1;
            }
            return;
         }
         addr96:
      }
      
      public function §>!E§(param1:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:§'H§ = null;
         var _loc5_:Object = null;
         var _loc6_:§?!3§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§"!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§2!%§ = _loc2_.LevelExtension;
         this.§[!$§ = false;
         this.§!!9§ = _loc2_.scoreSilver;
         if(_loc11_)
         {
            this.§4$§ = _loc2_.scoreGold;
            if(_loc11_ || param1)
            {
               this.§-!6§ = _loc2_.scoreEagle;
               addr68:
               this.§^?§ = _loc2_.theme;
               this.mName = _loc2_.id;
               if(_loc2_.counts.joints)
               {
                  if(_loc11_)
                  {
                     this.§-!C§ = §3y§(_loc2_.counts.joints,_loc2_.world);
                     if(_loc10_ && this)
                     {
                     }
                     addr106:
                     this.§"_§ = new Vector.<§?!3§>();
                     if(!_loc10_)
                     {
                        addr114:
                        this.§2x§ = new Vector.<§"!D§>();
                     }
                     var _loc3_:* = Number(0);
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc10_ && _loc3_))
                        {
                           if(§§pop() >= _loc2_.camera.length)
                           {
                              if(_loc11_ || param1)
                              {
                                 §§push(1);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc11_ || _loc3_)
                                    {
                                       _loc3_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc11_ || param1)
                                             {
                                                if(§§pop() > _loc2_.counts.birds)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      addr349:
                                                      §§push(Number(1));
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      break loop0;
                                                   }
                                                   §§goto(addr536);
                                                }
                                                _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                (_loc6_ = new §?!3§()).x = _loc5_.x;
                                                if(!(_loc10_ && param1))
                                                {
                                                   _loc6_.y = _loc5_.y;
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      addr304:
                                                      _loc6_.id = _loc5_.id;
                                                      if(_loc11_)
                                                      {
                                                         this.§"_§.push(_loc6_);
                                                         if(!(_loc11_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   §§push(_loc3_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc11_ || param1)
                                                      {
                                                         addr332:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      continue;
                                                   }
                                                   §§goto(addr332);
                                                }
                                                §§goto(addr304);
                                             }
                                             break;
                                          }
                                          _loc3_ = §§pop();
                                          if(_loc11_ || _loc3_)
                                          {
                                             addr365:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                break loop0;
                                             }
                                             addr524:
                                          }
                                          addr536:
                                          this.§2^§ = _loc2_.slingshotX;
                                          §§goto(addr540);
                                       }
                                       addr540:
                                       this.§7!H§ = _loc2_.slingshotY;
                                       return;
                                    }
                                    break;
                                 }
                                 §§goto(addr349);
                              }
                              §§goto(addr365);
                           }
                           else
                           {
                              (_loc4_ = new §'H§()).x = _loc2_.camera[_loc3_].x;
                              if(_loc11_)
                              {
                                 _loc4_.y = _loc2_.camera[_loc3_].y;
                                 if(!(_loc10_ && this))
                                 {
                                    _loc4_.left = _loc2_.camera[_loc3_].left;
                                    if(_loc10_ && param1)
                                    {
                                       continue;
                                    }
                                    _loc4_.right = _loc2_.camera[_loc3_].right;
                                    _loc4_.top = _loc2_.camera[_loc3_].top;
                                    _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                    if(_loc11_)
                                    {
                                       _loc4_.id = _loc2_.camera[_loc3_].id;
                                       this.§1A§.push(_loc4_);
                                       if(!(_loc11_ || this))
                                       {
                                          continue;
                                       }
                                    }
                                 }
                              }
                              §§push(_loc3_);
                              if(!(_loc10_ && this))
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc11_)
                                 {
                                    addr218:
                                    §§push(Number(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 continue;
                              }
                              §§goto(addr218);
                           }
                        }
                        break;
                     }
                     for(; §§pop() <= _loc2_.counts.blocks; §§goto(addr524))
                     {
                        §§push("block_");
                        if(!(_loc10_ && param1))
                        {
                           §§push(§§pop() + _loc3_);
                        }
                        _loc7_ = §§pop();
                        _loc8_ = _loc2_.world[_loc7_];
                        (_loc9_ = new §"!D§()).x = _loc8_.x;
                        if(!(_loc10_ && param1))
                        {
                           _loc9_.y = _loc8_.y;
                           _loc9_.id = _loc8_.id;
                           if(_loc10_)
                           {
                              continue;
                           }
                        }
                        §§push(Boolean(_loc8_.uniqueID));
                        if(_loc11_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc11_ || _loc3_)
                              {
                                 §§pop();
                                 §§push(_loc8_.uniqueID.length > 0);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc11_ || _loc2_)
                           {
                              _loc9_.uniqueID = _loc8_.uniqueID;
                              if(!(_loc10_ && this))
                              {
                                 addr465:
                                 if(_loc8_.front)
                                 {
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       _loc9_.front = _loc8_.front;
                                       if(_loc11_)
                                       {
                                          addr481:
                                          _loc9_.angle = _loc8_.angle;
                                          if(!(_loc10_ && this))
                                          {
                                             addr492:
                                             this.§2x§.push(_loc9_);
                                          }
                                       }
                                    }
                                    §§push(_loc3_);
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr522:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       continue;
                                    }
                                    §§goto(addr522);
                                 }
                                 §§goto(addr481);
                                 addr454:
                              }
                              §§goto(addr492);
                           }
                           §§goto(addr454);
                        }
                        else
                        {
                           _loc9_.uniqueID = _loc7_;
                           if(!(_loc11_ || this))
                           {
                              continue;
                           }
                        }
                        §§goto(addr465);
                     }
                     if(_loc10_ && _loc2_)
                     {
                     }
                     §§goto(addr536);
                  }
                  §§goto(addr106);
               }
               this.§1A§ = new Vector.<§'H§>();
               if(_loc11_)
               {
                  §§goto(addr106);
               }
               §§goto(addr114);
            }
            §§goto(addr106);
         }
         §§goto(addr68);
      }
      
      public function §1W§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc3_ || this)
         {
            _loc1_.LevelExtension = this.§2!%§;
            _loc1_.scoreSilver = this.§!!9§;
         }
         _loc1_.scoreGold = this.§4$§;
         _loc1_.scoreEagle = this.§-!6§;
         if(!_loc4_)
         {
            _loc1_.theme = this.§^?§;
         }
         _loc1_.name = this.mName;
         if(_loc3_)
         {
            _loc1_.camera = this.§1A§;
         }
         var _loc2_:* = Number(0);
         if(!(_loc4_ && _loc1_))
         {
            _loc1_.world = new Object();
            if(_loc3_)
            {
               _loc2_ = Number(0);
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§"_§.length)
               {
                  §§push(0);
                  if(_loc3_ || _loc1_)
                  {
                     _loc2_ = Number(§§pop());
                     if(!(_loc4_ && this))
                     {
                        loop6:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || _loc2_)
                           {
                              while(§§pop() < this.§2x§.length)
                              {
                                 _loc1_.world["block_" + (_loc2_ + 1)] = this.§2x§[_loc2_];
                                 if(_loc4_ && _loc1_)
                                 {
                                    break;
                                 }
                                 §§push(_loc2_ + 1);
                                 if(!_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc4_)
                                    {
                                       break loop0;
                                    }
                                    _loc2_ = §§pop();
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§goto(addr225);
                                       }
                                       addr224:
                                    }
                                    break;
                                 }
                                 _loc1_.counts.birds = this.§"_§.length;
                                 §§goto(addr262);
                              }
                              addr181:
                              §§push(Number(0));
                              if(!(_loc4_ && _loc2_))
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr224);
                              }
                              addr176:
                           }
                           §§goto(addr216);
                        }
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr181);
               }
               else
               {
                  _loc1_.world["bird_" + (_loc2_ + 1)] = this.§"_§[_loc2_];
                  §§push(Number(_loc2_ + 1));
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr176);
            }
            break;
         }
         while(true)
         {
            §§push(Number(§§pop() + 1));
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr256);
            }
            addr225:
            while(true)
            {
               if(§§pop() >= this.§-!C§.length)
               {
                  _loc1_.counts = new Object();
                  if(!(_loc4_ && _loc2_))
                  {
                     _loc1_.counts.blocks = this.§2x§.length;
                     break loop2;
                  }
                  addr262:
                  _loc1_.counts.joints = this.§-!C§.length;
                  _loc1_.slingshotX = this.§2^§;
                  if(!_loc4_)
                  {
                     _loc1_.slingshotY = this.§7!H§;
                     break;
                  }
                  break;
               }
               _loc1_.world["joint_" + (_loc2_ + 1)] = this.§-!C§[_loc2_];
               if(!_loc3_)
               {
                  break;
               }
               §§push(_loc2_);
               continue loop2;
            }
            return _loc1_;
         }
      }
      
      public function §2!$§() : String
      {
         return JSON.stringify(this.§1W§());
      }
      
      public function §,!%§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§"!D§ = null;
         var _loc3_:* = null;
         var _loc4_:§+i§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§2x§)
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_.id);
               if(!_loc7_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §3n§.§]B§(_loc3_)) == null);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§pop();
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(§§pop().indexOf("MISC_") == 0);
                        if(!(_loc7_ && this))
                        {
                           addr93:
                           if(§§pop())
                           {
                              addr102:
                              §§push("MISC_FOOD_");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + _loc3_.substring(5));
                              }
                              _loc3_ = §§pop();
                              _loc4_ = §3n§.§]B§(_loc3_);
                           }
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§push(_loc1_);
                           if(!(_loc7_ && _loc1_))
                           {
                              §§push(§§pop() + _loc4_.score);
                              if(_loc8_ || this)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr136:
                                    _loc1_ = §§pop();
                                    if(_loc8_ || _loc1_)
                                    {
                                       addr147:
                                       if(!§<!0§(_loc4_))
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(_loc1_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       addr180:
                                       §§push(_loc4_.§8!,§);
                                       if(_loc8_ || _loc1_)
                                       {
                                          §§push(§§pop() * §#;§.§?!B§.getValue());
                                       }
                                       §§push(int(§§pop() + §§pop()));
                                    }
                                 }
                                 _loc1_ = §§pop();
                                 continue;
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr147);
               }
            }
            §§goto(addr93);
         }
         return _loc1_;
      }
      
      public function §%t§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§'H§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         §§push(_loc1_);
         if(!_loc6_)
         {
            _loc1_ = §§pop() + "<Level background=\"ThemeHills\"";
            if(_loc7_ || _loc3_)
            {
               §§push(_loc1_);
               if(_loc7_ || _loc2_)
               {
                  §§push(" LevelExtension=\"" + this.§2!%§);
                  if(_loc7_)
                  {
                     §§push("\"");
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && _loc3_))
                           {
                              addr76:
                              _loc1_ = §§pop();
                              §§push(_loc1_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr86:
                                 §§push(" AutoCamera=\"" + this.§[!$§);
                                 §§push("\"");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc7_)
                                          {
                                             addr104:
                                             §§push(_loc1_);
                                             §§push(" scoreSilver=\"");
                                             §§push(this.§!!9§);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push("\"");
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr129:
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc7_ || this)
                                                         {
                                                            addr141:
                                                            _loc1_ = §§pop();
                                                            if(_loc7_)
                                                            {
                                                               addr144:
                                                               §§push(_loc1_);
                                                               if(!_loc6_)
                                                               {
                                                                  addr150:
                                                                  §§push(" scoreGold=\"" + this.§4$§);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr159:
                                                                     §§push(§§pop() + "\"");
                                                                     if(_loc7_)
                                                                     {
                                                                        addr162:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr166:
                                                                           _loc1_ = §§pop();
                                                                           §§push(_loc1_);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              addr176:
                                                                              _loc1_ = §§pop() + ">";
                                                                              addr179:
                                                                              §§push(_loc1_);
                                                                              §§push("<Cameras>");
                                                                           }
                                                                        }
                                                                        §§goto(addr179);
                                                                     }
                                                                     addr181:
                                                                     _loc1_ = §§pop() + §§pop();
                                                                     addr182:
                                                                     for each(_loc2_ in this.§1A§)
                                                                     {
                                                                        if(!(_loc7_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc1_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(" <Camera id=\"");
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() + _loc2_.id);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push("\" leftBorder=\"");
                                                                                 if(_loc7_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(_loc2_.left);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          addr234:
                                                                                          §§push("\" rightBorder=\"");
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr237:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc6_ && _loc1_))
                                                                                             {
                                                                                                §§push(_loc2_.right);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   §§push("\" topBorder=\"");
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr281:
                                                                                                         §§push(_loc2_.top);
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§push(§§pop() + (§§pop() + §`m§.§]@§));
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr288:
                                                                                                            §§push(§§pop() + "\"></Camera>");
                                                                                                         }
                                                                                                         _loc1_ = §§pop() + §§pop();
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push("\" bottomBorder=\"");
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr272:
                                                                                                            §§push(_loc2_.top);
                                                                                                            if(_loc6_ && _loc1_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr281);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 §§goto(addr237);
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        §§push("</Cameras>");
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push("<Slingshot x=\"" + this.§"_§[0].x);
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop() + "\" y=\"");
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          addr359:
                                                                                          §§push(§§pop() + (this.§"_§[0].y - 8));
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr369:
                                                                                             §§push(§§pop() + (§§pop() + "\">"));
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                _loc1_ = §§pop();
                                                                                                §§push(_loc1_);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   _loc1_ = §§pop() + " <Birds>";
                                                                                                   §§push(0);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         loop1:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               if(§§pop() >= this.§"_§.length)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr480:
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push(" </Birds>");
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr491:
                                                                                                                           _loc1_ = §§pop() + §§pop();
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              §§push("</Slingshot>");
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr505:
                                                                                                                                 _loc1_ = §§pop() + §§pop();
                                                                                                                                 if(!(_loc6_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr513:
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    loop12:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= this.§2x§.length)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          §§push("</Level>");
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push("<Item id=\"");
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr535:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + this.§2x§[_loc3_].id);
                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push("\" x=\"");
                                                                                                                                                            addr549:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + this.§2x§[_loc3_].x);
                                                                                                                                                                     if(_loc6_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr574:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + this.§2x§[_loc3_].y);
                                                                                                                                                                        addr580:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push("\" rotation=\"");
                                                                                                                                                                           if(_loc7_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr616:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + this.§2x§[_loc3_].angle);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push("\" ></Item>");
                                                                                                                                                                                 }
                                                                                                                                                                                 addr607:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr618:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                                                                    _loc3_++;
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop12;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr616:
                                                                                                                                                                           }
                                                                                                                                                                           addr608:
                                                                                                                                                                           addr629:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc6_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr616);
                                                                                                                                                                           }
                                                                                                                                                                           _loc1_ = §§pop() + §§pop();
                                                                                                                                                                           break loop12;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr557:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push("\" y=\"");
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr574);
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr608);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr548:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr557);
                                                                                                                                                   }
                                                                                                                                                   addr535:
                                                                                                                                                }
                                                                                                                                                §§goto(addr574);
                                                                                                                                             }
                                                                                                                                             addr532:
                                                                                                                                          }
                                                                                                                                          §§goto(addr618);
                                                                                                                                       }
                                                                                                                                       §§goto(addr629);
                                                                                                                                    }
                                                                                                                                    return new XML(_loc1_);
                                                                                                                                    addr623:
                                                                                                                                 }
                                                                                                                                 addr522:
                                                                                                                                 §§goto(addr622);
                                                                                                                              }
                                                                                                                              §§goto(addr535);
                                                                                                                           }
                                                                                                                           §§goto(addr513);
                                                                                                                        }
                                                                                                                        §§goto(addr580);
                                                                                                                     }
                                                                                                                     §§goto(addr532);
                                                                                                                  }
                                                                                                                  §§goto(addr513);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push("  <Bird id=\"");
                                                                                                                     if(!(_loc6_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + this.§"_§[_loc3_].id);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push("\" x=\"");
                                                                                                                           if(_loc7_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop() + this.§"_§[_loc3_].x);
                                                                                                                              §§push("\" y=\"");
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 addr437:
                                                                                                                                 §§push(§§pop() + §§pop() + this.§"_§[_loc3_].y);
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + "\"></Bird>");
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             _loc3_++;
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       addr457:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr491);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr535);
                                                                                                                              }
                                                                                                                              §§goto(addr549);
                                                                                                                           }
                                                                                                                           §§goto(addr437);
                                                                                                                        }
                                                                                                                        §§goto(addr607);
                                                                                                                     }
                                                                                                                     §§goto(addr580);
                                                                                                                  }
                                                                                                                  §§goto(addr618);
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      §§goto(addr622);
                                                                                                   }
                                                                                                   §§goto(addr623);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          §§goto(addr616);
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 §§goto(addr457);
                                                                              }
                                                                              §§goto(addr480);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr548);
                                                                     }
                                                                     §§goto(addr480);
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr166);
         }
         §§goto(addr76);
      }
      
      public function §!6§(param1:int) : §"!D§
      {
         return this.§2x§[param1];
      }
      
      public function addObject(param1:§"!D§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2x§.push(param1);
         }
      }
      
      public function §4! §(param1:int) : §%!?§
      {
         return this.§-!C§[param1];
      }
      
      public function §8P§(param1:§%!?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!C§.push(param1);
         }
      }
      
      public function §?j§(param1:int) : §?!3§
      {
         return this.§"_§[param1];
      }
      
      public function §;$§(param1:§?!3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§"_§.push(param1);
         }
      }
      
      public function §91§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§1A§ = new Vector.<§'H§>();
         }
      }
      
      public function §-P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§"_§ = new Vector.<§?!3§>();
         }
      }
      
      public function §#S§(param1:int) : §'H§
      {
         return this.§1A§[param1];
      }
      
      public function §''§(param1:§'H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§1A§.push(param1);
         }
      }
   }
}
