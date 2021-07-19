package §-!0§
{
   import §;o§.*;
   import §<!<§.§7E§;
   import §?!6§.§1!!§;
   import §?!6§.§]!@§;
   import §@_§.§7!-§;
   import §@_§.§[!k§;
   import §@_§.§[F§;
   import §`a§.§ !U§;
   import flash.geom.Point;
   
   public class §2! §
   {
      
      public static const §4!l§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4!l§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §>!$§:Number = 0;
      
      public var §]!l§:Number = -8;
      
      private var §?n§:Vector.<§[!k§> = null;
      
      private var mBirds:Vector.<§7!-§> = null;
      
      private var §2^§:Vector.<§[F§> = null;
      
      private var §6[§:Vector.<§!!s§> = null;
      
      public var §82§:Number = 0;
      
      public var §#6§:Boolean = false;
      
      public var §6!H§:int = 0;
      
      public var §9>§:int = 0;
      
      private var §5`§:int = 0;
      
      private var §,A§:String = null;
      
      public var mName:String = null;
      
      public function §2! §()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         this.§6[§ = new Vector.<§!!s§>();
         this.§?n§ = new Vector.<§[!k§>();
         if(_loc1_ || _loc1_)
         {
            this.mBirds = new Vector.<§7!-§>();
            this.§2^§ = new Vector.<§[F§>();
            this.§,A§ = §4!l§;
         }
      }
      
      public static function §%!G§(param1:String) : §2! §
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2! § = new §2! §();
         if(_loc4_ || param1)
         {
            _loc2_.§,!0§(param1);
         }
         return _loc2_;
      }
      
      public static function §'c§(param1:§]!@§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.§&!j§);
            if(_loc3_ || _loc2_)
            {
               §§push(§]!@§.§]4§);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && param1))
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && §2! §))
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              addr62:
                              §§push(param1.§&!j§);
                              if(_loc3_ || param1)
                              {
                                 addr71:
                                 §§push(§]!@§.§&l§);
                                 if(!(_loc2_ && §2! §))
                                 {
                                    addr81:
                                    §§push(§§pop() == §§pop());
                                    if(!(§§pop() == §§pop()))
                                    {
                                       if(_loc3_)
                                       {
                                          §§pop();
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr108:
                                             if(param1.§&!j§ == §]!@§.§6!r§)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(true);
                                                   if(_loc3_ || §2! §)
                                                   {
                                                      §§goto(addr119);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr121);
                                                   }
                                                }
                                                §§goto(addr121);
                                             }
                                          }
                                          addr121:
                                          return §§pop();
                                          §§push(false);
                                       }
                                       addr119:
                                       return §§pop();
                                    }
                                 }
                              }
                           }
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr121);
               }
               §§goto(addr81);
            }
            §§goto(addr71);
         }
         §§goto(addr62);
      }
      
      public static function §@t§(param1:String) : §2! §
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§2! § = §%!G§(param1);
         if(!(_loc5_ && _loc3_))
         {
            _loc2_.§>!$§ = _loc2_.mBirds[0].x;
            if(_loc4_)
            {
               addr37:
               _loc2_.§]!l§ = _loc2_.mBirds[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               while(§§pop() < _loc2_.§?n§.length)
               {
                  _loc2_.§?n§[_loc3_].angle = 360 - _loc2_.§?n§[_loc3_].angle;
                  if(!(_loc5_ && §2! §))
                  {
                     §§push(_loc3_);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() + 1);
                        if(_loc4_ || _loc3_)
                        {
                           addr106:
                           §§push(Number(§§pop()));
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr106);
                  }
                  break;
               }
               return _loc2_;
            }
         }
         §§goto(addr37);
      }
      
      protected static function §,f§(param1:int, param2:Object) : Vector.<§[F§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§[F§ = null;
         var _loc3_:Vector.<§[F§> = new Vector.<§[F§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc10_ && §2! §)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!_loc10_)
               {
                  §§push(_loc5_.type == §[F§.§&Y§);
                  if(_loc9_ || param2)
                  {
                     if(!§§pop())
                     {
                        if(_loc9_ || param1)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              addr115:
                              if(_loc5_.type == §[F§.§4=§)
                              {
                                 addr116:
                                 _loc8_ = new §[F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc5_.type == §[F§.§4=§)
                                 {
                                    if(_loc9_ || param1)
                                    {
                                       _loc8_.axisX = _loc5_.axisX;
                                       if(_loc9_)
                                       {
                                          _loc8_.axisY = _loc5_.axisY;
                                          addr191:
                                          if(_loc5_.type == §[F§.§7m§)
                                          {
                                             if(!(_loc10_ && param2))
                                             {
                                                addr203:
                                                _loc8_.§2!l§ = _loc5_.destroyTimer;
                                             }
                                          }
                                          addr166:
                                       }
                                       _loc3_.push(_loc8_);
                                       addr210:
                                       _loc4_++;
                                       continue;
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr166);
                              }
                              else
                              {
                                 _loc8_ = new §[F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr116);
                        }
                     }
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr210);
         }
         return _loc3_;
      }
      
      public function get §0'§() : int
      {
         return this.§?n§.length;
      }
      
      public function get §^!L§() : int
      {
         return this.§2^§.length;
      }
      
      public function get §-!E§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §"T§() : int
      {
         return this.§6[§.length;
      }
      
      public function get theme() : String
      {
         return this.§,A§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§,A§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§]+§());
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc2_)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              addr80:
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 §§push(this.§5`§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr93);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr135);
                        }
                     }
                  }
                  addr93:
                  if(§§pop() < §§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && this))
                        {
                           return §§pop();
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr141);
                  }
                  §§push(this.§5`§);
                  if(_loc2_ || _loc1_)
                  {
                     addr132:
                     addr131:
                     if(§§pop() == 0)
                     {
                        if(_loc2_)
                        {
                           addr135:
                           §§push(_loc1_);
                           if(_loc2_)
                           {
                              §§goto(addr138);
                           }
                           else
                           {
                              §§goto(addr141);
                           }
                        }
                        §§goto(addr141);
                     }
                     addr141:
                     return §§pop();
                     §§push(this.§5`§);
                  }
                  addr138:
                  return §§pop();
               }
               §§goto(addr132);
            }
            §§goto(addr141);
         }
         §§goto(addr80);
      }
      
      public function §8+§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§]+§());
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr79:
                              if(_loc2_ < param1)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr82);
                                 }
                              }
                           }
                           this.§5`§ = param1;
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr79);
         }
         addr82:
      }
      
      public function §,!0§(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§!!s§ = null;
         var _loc5_:Object = null;
         var _loc6_:§7!-§ = null;
         var _loc7_:Object = null;
         var _loc8_:§[!k§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc10_)
         {
            this.§82§ = _loc2_.LevelExtension;
            this.§#6§ = false;
            if(!(_loc9_ && _loc3_))
            {
               this.§6!H§ = _loc2_.scoreSilver;
               if(!(_loc9_ && param1))
               {
                  this.§9>§ = _loc2_.scoreGold;
               }
            }
            this.§5`§ = _loc2_.scoreEagle;
            if(!(_loc9_ && param1))
            {
               this.§,A§ = _loc2_.theme;
               addr83:
               this.mName = _loc2_.id;
               if(_loc2_.counts.joints)
               {
                  if(!_loc9_)
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr110);
               }
               §§goto(addr104);
            }
            addr93:
            this.§2^§ = §,f§(_loc2_.counts.joints,_loc2_.world);
            if(_loc10_)
            {
               addr104:
               this.§6[§ = new Vector.<§!!s§>();
               addr110:
               this.mBirds = new Vector.<§7!-§>();
            }
            this.§?n§ = new Vector.<§[!k§>();
            var _loc3_:* = Number(0);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(!_loc9_)
               {
                  if(§§pop() >= _loc2_.camera.length)
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(1);
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc9_ && _loc3_))
                           {
                              _loc3_ = §§pop();
                              addr326:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc9_ && param1)
                                 {
                                 }
                                 break loop0;
                              }
                              addr326:
                           }
                           while(true)
                           {
                              if(§§pop() > _loc2_.counts.birds)
                              {
                                 §§push(1);
                              }
                              else
                              {
                                 _loc5_ = _loc2_.world["bird_" + _loc3_];
                                 (_loc6_ = new §7!-§()).x = _loc5_.x;
                                 if(_loc10_)
                                 {
                                    _loc6_.y = _loc5_.y;
                                    if(!(_loc9_ && this))
                                    {
                                       _loc6_.id = _loc5_.id;
                                       if(_loc9_)
                                       {
                                       }
                                       §§goto(addr326);
                                    }
                                    this.mBirds.push(_loc6_);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc3_ = §§pop();
                                    }
                                 }
                                 §§goto(addr326);
                              }
                           }
                        }
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              §§push(_loc3_);
                              break loop0;
                           }
                           addr422:
                        }
                        break;
                     }
                     §§goto(addr435);
                  }
                  (_loc4_ = new §!!s§()).x = _loc2_.camera[_loc3_].x;
                  if(_loc9_)
                  {
                     continue;
                  }
                  _loc4_.y = _loc2_.camera[_loc3_].y;
                  if(_loc10_)
                  {
                     _loc4_.left = _loc2_.camera[_loc3_].left;
                     _loc4_.right = _loc2_.camera[_loc3_].right;
                  }
                  _loc4_.top = _loc2_.camera[_loc3_].top;
                  if(!_loc10_)
                  {
                     continue;
                  }
                  _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                  if(!_loc10_)
                  {
                     continue;
                  }
                  _loc4_.id = _loc2_.camera[_loc3_].id;
                  if(!(_loc9_ && _loc2_))
                  {
                     this.§6[§.push(_loc4_);
                     if(!(_loc10_ || _loc2_))
                     {
                        continue;
                     }
                  }
                  §§push(_loc3_);
                  if(_loc10_ || param1)
                  {
                     §§push(§§pop() + 1);
                     if(_loc10_ || _loc3_)
                     {
                        addr232:
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr232);
               }
               break;
            }
            for(; §§pop() <= _loc2_.counts.blocks; §§goto(addr422))
            {
               _loc7_ = _loc2_.world["block_" + _loc3_];
               (_loc8_ = new §[!k§()).x = _loc7_.x;
               _loc8_.y = _loc7_.y;
               if(!_loc9_)
               {
                  _loc8_.id = _loc7_.id;
                  if(!(_loc9_ && param1))
                  {
                     if(_loc7_.front)
                     {
                        if(!(_loc10_ || _loc3_))
                        {
                           continue;
                        }
                        _loc8_.front = _loc7_.front;
                     }
                     _loc8_.angle = _loc7_.angle;
                     if(_loc10_)
                     {
                        addr408:
                        this.§?n§.push(_loc8_);
                        if(!_loc10_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc3_);
                     if(!_loc9_)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc9_)
                        {
                           addr420:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                     §§goto(addr420);
                  }
               }
               §§goto(addr408);
            }
            this.§>!$§ = _loc2_.slingshotX;
            this.§]!l§ = _loc2_.slingshotY;
            addr435:
            return;
         }
         §§goto(addr83);
      }
      
      public function §%!d§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§82§;
         _loc1_.scoreSilver = this.§6!H§;
         _loc1_.scoreGold = this.§9>§;
         if(_loc4_ || _loc2_)
         {
            _loc1_.scoreEagle = this.§5`§;
            if(!_loc3_)
            {
               _loc1_.theme = this.§,A§;
               _loc1_.name = this.mName;
               if(_loc3_ && this)
               {
               }
               §§goto(addr65);
            }
            _loc1_.camera = this.§6[§;
         }
         addr65:
         var _loc2_:* = Number(0);
         if(_loc4_)
         {
            _loc1_.world = new Object();
            if(!_loc3_)
            {
               _loc2_ = Number(0);
            }
         }
         loop0:
         while(true)
         {
            if(_loc2_ < this.mBirds.length)
            {
               continue;
            }
            if(!(_loc3_ && _loc2_))
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() >= this.§?n§.length)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr177:
                                 §§push(Number(0));
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    _loc2_ = §§pop();
                                    addr186:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                              }
                              addr227:
                           }
                           else
                           {
                              _loc1_.world["block_" + (_loc2_ + 1)] = this.§?n§[_loc2_];
                              §§push(Number(_loc2_ + 1));
                              if(_loc4_ || _loc2_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop() >= this.§2^§.length)
                                    {
                                       _loc1_.counts = new Object();
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    addr224:
                                    _loc1_.world["joint_" + (_loc2_ + 1)] = this.§2^§[_loc2_];
                                    §§push(_loc2_);
                                    if(_loc4_ || this)
                                    {
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                                 _loc1_.counts.blocks = this.§?n§.length;
                                 _loc1_.counts.birds = this.mBirds.length;
                                 addr265:
                                 _loc1_.counts.joints = this.§2^§.length;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break loop0;
                                 }
                                 _loc1_.slingshotY = this.§]!l§;
                                 addr228:
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr228);
                        }
                        break;
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc3_ && _loc1_))
                        {
                           §§goto(addr224);
                        }
                     }
                     §§goto(addr228);
                  }
               }
               §§goto(addr177);
            }
            §§goto(addr265);
         }
         _loc1_.slingshotX = this.§>!$§;
         if(_loc4_)
         {
            §§goto(addr265);
         }
         addr288:
         return _loc1_;
      }
      
      public function §4!E§() : String
      {
         return JSON.stringify(this.§%!d§());
      }
      
      public function §]+§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§[!k§ = null;
         var _loc3_:* = null;
         var _loc4_:§]!@§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§?n§)
         {
            if(!_loc7_)
            {
               §§push(_loc2_.id);
               if(!(_loc7_ && _loc1_))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §1!!§.§#P§(_loc3_)) == null);
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(_loc8_ || _loc3_)
                  {
                     addr73:
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(_loc8_)
                           {
                              addr95:
                              if(§§pop())
                              {
                                 addr109:
                                 §§push("MISC_FOOD_");
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc3_.substring(5));
                                 }
                                 _loc3_ = §§pop();
                                 _loc4_ = §1!!§.§#P§(_loc3_);
                              }
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§push(_loc1_);
                              if(_loc8_ || this)
                              {
                                 §§push(§§pop() + _loc4_.score);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc8_)
                                       {
                                          addr159:
                                          if(!§'c§(_loc4_))
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(_loc1_);
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          addr168:
                                          §§push(_loc4_.§1!s§);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() * §7E§.§5X§.getValue());
                                          }
                                          §§push(int(§§pop() + §§pop()));
                                       }
                                       _loc1_ = §§pop();
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr109);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr73);
         }
         return _loc1_;
      }
      
      public function §7!]§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§!!s§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         §§push(_loc1_);
         if(!(_loc6_ && _loc1_))
         {
            _loc1_ = §§pop() + "<Level background=\"ThemeHills\"";
            if(!_loc6_)
            {
               §§push(_loc1_);
               §§push(" LevelExtension=\"");
               if(_loc7_ || this)
               {
                  §§push(§§pop() + this.§82§);
                  §§push("\"");
                  if(_loc7_ || _loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc1_ = §§pop() + §§pop();
                        §§push(_loc1_);
                        if(!_loc6_)
                        {
                           §§push(" AutoCamera=\"" + this.§#6§);
                           if(_loc7_ || _loc3_)
                           {
                              §§push("\"");
                              if(_loc7_ || _loc1_)
                              {
                                 addr91:
                                 _loc1_ = §§pop() + (§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(_loc1_);
                                    §§push(" scoreSilver=\"");
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       addr105:
                                       §§push(this.§6!H§);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr122:
                                             §§push("\"");
                                             if(_loc7_)
                                             {
                                                addr125:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr139:
                                                         _loc1_ = §§pop();
                                                         if(_loc7_ || this)
                                                         {
                                                            §§push(_loc1_);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr155:
                                                               §§push(" scoreGold=\"" + this.§9>§ + "\"");
                                                               if(!(_loc6_ && _loc1_))
                                                               {
                                                                  addr168:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr174:
                                                                        _loc1_ = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr180:
                                                                              §§push(">");
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr183:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr186:
                                                                                    _loc1_ = §§pop();
                                                                                    addr198:
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                    }
                                                                                    for each(_loc2_ in this.§6[§)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(_loc1_);
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          §§push(" <Camera id=\"" + _loc2_.id);
                                                                                          §§push("\" leftBorder=\"");
                                                                                          if(_loc7_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             §§push(_loc2_.left);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push("\" rightBorder=\"");
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(_loc2_.right);
                                                                                                      if(!(_loc6_ && _loc1_))
                                                                                                      {
                                                                                                         addr259:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            §§push("\" topBorder=\"");
                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                            {
                                                                                                               addr275:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc2_.top);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr307:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push("\" bottomBorder=\"");
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        §§push(_loc2_.top);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + § !U§.SCREEN_HEIGHT_B2);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr307);
                                                                                                         §§push("\"></Camera>");
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr307);
                                                                                    }
                                                                                    §§push(_loc1_);
                                                                                    §§push("</Cameras>");
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          if(!(_loc6_ && _loc1_))
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             §§push("<Slingshot x=\"" + this.mBirds[0].x);
                                                                                             §§push("\" y=\"");
                                                                                             if(_loc7_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() + (this.mBirds[0].y - 8) + "\">");
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            _loc1_ = §§pop();
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(" <Birds>");
                                                                                                                  if(!(_loc6_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc7_ || _loc1_)
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              loop1:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= this.mBirds.length)
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + " </Birds>");
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr507:
                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                addr546:
                                                                                                                                                §§push("</Slingshot>");
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   _loc1_ = §§pop() + §§pop();
                                                                                                                                                   addr521:
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      addr524:
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr527:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         break loop1;
                                                                                                                                                      }
                                                                                                                                                      addr602:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + this.§?n§[_loc3_].x);
                                                                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + "\" y=\"");
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + this.§?n§[_loc3_].y + "\" rotation=\"");
                                                                                                                                                            addr571:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + this.§?n§[_loc3_].angle + "\" ></Item>");
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr563:
                                                                                                                                                      }
                                                                                                                                                      loop3:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr590:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  addr594:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_++;
                                                                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr602);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr611);
                                                                                                                                                               }
                                                                                                                                                               addr593:
                                                                                                                                                            }
                                                                                                                                                            break loop3;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr610:
                                                                                                                                                      _loc1_ = §§pop() + "</Level>";
                                                                                                                                                      §§goto(addr608);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr571);
                                                                                                                                                }
                                                                                                                                                addr546:
                                                                                                                                             }
                                                                                                                                             §§goto(addr608);
                                                                                                                                          }
                                                                                                                                          §§goto(addr590);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push("<Item id=\"" + this.§?n§[_loc3_].id);
                                                                                                                                          if(_loc7_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr546);
                                                                                                                                             §§push(§§pop() + "\" x=\"");
                                                                                                                                          }
                                                                                                                                          §§goto(addr571);
                                                                                                                                       }
                                                                                                                                       addr530:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       §§push("  <Bird id=\"");
                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + this.mBirds[_loc3_].id + "\" x=\"" + this.mBirds[_loc3_].x);
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push("\" y=\"");
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + this.mBirds[_loc3_].y);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push("\"></Bird>");
                                                                                                                                                         addr470:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr593);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr590);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr469:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr470);
                                                                                                                                             }
                                                                                                                                             addr452:
                                                                                                                                          }
                                                                                                                                          §§goto(addr571);
                                                                                                                                       }
                                                                                                                                       §§goto(addr546);
                                                                                                                                    }
                                                                                                                                    §§goto(addr546);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= this.§?n§.length)
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr530);
                                                                                                                                    §§push(_loc1_);
                                                                                                                                 }
                                                                                                                                 addr608:
                                                                                                                                 addr611:
                                                                                                                                 return new XML(_loc1_);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr524);
                                                                                                                        }
                                                                                                                        §§goto(addr594);
                                                                                                                     }
                                                                                                                     §§goto(addr507);
                                                                                                                  }
                                                                                                                  §§goto(addr563);
                                                                                                               }
                                                                                                               §§goto(addr484);
                                                                                                            }
                                                                                                            §§goto(addr527);
                                                                                                         }
                                                                                                         §§goto(addr484);
                                                                                                      }
                                                                                                      §§goto(addr507);
                                                                                                   }
                                                                                                   §§goto(addr469);
                                                                                                }
                                                                                                §§goto(addr546);
                                                                                             }
                                                                                             §§goto(addr470);
                                                                                          }
                                                                                          §§goto(addr521);
                                                                                       }
                                                                                       §§goto(addr610);
                                                                                    }
                                                                                    §§goto(addr452);
                                                                                 }
                                                                                 addr197:
                                                                                 _loc1_ = §§pop();
                                                                                 §§goto(addr198);
                                                                              }
                                                                              addr196:
                                                                              §§goto(addr197);
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     §§goto(addr196);
                                                                     §§push("<Cameras>");
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr125);
               }
               §§goto(addr91);
            }
            §§goto(addr186);
         }
         §§goto(addr139);
      }
      
      public function getObject(param1:int) : §[!k§
      {
         return this.§?n§[param1];
      }
      
      public function addObject(param1:§[!k§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?n§.push(param1);
         }
      }
      
      public function §'N§(param1:int) : §[F§
      {
         return this.§2^§[param1];
      }
      
      public function §"g§(param1:§[F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2^§.push(param1);
         }
      }
      
      public function §`R§(param1:int) : §7!-§
      {
         return this.mBirds[param1];
      }
      
      public function §1!T§(param1:§7!-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mBirds.push(param1);
         }
      }
      
      public function §7!q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6[§ = new Vector.<§!!s§>();
         }
      }
      
      public function §";§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.mBirds = new Vector.<§7!-§>();
         }
      }
      
      public function getCamera(param1:int) : §!!s§
      {
         return this.§6[§[param1];
      }
      
      public function §,!j§(param1:§!!s§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6[§.push(param1);
         }
      }
   }
}
