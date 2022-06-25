package §"L§
{
   import §&V§.§+H§;
   import §&V§.§38§;
   import §&V§.§3V§;
   import §1i§.*;
   import §2!H§.LevelMain;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §<!j§.§%!-§;
   import flash.geom.Point;
   
   public class LevelModel
   {
      
      public static const §-!Q§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!Q§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §7a§:Number = 0;
      
      public var §<7§:Number = -8;
      
      private var §4!W§:Vector.<§+H§> = null;
      
      private var §#P§:Vector.<§38§> = null;
      
      private var §=![§:Vector.<§3V§> = null;
      
      private var §5P§:Vector.<§;c§> = null;
      
      public var §]X§:Number = 0;
      
      public var §?v§:Boolean = false;
      
      public var §^]§:int = 0;
      
      public var §;!L§:int = 0;
      
      private var §@2§:int = 0;
      
      private var §''§:String = null;
      
      public var mName:String = null;
      
      public function LevelModel()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§5P§ = new Vector.<§;c§>();
               addr123:
               while(true)
               {
                  this.§4!W§ = new Vector.<§+H§>();
                  addr47:
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr64:
                  }
               }
            }
            addr126:
         }
         while(true)
         {
            this.§#P§ = new Vector.<§38§>();
            while(true)
            {
               if(!_loc2_)
               {
                  this.§=![§ = new Vector.<§3V§>();
                  continue;
               }
               §§goto(addr126);
            }
            §§goto(addr123);
            if(!(_loc1_ || _loc2_))
            {
               continue;
            }
            §§goto(addr47);
         }
         §§goto(addr64);
      }
      
      public static function §?!=§(param1:String) : LevelModel
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelModel = new LevelModel();
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.§2U§(param1);
         }
         return _loc2_;
      }
      
      public static function §`O§(param1:§5s§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1.§17§);
            loop0:
            while(true)
            {
               §§push(§5s§.§4!T§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1.§17§);
                                       loop8:
                                       for(; _loc3_; while(true)
                                       {
                                          §§push(param1.§17§);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          addr53:
                                          §§push(§5s§.§'!W§);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!(_loc3_ || LevelModel))
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_ || param1)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr91);
                                                   §§push(Boolean(§§pop()));
                                                }
                                                else
                                                {
                                                   §§goto(addr153);
                                                }
                                             }
                                             addr92:
                                          }
                                          continue loop9;
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!(_loc3_ || LevelModel))
                                                   {
                                                      continue loop7;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      break loop12;
                                                   }
                                                }
                                             }
                                             §§push(false);
                                             if(_loc2_ && _loc2_)
                                             {
                                                break;
                                             }
                                             if(_loc3_ || param1)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          while(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          return §§pop();
                                       })
                                       {
                                          §§push(§5s§.§"!W§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!_loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc2_ && LevelModel))
                                                {
                                                   while(true)
                                                   {
                                                      addr139:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop9;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr92);
                                                            }
                                                            addr91:
                                                         }
                                                      }
                                                   }
                                                   addr138:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop8;
                                                }
                                                addr153:
                                             }
                                             §§goto(addr139);
                                             §§goto(addr53);
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public static function §=g§(param1:String) : LevelModel
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:LevelModel = §?!=§(param1);
         if(!_loc4_)
         {
            _loc2_.§7a§ = _loc2_.§#P§[0].x;
            if(_loc5_ || param1)
            {
               addr38:
               _loc2_.§<7§ = _loc2_.§#P§[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() >= _loc2_.§4!W§.length)
                  {
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc2_.§4!W§[_loc3_].angle = 360 - _loc2_.§4!W§[_loc3_].angle;
                  }
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               _loc3_ = §§pop();
            }
            return _loc2_;
         }
         §§goto(addr38);
      }
      
      protected static function §8![§(param1:int, param2:Object) : Vector.<§3V§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3V§ = null;
         var _loc3_:Vector.<§3V§> = new Vector.<§3V§>();
         §§push(1);
         if(_loc10_ || LevelModel)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ <= param1)
         {
            _loc5_ = param2["joint_" + _loc4_];
            if(!(_loc9_ && param1))
            {
               if(_loc5_ != null)
               {
                  if(!_loc10_)
                  {
                     continue;
                  }
                  addr68:
                  _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
                  _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
                  _loc8_ = null;
                  if(_loc10_)
                  {
                     §§push(_loc5_.type == §3V§.§!U§);
                     if(_loc10_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc10_ || LevelModel)
                        {
                           §§push(§§pop());
                           if(_loc10_ || _loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 addr137:
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    addr140:
                                    §§push(_loc5_.type == §3V§.§]C§);
                                    if(_loc10_ || param2)
                                    {
                                       addr154:
                                       if(§§pop())
                                       {
                                          addr155:
                                          _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                          if(_loc10_)
                                          {
                                             if(_loc5_.type == §3V§.§]C§)
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   addr198:
                                                   _loc8_.axisX = _loc5_.axisX;
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      _loc8_.axisY = _loc5_.axisY;
                                                      if(!(_loc9_ && LevelModel))
                                                      {
                                                         addr235:
                                                         if(_loc5_.type == §3V§.§@+§)
                                                         {
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               addr258:
                                                               _loc8_.§]!f§ = _loc5_.destroyTimer;
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               addr268:
                                                               §§push(_loc4_);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr274:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  continue;
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                         }
                                                         addr220:
                                                      }
                                                   }
                                                   _loc3_.push(_loc8_);
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr155);
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr140);
               }
               §§goto(addr258);
            }
            §§goto(addr68);
         }
         return _loc3_;
      }
      
      public function get §2L§() : int
      {
         return this.§4!W§.length;
      }
      
      public function get §=!#§() : int
      {
         return this.§=![§.length;
      }
      
      public function get §8!c§() : int
      {
         return this.§#P§.length;
      }
      
      public function get §8L§() : int
      {
         return this.§5P§.length;
      }
      
      public function get theme() : String
      {
         return this.§''§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§''§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§<o§());
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 while(true)
                                 {
                                    §§push(this.§@2§);
                                    addr110:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(!_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                    addr43:
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(0);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       if(_loc3_ && this)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   addr33:
                                                   while(true)
                                                   {
                                                      §§push(this.§@2§);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§goto(addr43);
                                                      }
                                                      break;
                                                   }
                                                   addr86:
                                                   if(_loc3_ && this)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr138:
                                                   continue loop0;
                                                }
                                                addr139:
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             addr25:
                                             §§push(this.§@2§);
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr86);
                                          }
                                          if(!_loc3_)
                                          {
                                             §§goto(addr86);
                                             §§push(_loc1_);
                                          }
                                          else
                                          {
                                             addr137:
                                             §§push(_loc1_);
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr25);
                                    }
                                    §§goto(addr110);
                                 }
                              }
                           }
                        }
                        while(!§§pop())
                        {
                           §§goto(addr33);
                        }
                        §§goto(addr137);
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §#!2§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§<o§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr104:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        addr110:
                        §§push(§§pop());
                        if(_loc3_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    loop5:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§@2§ = param1;
                                          if(!(_loc4_ && this))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr34);
                              }
                              return;
                              addr78:
                           }
                           addr79:
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                        addr71:
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr78);
                     }
                     addr120:
                  }
                  §§goto(addr110);
               }
            }
            addr103:
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_ || this)
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr80);
               }
               else
               {
                  §§goto(addr104);
               }
            }
            else
            {
               §§goto(addr103);
            }
            §§goto(addr104);
            §§goto(addr120);
         }
      }
      
      public function §2U§(param1:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§;c§ = null;
         var _loc5_:Object = null;
         var _loc6_:§38§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§+H§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc11_)
         {
            this.§]X§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§?v§ = false;
               loop1:
               while(true)
               {
                  this.§^]§ = _loc2_.scoreSilver;
                  while(true)
                  {
                     this.§;!L§ = _loc2_.scoreGold;
                     while(!_loc11_)
                     {
                        this.§@2§ = _loc2_.scoreEagle;
                        loop8:
                        for(; _loc10_ || param1; if(!(_loc10_ || this))
                        {
                           continue;
                        },if(false)
                        {
                           §§goto(addr70);
                        },var _loc3_:* = Number(0),addr320:,§§push(_loc3_),if(_loc10_ || param1)
                        {
                           if(§§pop() < _loc2_.camera.length)
                           {
                              _loc4_ = new §;c§();
                              if(!_loc11_)
                              {
                                 _loc4_.x = _loc2_.camera[_loc3_].x;
                                 _loc4_.y = _loc2_.camera[_loc3_].y;
                                 addr319:
                              }
                              _loc4_.left = _loc2_.camera[_loc3_].left;
                              addr288:
                              if(!_loc11_)
                              {
                                 if(_loc10_)
                                 {
                                    _loc4_.right = _loc2_.camera[_loc3_].right;
                                    _loc4_.top = _loc2_.camera[_loc3_].top;
                                    addr263:
                                    if(_loc10_ || param1)
                                    {
                                       _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                       addr252:
                                       if(!_loc11_)
                                       {
                                          _loc4_.id = _loc2_.camera[_loc3_].id;
                                          addr236:
                                          if(_loc10_ || _loc2_)
                                          {
                                             addr221:
                                             this.§5P§.push(_loc4_);
                                             §§push(_loc3_);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc10_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc3_ = §§pop();
                                             if(_loc10_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr236);
                                             }
                                             addr227:
                                             §§goto(addr227);
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr263);
                                    }
                                    addr279:
                                    §§goto(addr279);
                                 }
                                 §§goto(addr319);
                              }
                              addr301:
                              §§goto(addr301);
                           }
                           if(!_loc11_)
                           {
                              §§push(1);
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc11_)
                                 {
                                    addr340:
                                    _loc3_ = §§pop();
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       addr418:
                                       §§push(_loc3_);
                                       if(!_loc11_)
                                       {
                                          if(§§pop() <= _loc2_.counts.birds)
                                          {
                                             _loc5_ = _loc2_.world["bird_" + _loc3_];
                                             _loc6_ = new §38§();
                                             if(!_loc11_)
                                             {
                                                _loc6_.x = _loc5_.x;
                                                _loc6_.y = _loc5_.y;
                                                _loc6_.id = _loc5_.id;
                                                addr417:
                                                if(_loc10_ || this)
                                                {
                                                   addr378:
                                                   this.§#P§.push(_loc6_);
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc10_)
                                                            {
                                                               addr372:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               addr376:
                                                               if(false)
                                                               {
                                                                  §§goto(addr378);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                   }
                                                   §§goto(addr417);
                                                }
                                                addr412:
                                                §§goto(addr412);
                                             }
                                             §§goto(addr376);
                                          }
                                          if(!_loc11_)
                                          {
                                             addr428:
                                             §§push(Number(1));
                                             if(!_loc11_)
                                             {
                                                addr431:
                                                _loc3_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   addr611:
                                                   if(_loc3_ <= _loc2_.counts.blocks)
                                                   {
                                                      §§push("block_");
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() + _loc3_);
                                                      }
                                                      _loc7_ = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         _loc8_ = _loc2_.world[_loc7_];
                                                         _loc9_ = new §+H§();
                                                         if(_loc10_)
                                                         {
                                                            _loc9_.x = _loc8_.x;
                                                            _loc9_.y = _loc8_.y;
                                                            _loc9_.id = _loc8_.id;
                                                            addr610:
                                                            addr595:
                                                            addr589:
                                                            §§push(Boolean(_loc8_.uniqueID));
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc10_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  addr582:
                                                                  §§pop();
                                                                  §§push(_loc8_.uniqueID.length > 0);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(_loc11_ && _loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr582);
                                                                  addr583:
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  addr562:
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc9_.uniqueID = _loc8_.uniqueID;
                                                                     addr568:
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr507:
                                                                        §§push(Boolean(_loc8_.front));
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 addr521:
                                                                                 _loc9_.front = _loc8_.front;
                                                                              }
                                                                              addr525:
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr492:
                                                                                 _loc9_.angle = _loc8_.angle;
                                                                                 addr497:
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr485:
                                                                                       this.§4!W§.push(_loc9_);
                                                                                       addr491:
                                                                                       §§push(_loc3_);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr470:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc3_ = §§pop();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr485);
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                                §§goto(addr562);
                                                                                             }
                                                                                             §§goto(addr497);
                                                                                          }
                                                                                          §§goto(addr491);
                                                                                       }
                                                                                       §§goto(addr470);
                                                                                    }
                                                                                    §§goto(addr610);
                                                                                 }
                                                                                 §§goto(addr525);
                                                                              }
                                                                              addr534:
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§goto(addr507);
                                                                                 }
                                                                                 §§goto(addr595);
                                                                              }
                                                                              §§goto(addr568);
                                                                           }
                                                                           §§goto(addr492);
                                                                        }
                                                                        §§goto(addr582);
                                                                     }
                                                                     §§goto(addr589);
                                                                  }
                                                                  §§goto(addr583);
                                                               }
                                                               _loc9_.uniqueID = _loc7_;
                                                               §§goto(addr534);
                                                            }
                                                            §§goto(addr582);
                                                         }
                                                         §§goto(addr521);
                                                      }
                                                      addr634:
                                                      this.§<7§ = _loc2_.slingshotY;
                                                      §§goto(addr638);
                                                   }
                                                   if(_loc11_ && _loc3_)
                                                   {
                                                   }
                                                   addr638:
                                                   return;
                                                   addr434:
                                                }
                                                this.§7a§ = _loc2_.slingshotX;
                                                if(_loc11_ && _loc3_)
                                                {
                                                }
                                                §§goto(addr634);
                                             }
                                             §§goto(addr611);
                                          }
                                          §§goto(addr634);
                                       }
                                       §§goto(addr431);
                                       addr348:
                                    }
                                    §§goto(addr434);
                                 }
                                 §§goto(addr431);
                              }
                              §§goto(addr428);
                           }
                           §§goto(addr348);
                        },§§goto(addr340))
                        {
                           if(_loc11_)
                           {
                              continue loop0;
                           }
                           loop9:
                           while(true)
                           {
                              this.§5P§ = new Vector.<§;c§>();
                              while(true)
                              {
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    if(_loc11_)
                                    {
                                       addr98:
                                       break;
                                    }
                                    if(_loc11_ && this)
                                    {
                                       break loop9;
                                    }
                                    continue;
                                 }
                                 addr143:
                                 while(!(_loc11_ && _loc3_))
                                 {
                                    this.§=![§ = §8![§(_loc2_.counts.joints,_loc2_.world);
                                    continue loop8;
                                 }
                                 while(true)
                                 {
                                    if(_loc2_.counts.joints)
                                    {
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 addr112:
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              this.§''§ = _loc2_.theme;
                              continue loop1;
                              §§goto(addr98);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function §3!@§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.LevelExtension = this.§]X§;
            while(true)
            {
               _loc1_.scoreSilver = this.§^]§;
               while(!(_loc3_ && _loc1_))
               {
                  while(true)
                  {
                     _loc1_.scoreGold = this.§;!L§;
                     loop3:
                     while(true)
                     {
                        _loc1_.scoreEagle = this.§@2§;
                        addr78:
                        while(true)
                        {
                           addr53:
                           _loc1_.theme = this.§''§;
                           continue loop3;
                        }
                     }
                  }
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §4!_§() : String
      {
         return JSON.stringify(this.§3!@§());
      }
      
      public function §<o§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§+H§ = null;
         var _loc3_:* = null;
         var _loc4_:§5s§ = null;
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§4!W§)
         {
            if(_loc7_)
            {
               §§push(_loc2_.id);
               if(!_loc8_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            _loc4_ = LevelItemManager.§&!i§(_loc3_);
            if(!_loc8_)
            {
               §§push(_loc4_ == null);
               if(_loc7_ || _loc1_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc7_ || _loc1_)
                  {
                     §§push(§§pop());
                     if(_loc7_ || _loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!_loc8_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_)
                                    {
                                       addr114:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             addr130:
                                             §§push("MISC_FOOD_");
                                             if(_loc7_ || _loc2_)
                                             {
                                                §§push(§§pop() + _loc3_.substring(5));
                                             }
                                             _loc3_ = §§pop();
                                             if(!(_loc8_ && this))
                                             {
                                                addr138:
                                                _loc4_ = LevelItemManager.§&!i§(_loc3_);
                                                §§push(Boolean(_loc4_));
                                                if(!(_loc8_ && this))
                                                {
                                                   addr153:
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + _loc4_.score);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(_loc7_ || this)
                                                            {
                                                               addr172:
                                                               _loc1_ = §§pop();
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  addr180:
                                                                  if(!§`O§(_loc4_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr201:
                                                                  §§push(_loc1_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr219:
                                                                     §§push(_loc4_.§]!3§);
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop() * LevelMain.§!!R§.getValue());
                                                                     }
                                                                     §§push(int(§§pop() + §§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            _loc1_ = §§pop();
                                                            continue;
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr153);
               }
               §§goto(addr114);
            }
            §§goto(addr130);
         }
         return _loc1_;
      }
      
      public function §0g§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§;c§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(_loc7_)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               addr284:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  addr285:
                  while(true)
                  {
                     §§push(§§pop());
                     addr286:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr287:
                        while(true)
                        {
                           §§push(_loc1_);
                           addr272:
                           while(true)
                           {
                              §§push(" LevelExtension=\"");
                              addr273:
                              while(true)
                              {
                                 §§push(§§pop() + this.§]X§);
                                 addr276:
                                 while(true)
                                 {
                                    §§push("\"");
                                    addr277:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr278:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr279:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr280:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr283:
         }
         loop12:
         while(true)
         {
            §§push(_loc1_);
            loop13:
            while(true)
            {
               if(_loc7_)
               {
                  §§push(" AutoCamera=\"");
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + this.§?v§);
                  }
                  loop14:
                  while(!(_loc6_ && _loc1_))
                  {
                     if(!_loc6_)
                     {
                        §§push("\"");
                        loop15:
                        for(; _loc7_; while(!(_loc6_ && _loc3_))
                        {
                           §§goto(addr223);
                           §§push(§§pop() + §§pop());
                        })
                        {
                           §§push(§§pop() + §§pop());
                           loop16:
                           while(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              loop17:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop18:
                                 while(_loc7_)
                                 {
                                    _loc1_ = §§pop();
                                    loop19:
                                    for(; _loc7_ || this; if(!(_loc7_ || _loc3_))
                                    {
                                       continue;
                                    },if(false)
                                    {
                                       §§goto(addr106);
                                    }
                                    else
                                    {
                                       var _loc4_:int = 0;
                                       var _loc5_:* = this.§5P§;
                                       addr420:
                                       for each(_loc2_ in _loc5_)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(_loc1_);
                                             if(_loc7_ || this)
                                             {
                                                §§push(" <Camera id=\"");
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() + _loc2_.id);
                                                   if(!_loc6_)
                                                   {
                                                      §§push("\" leftBorder=\"");
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc7_)
                                                         {
                                                            §§push(_loc2_.left);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc7_)
                                                               {
                                                                  §§push("\" rightBorder=\"");
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr350:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        addr358:
                                                                        §§push(_loc2_.right);
                                                                        if(_loc7_ || _loc1_)
                                                                        {
                                                                           addr367:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push("\" topBorder=\"");
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(_loc2_.top);
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          addr393:
                                                                                          §§push("\" bottomBorder=\"");
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr396:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                addr417:
                                                                                                §§push(_loc2_.top);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr408:
                                                                                                   §§push(§§pop() + §%!-§.§#!>§);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr415:
                                                                                                   §§push("\"></Camera>");
                                                                                                }
                                                                                                _loc1_ = §§pop() + §§pop();
                                                                                                §§goto(addr420);
                                                                                             }
                                                                                             §§goto(addr415);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§goto(addr417);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           §§goto(addr417);
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     §§goto(addr417);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr417);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr417);
                                          }
                                          §§goto(addr420);
                                       }
                                       if(!_loc6_)
                                       {
                                          addr965:
                                          _loc1_ += "</Cameras>";
                                          addr959:
                                          _loc1_ += "<Slingshot x=\"" + this.§#P§[0].x + "\" y=\"" + (this.§#P§[0].y - 8) + "\">";
                                          addr920:
                                          addr958:
                                          addr955:
                                          addr947:
                                          addr963:
                                          addr945:
                                          addr957:
                                          addr938:
                                          addr966:
                                          addr960:
                                          addr946:
                                          addr956:
                                          addr939:
                                          addr962:
                                          §§push(_loc1_ + " <Birds>");
                                          if(!_loc6_)
                                          {
                                             addr924:
                                             _loc1_ = §§pop();
                                             addr915:
                                             _loc3_ = int(0);
                                             addr814:
                                             addr916:
                                             addr925:
                                             addr914:
                                             if(_loc3_ >= this.§#P§.length)
                                             {
                                                addr820:
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   addr829:
                                                   §§push(_loc1_ + " </Birds>");
                                                   if(!_loc6_)
                                                   {
                                                      addr833:
                                                      _loc1_ = §§pop();
                                                      addr834:
                                                      §§push(_loc1_);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr798:
                                                         §§push("</Slingshot>");
                                                         if(_loc7_)
                                                         {
                                                            addr801:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr806:
                                                                  §§push(§§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        addr811:
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr784:
                                                                           §§push(int(0));
                                                                           if(_loc7_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              addr434:
                                                                              addr787:
                                                                              §§push(_loc3_);
                                                                              if(_loc7_ || _loc2_)
                                                                              {
                                                                                 if(!(_loc6_ && _loc1_))
                                                                                 {
                                                                                    if(_loc7_ || _loc2_)
                                                                                    {
                                                                                       if(§§pop() >= this.§4!W§.length)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc7_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!(_loc6_ && _loc1_))
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push("</Level>");
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc6_ && _loc1_))
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 addr521:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    addr529:
                                                                                                                                    if(_loc6_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr834);
                                                                                                                                    }
                                                                                                                                    return new XML(_loc1_);
                                                                                                                                    addr536:
                                                                                                                                 }
                                                                                                                                 addr910:
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 addr839:
                                                                                                                                 _loc3_++;
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr814);
                                                                                                                                 }
                                                                                                                                 §§goto(addr916);
                                                                                                                                 addr837:
                                                                                                                                 addr838:
                                                                                                                                 addr911:
                                                                                                                              }
                                                                                                                              §§goto(addr801);
                                                                                                                           }
                                                                                                                           addr769:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              _loc1_ = §§pop();
                                                                                                                              addr773:
                                                                                                                              if(!(_loc6_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr539:
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             addr554:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             if(_loc7_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      addr576:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr434);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr820);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr787);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr915);
                                                                                                                                                }
                                                                                                                                                §§goto(addr837);
                                                                                                                                             }
                                                                                                                                             §§goto(addr784);
                                                                                                                                          }
                                                                                                                                          §§goto(addr838);
                                                                                                                                       }
                                                                                                                                       §§goto(addr554);
                                                                                                                                    }
                                                                                                                                    §§goto(addr915);
                                                                                                                                 }
                                                                                                                                 §§goto(addr784);
                                                                                                                              }
                                                                                                                              §§goto(addr811);
                                                                                                                           }
                                                                                                                           §§goto(addr806);
                                                                                                                        }
                                                                                                                        addr748:
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr752:
                                                                                                                           §§push(§§pop() + "\" ></Item>");
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr769);
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr920);
                                                                                                                              }
                                                                                                                              addr856:
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr859:
                                                                                                                                 §§push(§§pop() + "\" x=\"");
                                                                                                                                 if(!(_loc6_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr880:
                                                                                                                                       §§push(§§pop() + this.§#P§[_loc3_].x);
                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                       {
                                                                                                                                          addr889:
                                                                                                                                          §§push(§§pop() + "\" y=\"");
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             addr904:
                                                                                                                                             §§push(§§pop() + this.§#P§[_loc3_].y + "\"></Bird>");
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                addr907:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr910);
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr958);
                                                                                                                                             }
                                                                                                                                             §§goto(addr955);
                                                                                                                                          }
                                                                                                                                          §§goto(addr947);
                                                                                                                                       }
                                                                                                                                       §§goto(addr963);
                                                                                                                                    }
                                                                                                                                    §§goto(addr945);
                                                                                                                                 }
                                                                                                                                 §§goto(addr880);
                                                                                                                              }
                                                                                                                              §§goto(addr957);
                                                                                                                           }
                                                                                                                           §§goto(addr829);
                                                                                                                        }
                                                                                                                        §§goto(addr904);
                                                                                                                     }
                                                                                                                     §§goto(addr752);
                                                                                                                  }
                                                                                                                  §§goto(addr938);
                                                                                                               }
                                                                                                               §§goto(addr769);
                                                                                                            }
                                                                                                            §§goto(addr521);
                                                                                                         }
                                                                                                         §§goto(addr966);
                                                                                                      }
                                                                                                      §§goto(addr960);
                                                                                                   }
                                                                                                   §§goto(addr925);
                                                                                                }
                                                                                                §§goto(addr773);
                                                                                             }
                                                                                             §§goto(addr576);
                                                                                          }
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                       §§push(_loc1_);
                                                                                       if(!(_loc6_ && _loc1_))
                                                                                       {
                                                                                          if(_loc7_ || _loc1_)
                                                                                          {
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push("<Item id=\"");
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() + this.§4!W§[_loc3_].id);
                                                                                                               if(_loc7_ || _loc1_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push("\" x=\"");
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc7_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + this.§4!W§[_loc3_].x);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push("\" y=\"");
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr707:
                                                                                                                                                   §§push(§§pop() + this.§4!W§[_loc3_].y);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push("\" rotation=\"");
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc7_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr740:
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr748);
                                                                                                                                                                     §§push(§§pop() + this.§4!W§[_loc3_].angle);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr798);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr748);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr946);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr752);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr889);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr748);
                                                                                                                                             }
                                                                                                                                             §§goto(addr956);
                                                                                                                                          }
                                                                                                                                          §§goto(addr859);
                                                                                                                                       }
                                                                                                                                       §§goto(addr889);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr752);
                                                                                                                              }
                                                                                                                              §§goto(addr880);
                                                                                                                           }
                                                                                                                           §§goto(addr752);
                                                                                                                        }
                                                                                                                        §§goto(addr904);
                                                                                                                     }
                                                                                                                     §§goto(addr752);
                                                                                                                  }
                                                                                                                  addr850:
                                                                                                                  §§goto(addr856);
                                                                                                                  §§push(§§pop() + this.§#P§[_loc3_].id);
                                                                                                               }
                                                                                                               §§goto(addr740);
                                                                                                            }
                                                                                                            §§goto(addr939);
                                                                                                         }
                                                                                                         §§goto(addr707);
                                                                                                      }
                                                                                                      §§goto(addr962);
                                                                                                   }
                                                                                                   §§goto(addr965);
                                                                                                }
                                                                                                §§goto(addr959);
                                                                                             }
                                                                                             §§goto(addr965);
                                                                                          }
                                                                                          §§goto(addr833);
                                                                                       }
                                                                                       §§goto(addr769);
                                                                                    }
                                                                                    §§goto(addr839);
                                                                                 }
                                                                                 §§goto(addr539);
                                                                              }
                                                                              §§goto(addr554);
                                                                           }
                                                                           §§goto(addr914);
                                                                        }
                                                                        §§goto(addr911);
                                                                     }
                                                                     §§goto(addr924);
                                                                  }
                                                                  §§goto(addr829);
                                                               }
                                                               §§goto(addr907);
                                                            }
                                                            §§goto(addr829);
                                                         }
                                                         §§goto(addr904);
                                                      }
                                                      §§goto(addr806);
                                                   }
                                                   §§goto(addr965);
                                                }
                                                §§goto(addr521);
                                             }
                                             §§push(_loc1_);
                                             if(_loc7_)
                                             {
                                                §§goto(addr850);
                                                §§push("  <Bird id=\"");
                                             }
                                             §§goto(addr521);
                                          }
                                          addr964:
                                          §§goto(addr964);
                                       }
                                       §§goto(addr536);
                                    })
                                    {
                                       §§push(_loc1_);
                                       loop20:
                                       while(!(_loc6_ && _loc2_))
                                       {
                                          §§push(" scoreSilver=\"");
                                          if(_loc7_)
                                          {
                                             §§push(this.§^]§);
                                             loop21:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop24:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                        addr159:
                                                                     }
                                                                     §§push(" scoreGold=\"");
                                                                     while(_loc7_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  continue loop24;
                                                                  addr39:
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push("<Cameras>");
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     addr52:
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              addr71:
                                                                              §§push(§§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              addr138:
                                                                              loop37:
                                                                              while(!(_loc6_ && this))
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr39);
                                                                                       }
                                                                                       while(_loc7_)
                                                                                       {
                                                                                          §§push(">");
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr113:
                                                                                                if(_loc6_ && _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push("\"");
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§goto(addr113);
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                   addr171:
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc6_ && _loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§goto(addr159);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   break loop37;
                                                                                                   §§goto(addr52);
                                                                                                }
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       continue loop20;
                                                                                       addr108:
                                                                                    }
                                                                                    §§goto(addr71);
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              while(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 while(_loc7_ || _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr108);
                                                                                       continue loop19;
                                                                                    }
                                                                                    continue loop19;
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                                  §§goto(addr111);
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr223:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push("\"");
                                             continue loop15;
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr287);
                                 }
                                 §§goto(addr286);
                              }
                           }
                           §§goto(addr278);
                        }
                        §§goto(addr277);
                     }
                     else
                     {
                        §§goto(addr284);
                     }
                  }
                  §§goto(addr276);
               }
               else
               {
                  §§goto(addr283);
               }
            }
         }
      }
      
      public function §`T§(param1:int) : §+H§
      {
         return this.§4!W§[param1];
      }
      
      public function addObject(param1:§+H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!W§.push(param1);
         }
      }
      
      public function §1!N§(param1:int) : §3V§
      {
         return this.§=![§[param1];
      }
      
      public function §&8§(param1:§3V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§=![§.push(param1);
         }
      }
      
      public function §65§(param1:int) : §38§
      {
         return this.§#P§[param1];
      }
      
      public function §&I§(param1:§38§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#P§.push(param1);
         }
      }
      
      public function §^!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5P§ = new Vector.<§;c§>();
         }
      }
      
      public function §?M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§#P§ = new Vector.<§38§>();
         }
      }
      
      public function §]t§(param1:int) : §;c§
      {
         return this.§5P§[param1];
      }
      
      public function §>!j§(param1:§;c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5P§.push(param1);
         }
      }
   }
}
