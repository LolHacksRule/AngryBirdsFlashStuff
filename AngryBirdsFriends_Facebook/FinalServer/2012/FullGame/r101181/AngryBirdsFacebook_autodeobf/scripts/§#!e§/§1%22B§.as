package §#!e§
{
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §3"7§.*;
   import §8g§.§"!e§;
   import §8g§.§3"6§;
   import §8g§.§?!V§;
   import §9"!§.§9"3§;
   import §[!"§.§&0§;
   import flash.geom.Point;
   
   public class §1"B§
   {
      
      public static const §5!5§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §1"B§)
         {
            §5!5§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §'!e§:Number = 0;
      
      public var §!f§:Number = -8;
      
      private var §&!Z§:Vector.<§3"6§> = null;
      
      private var § L§:Vector.<§"!e§> = null;
      
      private var §6'§:Vector.<§?!V§> = null;
      
      private var §#"F§:Vector.<§2!L§> = null;
      
      public var §>"@§:Number = 0;
      
      public var §6!v§:Boolean = false;
      
      public var §4Z§:int = 0;
      
      public var §-z§:int = 0;
      
      private var §[!;§:int = 0;
      
      private var §8!i§:String = null;
      
      public var mName:String = null;
      
      public function §1"B§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               this.§#"F§ = new Vector.<§2!L§>();
               addr114:
               while(true)
               {
                  this.§&!Z§ = new Vector.<§3"6§>();
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
      
      public static function §3q§(param1:String) : §1"B§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1"B§ = new §1"B§();
         if(_loc3_ || _loc2_)
         {
            _loc2_.§0S§(param1);
         }
         return _loc2_;
      }
      
      public static function §<! §(param1:§4u§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1.§7[§);
            loop0:
            while(true)
            {
               §§push(§4u§.§0!q§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1.§7[§);
                                       if(_loc3_ && param1)
                                       {
                                          break;
                                       }
                                       §§push(§4u§.§<!q§);
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_)
                                          {
                                             if(!(_loc2_ || param1))
                                             {
                                                continue loop6;
                                             }
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                while(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop7;
                                                   }
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr147:
                                                   addr147:
                                                   while(true)
                                                   {
                                                      §§push(param1.§7[§);
                                                      break loop7;
                                                   }
                                                }
                                                §§push(false);
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr147);
                                                }
                                                addr146:
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr96);
                                       }
                                       else
                                       {
                                          addr127:
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop6;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr84);
                           }
                           continue;
                        }
                        §§goto(addr146);
                     }
                     addr96:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public static function §2!5§(param1:String) : §1"B§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§1"B§ = §3q§(param1);
         if(!_loc5_)
         {
            _loc2_.§'!e§ = _loc2_.§ L§[0].x;
            if(_loc4_ || §1"B§)
            {
               _loc2_.§!f§ = _loc2_.§ L§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() >= _loc2_.§&!Z§.length)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc5_ && _loc3_)
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               _loc2_.§&!Z§[_loc3_].angle = 360 - _loc2_.§&!Z§[_loc3_].angle;
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_ || §1"B§)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || _loc2_)
                     {
                     }
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr102);
         }
         return _loc2_;
      }
      
      protected static function §=!§(param1:int, param2:Object) : Vector.<§?!V§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§?!V§ = null;
         var _loc3_:Vector.<§?!V§> = new Vector.<§?!V§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc10_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!_loc10_)
               {
                  §§push(_loc5_.type == §?!V§.§#!g§);
                  if(_loc9_ || §1"B§)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && §1"B§))
                        {
                           addr92:
                           §§pop();
                           addr111:
                           if(_loc9_)
                           {
                              §§push(_loc5_.type == §?!V§.§+&§);
                           }
                           _loc8_ = new §?!V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                           if(_loc9_)
                           {
                              if(_loc5_.type == §?!V§.§+&§)
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    _loc8_.axisX = _loc5_.axisX;
                                    if(_loc10_)
                                    {
                                    }
                                    addr208:
                                    _loc3_.push(_loc8_);
                                    _loc4_++;
                                    continue;
                                 }
                                 _loc8_.axisY = _loc5_.axisY;
                                 if(!_loc9_)
                                 {
                                 }
                                 §§goto(addr208);
                              }
                              addr190:
                              if(_loc5_.type == §?!V§.§3!x§)
                              {
                                 if(!(_loc10_ && param2))
                                 {
                                    _loc8_.§]A§ = _loc5_.destroyTimer;
                                    if(_loc10_)
                                    {
                                    }
                                    §§goto(addr208);
                                 }
                              }
                           }
                           §§goto(addr208);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr111);
                     }
                     else
                     {
                        _loc8_ = new §?!V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                     }
                     §§goto(addr190);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr208);
         }
         return _loc3_;
      }
      
      public function get §-!e§() : int
      {
         return this.§&!Z§.length;
      }
      
      public function get §2D§() : int
      {
         return this.§6'§.length;
      }
      
      public function get §#"=§() : int
      {
         return this.§ L§.length;
      }
      
      public function get §6X§() : int
      {
         return this.§#"F§.length;
      }
      
      public function get theme() : String
      {
         return this.§8!i§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!i§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§@!F§());
         if(!(_loc2_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
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
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr137:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr110:
                              while(true)
                              {
                                 §§push(this.§[!;§);
                                 addr112:
                                 do
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc3_);
                                 
                                 continue loop2;
                              }
                           }
                        }
                     }
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr129);
                              }
                              §§goto(addr137);
                           }
                           else
                           {
                              loop10:
                              while(true)
                              {
                                 addr63:
                                 while(true)
                                 {
                                    §§push(this.§[!;§);
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(0);
                                          if(_loc3_)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                continue loop1;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§push(_loc1_);
                                                }
                                                else
                                                {
                                                   addr31:
                                                   §§push(this.§[!;§);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr129:
                                                      }
                                                      continue;
                                                      return _loc1_;
                                                   }
                                                }
                                                if(!_loc2_)
                                                {
                                                   break loop7;
                                                }
                                                §§goto(addr110);
                                             }
                                             §§goto(addr31);
                                          }
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue loop10;
                                 }
                              }
                              addr130:
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr63);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      public function § E§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§@!F§());
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr87:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(!(_loc3_ && _loc2_))
                              {
                              }
                              continue loop0;
                              addr77:
                           }
                           while(true)
                           {
                              this.§[!;§ = param1;
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr77);
                           }
                           return;
                        }
                        return;
                        addr72:
                     }
                  }
                  addr92:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr86:
         }
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               else
               {
                  §§goto(addr87);
               }
               §§goto(addr72);
            }
            else
            {
               §§goto(addr86);
            }
         }
      }
      
      public function §0S§(param1:String) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§2!L§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"!e§ = null;
         var _loc11_:§3"6§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc13_)
         {
            this.§>"@§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§6!v§ = false;
               loop1:
               while(true)
               {
                  this.§4Z§ = _loc2_.scoreSilver;
                  addr157:
                  while(!_loc12_)
                  {
                     this.§-z§ = _loc2_.scoreGold;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §]!F§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.LevelExtension = this.§>"@§;
         }
         while(true)
         {
            _loc1_.scoreSilver = this.§4Z§;
            loop1:
            for(; _loc4_; if(_loc3_ && _loc2_)
            {
               continue;
            },_loc1_.camera = this.§#"F§,if(_loc4_)
            {
               if(false)
               {
                  §§goto(addr38);
               }
               §§goto(addr98);
            },§§goto(addr43))
            {
               _loc1_.scoreGold = this.§-z§;
               while(true)
               {
                  _loc1_.scoreEagle = this.§[!;§;
                  while(true)
                  {
                     _loc1_.theme = this.§8!i§;
                     loop4:
                     while(true)
                     {
                        addr38:
                        addr98:
                        while(true)
                        {
                           _loc1_.name = this.mName;
                           continue loop4;
                        }
                        var _loc2_:* = Number(0);
                        if(!_loc3_)
                        {
                           _loc1_.world = new Object();
                        }
                        addr418:
                        _loc2_ = Number(0);
                        if(_loc3_ && _loc1_)
                        {
                           §§goto(addr418);
                        }
                        addr353:
                        if(_loc2_ >= this.§ L§.length)
                        {
                           addr361:
                           _loc2_ = Number(0);
                           addr362:
                           addr360:
                           addr359:
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 if(§§pop() >= this.§&!Z§.length)
                                 {
                                    addr314:
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(0);
                                          if(_loc4_)
                                          {
                                             addr322:
                                             _loc2_ = Number(§§pop());
                                             addr323:
                                             §§push(_loc2_);
                                             if(_loc4_ || _loc1_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop() >= this.§6'§.length)
                                                         {
                                                            addr231:
                                                            if(!_loc3_)
                                                            {
                                                               _loc1_.counts = new Object();
                                                               _loc1_.counts.blocks = this.§&!Z§.length;
                                                               addr192:
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     _loc1_.counts.birds = this.§ L§.length;
                                                                     _loc1_.counts.joints = this.§6'§.length;
                                                                     addr160:
                                                                     addr184:
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              _loc1_.slingshotX = this.§'!e§;
                                                                              addr145:
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 _loc1_.slingshotY = this.§!f§;
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_ && _loc2_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   addr374:
                                                                                                   _loc2_ = Number(§§pop() + 1);
                                                                                                   §§goto(addr353);
                                                                                                   addr373:
                                                                                                }
                                                                                                §§goto(addr373);
                                                                                                addr401:
                                                                                             }
                                                                                             return _loc1_;
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       §§goto(addr192);
                                                                                    }
                                                                                    §§goto(addr160);
                                                                                 }
                                                                                 §§goto(addr145);
                                                                              }
                                                                              §§goto(addr184);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        addr280:
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§goto(addr323);
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    addr265:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    addr328:
                                                                                    _loc2_ = Number(§§pop());
                                                                                    addr329:
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    addr327:
                                                                                    §§goto(addr327);
                                                                                    §§push(_loc2_ + 1);
                                                                                    addr352:
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr265);
                                                                           }
                                                                           §§goto(addr374);
                                                                        }
                                                                        §§goto(addr265);
                                                                        addr303:
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                               addr237:
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         _loc1_.world["joint_" + (_loc2_ + 1)] = this.§6'§[_loc2_];
                                                         §§goto(addr303);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr374);
                                    }
                                    §§goto(addr359);
                                 }
                                 _loc1_.world["block_" + (_loc2_ + 1)] = this.§&!Z§[_loc2_];
                                 §§goto(addr352);
                              }
                              §§goto(addr328);
                           }
                           §§goto(addr322);
                        }
                        _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ L§[_loc2_];
                        §§goto(addr401);
                     }
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §1§() : String
      {
         return JSON.stringify(this.§]!F§());
      }
      
      public function §@!F§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§3"6§ = null;
         var _loc3_:* = null;
         var _loc4_:§4u§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§&!Z§)
         {
            if(!_loc8_)
            {
               §§push(_loc2_.id);
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §6G§.§1!P§(_loc3_)) == null);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(!(_loc8_ && _loc2_))
                           {
                              addr94:
                              if(§§pop())
                              {
                                 if(_loc7_ || _loc1_)
                                 {
                                    addr115:
                                    §§push("MISC_FOOD_");
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc7_)
                                    {
                                       _loc4_ = §6G§.§1!P§(_loc3_);
                                       addr123:
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_ || _loc1_)
                                       {
                                          addr132:
                                          §§push(_loc1_);
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(§§pop() + _loc4_.score);
                                             if(!_loc8_)
                                             {
                                                §§push(int(§§pop()));
                                                if(!_loc8_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   addr166:
                                                   if(!§<! §(_loc4_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   addr172:
                                                   §§push(_loc1_);
                                                   if(_loc7_)
                                                   {
                                                      addr184:
                                                      §§push(_loc4_.§@!h§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() * §9"3§.§0!Q§.getValue());
                                                      }
                                                      §§push(int(§§pop() + §§pop()));
                                                   }
                                                }
                                                _loc1_ = §§pop();
                                                continue;
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr172);
                  }
               }
            }
            §§goto(addr94);
         }
         return _loc1_;
      }
      
      public function §;,§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§2!L§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(_loc7_ || _loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop2:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc1_);
                        loop4:
                        while(true)
                        {
                           §§push(" LevelExtension=\"");
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() + this.§>"@§);
                              loop6:
                              while(true)
                              {
                                 §§push("\"");
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(" AutoCamera=\"");
                                                   loop13:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(§§pop() + this.§6!v§);
                                                      loop14:
                                                      while(_loc7_)
                                                      {
                                                         §§push("\"");
                                                         loop15:
                                                         for(; _loc7_ || this; while(!(_loc6_ && this))
                                                         {
                                                            §§goto(addr201);
                                                            §§push(§§pop() + §§pop());
                                                         })
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr241:
                                                               addr201:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  continue loop4;
                                                               }
                                                               loop25:
                                                               while(!(_loc6_ && this))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop26:
                                                                  for(; _loc7_; while(true)
                                                                  {
                                                                     if(!(_loc7_ || _loc1_))
                                                                     {
                                                                        continue loop26;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr173);
                                                                     §§push(§§pop());
                                                                     §§goto(addr56);
                                                                  },§§goto(addr241))
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        loop28:
                                                                        while(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc6_ && this)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    _loc1_ = §§pop();
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          loop34:
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(">");
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop36:
                                                                                                            while(_loc7_ || this)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc7_ || _loc1_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc1_);
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push("<Cameras>");
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc7_ || this))
                                                                                                                                    {
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    if(!(_loc7_ || this))
                                                                                                                                    {
                                                                                                                                       break loop35;
                                                                                                                                    }
                                                                                                                                    §§goto(addr63);
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           continue loop34;
                                                                                                                        }
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  continue loop32;
                                                                                                                  addr63:
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     break loop33;
                                                                                                                  }
                                                                                                                  while(false)
                                                                                                                  {
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                                  for each(_loc2_ in this.§#"F§)
                                                                                                                  {
                                                                                                                     if(_loc6_ && _loc1_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(" <Camera id=\"");
                                                                                                                        if(_loc7_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc2_.id);
                                                                                                                           if(!(_loc6_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push("\" leftBorder=\"");
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc6_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_.left);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          addr332:
                                                                                                                                          §§push("\" rightBorder=\"");
                                                                                                                                          if(_loc7_ || this)
                                                                                                                                          {
                                                                                                                                             addr340:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_.right);
                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr360:
                                                                                                                                                      §§push("\" topBorder=\"");
                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_.top);
                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr380:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr383:
                                                                                                                                                                  §§push("\" bottomBorder=\"");
                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr391:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr399:
                                                                                                                                                                        §§push(_loc2_.top);
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           addr406:
                                                                                                                                                                           addr403:
                                                                                                                                                                           §§push(§§pop() + (§§pop() + §&0§.§'v§));
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           _loc1_ = §§pop() + §§pop();
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr406);
                                                                                                                                                                     }
                                                                                                                                                                     §§push("\"></Camera>");
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr406);
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr399);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr406);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr383);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr391);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr399);
                                                                                                                                                }
                                                                                                                                                §§goto(addr403);
                                                                                                                                             }
                                                                                                                                             §§goto(addr406);
                                                                                                                                          }
                                                                                                                                          §§goto(addr391);
                                                                                                                                       }
                                                                                                                                       §§goto(addr360);
                                                                                                                                    }
                                                                                                                                    §§goto(addr380);
                                                                                                                                 }
                                                                                                                                 §§goto(addr360);
                                                                                                                              }
                                                                                                                              §§goto(addr340);
                                                                                                                           }
                                                                                                                           §§goto(addr332);
                                                                                                                        }
                                                                                                                        §§goto(addr399);
                                                                                                                     }
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push("</Cameras>");
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop42:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc1_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(_loc7_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push("<Slingshot x=\"");
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + this.§ L§[0].x);
                                                                                                                                       addr861:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push("\" y=\"");
                                                                                                                                          addr862:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr863:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + (this.§ L§[0].y - 8));
                                                                                                                                                addr871:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push("\">");
                                                                                                                                                   addr872:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr873:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr874:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr855:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    loop53:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       loop54:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(" <Birds>");
                                                                                                                                          while(_loc7_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                while(!(_loc6_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   loop58:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      addr814:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr699:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            continue loop58;
                                                                                                                                                            addr750:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop53;
                                                                                                                                                while(!(_loc6_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                   _loc1_ = §§pop();
                                                                                                                                                   §§goto(addr734);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr861);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ && _loc1_)
                                                                                                                                             {
                                                                                                                                                continue loop54;
                                                                                                                                             }
                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                             §§goto(addr661);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr455);
                                                                                                               }
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   §§goto(addr158);
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop27;
                                                                                       }
                                                                                       addr250:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              continue loop12;
                                                                              addr173:
                                                                           }
                                                                           if(_loc6_ && _loc1_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(" scoreGold=\"");
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(this.§-z§);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    addr145:
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push("\"");
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          addr158:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                continue loop26;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop14;
                                                                                          addr158:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§4Z§);
                                                                                             addr191:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                          addr189:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push("\"");
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr158);
                                                                              }
                                                                              §§goto(addr191);
                                                                           }
                                                                           §§goto(addr145);
                                                                           §§goto(addr189);
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
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
            }
         }
         §§goto(addr73);
      }
      
      public function §!!A§(param1:int) : §3"6§
      {
         return this.§&!Z§[param1];
      }
      
      public function addObject(param1:§3"6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!Z§.push(param1);
         }
      }
      
      public function §#f§(param1:int) : §?!V§
      {
         return this.§6'§[param1];
      }
      
      public function §#v§(param1:§?!V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§6'§.push(param1);
         }
      }
      
      public function § !V§(param1:int) : §"!e§
      {
         return this.§ L§[param1];
      }
      
      public function §#I§(param1:§"!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ L§.push(param1);
         }
      }
      
      public function §]!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#"F§ = new Vector.<§2!L§>();
         }
      }
      
      public function §]!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ L§ = new Vector.<§"!e§>();
         }
      }
      
      public function §[W§(param1:int) : §2!L§
      {
         return this.§#"F§[param1];
      }
      
      public function §%!Y§(param1:§2!L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§#"F§.push(param1);
         }
      }
   }
}
