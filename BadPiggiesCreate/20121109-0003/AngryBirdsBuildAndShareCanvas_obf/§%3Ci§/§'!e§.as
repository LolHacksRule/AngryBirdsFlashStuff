package §<i§
{
   import §%!0§.§,4§;
   import §&z§.*;
   import §,!g§.§"!P§;
   import §[!P§.§"0§;
   import §[!P§.§-2§;
   import §[!P§.§8!z§;
   import §]";§.§!<§;
   import §]";§.§4!p§;
   import flash.geom.Point;
   
   public class §'!e§
   {
      
      public static const §>!=§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §'!e§))
         {
            §>!=§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §!M§:Number = 0;
      
      public var §finally§:Number = -8;
      
      private var §[z§:Vector.<§"0§> = null;
      
      private var mBirds:Vector.<§-2§> = null;
      
      private var §=!O§:Vector.<§8!z§> = null;
      
      private var §%!i§:Vector.<§+!S§> = null;
      
      public var §#x§:Number = 0;
      
      public var §-!9§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §7C§:int = 0;
      
      private var §,9§:String = null;
      
      public var mName:String = null;
      
      public function §'!e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§%!i§ = new Vector.<§+!S§>();
               while(true)
               {
                  this.§[z§ = new Vector.<§"0§>();
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     loop3:
                     while(true)
                     {
                        this.mBirds = new Vector.<§-2§>();
                        while(!_loc1_)
                        {
                           this.§=!O§ = new Vector.<§8!z§>();
                           while(_loc2_ || _loc1_)
                           {
                              this.§,9§ = §>!=§;
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function § !N§(param1:String) : §'!e§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'!e§ = new §'!e§();
         if(!_loc3_)
         {
            _loc2_.§[""§(param1);
         }
         return _loc2_;
      }
      
      public static function §8N§(param1:§4!p§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1.§@F§);
            loop0:
            while(true)
            {
               §§push(§4!p§.§^"0§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr138:
                              while(true)
                              {
                                 §§push(param1.§@F§);
                                 addr103:
                                 while(true)
                                 {
                                    §§push(§4!p§.§#!U§);
                                    addr105:
                                    while(true)
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr137:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr119:
                                    while(true)
                                    {
                                       §§push(param1.§@F§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§4!p§.§+Q§);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          continue loop7;
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr103);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(true);
                                          break loop6;
                                       }
                                       §§goto(addr138);
                                    }
                                    else
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          addr20:
                                          §§push(false);
                                          if(_loc2_)
                                          {
                                             break loop6;
                                          }
                                          §§goto(addr24);
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                                 §§goto(addr20);
                              }
                              §§goto(addr31);
                           }
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr137);
                        }
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public static function §2!9§(param1:String) : §'!e§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§'!e§ = § !N§(param1);
         if(!(_loc4_ && param1))
         {
            _loc2_.§!M§ = _loc2_.mBirds[0].x;
            if(_loc5_ || _loc3_)
            {
               _loc2_.§finally§ = _loc2_.mBirds[0].y - 8.5;
               addr43:
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() >= _loc2_.§[z§.length)
                     {
                        if(_loc4_ && param1)
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
                        _loc2_.§[z§[_loc3_].angle = 360 - _loc2_.§[z§[_loc3_].angle;
                     }
                     addr95:
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr95);
            }
            return _loc2_;
         }
         §§goto(addr43);
      }
      
      protected static function §%u§(param1:int, param2:Object) : Vector.<§8!z§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§8!z§ = null;
         var _loc3_:Vector.<§8!z§> = new Vector.<§8!z§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!_loc9_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc9_ || §'!e§)
               {
                  §§push(_loc5_.type == §8!z§.§%!^§);
                  if(!(_loc10_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(_loc9_)
                        {
                           §§pop();
                           if(_loc9_ || _loc3_)
                           {
                              addr115:
                              if(_loc5_.type == §8!z§.§%_§)
                              {
                                 addr116:
                                 _loc8_ = new §8!z§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(_loc5_.type == §8!z§.§%_§)
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(_loc9_ || _loc3_)
                                          {
                                             _loc8_.axisY = _loc5_.axisY;
                                             if(!_loc10_)
                                             {
                                                addr190:
                                                if(_loc5_.type == §8!z§.§3I§)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      addr197:
                                                      _loc8_.§%!B§ = _loc5_.destroyTimer;
                                                      if(!_loc9_)
                                                      {
                                                      }
                                                      addr216:
                                                      _loc4_++;
                                                      continue;
                                                   }
                                                }
                                                addr175:
                                             }
                                             _loc3_.push(_loc8_);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr197);
                              }
                              else
                              {
                                 _loc8_ = new §8!z§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr116);
                        }
                     }
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr197);
         }
         return _loc3_;
      }
      
      public function get §8!Y§() : int
      {
         return this.§[z§.length;
      }
      
      public function get §=Y§() : int
      {
         return this.§=!O§.length;
      }
      
      public function get §@!;§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §+!L§() : int
      {
         return this.§%!i§.length;
      }
      
      public function get theme() : String
      {
         return this.§,9§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,9§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§'i§());
         if(!(_loc2_ && _loc3_))
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
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr132:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc2_ && _loc3_)
                              {
                                 break;
                              }
                              §§push(this.§7C§);
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(!_loc3_)
                                 {
                                    continue loop8;
                                 }
                              }
                              continue loop8;
                           }
                           continue loop0;
                        }
                        addr131:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 §§push(_loc1_);
                                 continue loop0;
                              }
                              addr102:
                           }
                           else
                           {
                              loop3:
                              for(; !_loc2_; if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              },§§goto(addr31))
                              {
                                 while(true)
                                 {
                                    §§push(this.§7C§);
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(_loc1_);
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          continue;
                                       }
                                       §§goto(addr93);
                                    }
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr132);
                           }
                        }
                        §§goto(addr41);
                     }
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §=N§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§'i§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr93:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr94:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr96:
                     }
                     else
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 this.§7C§ = param1;
                              }
                              while(_loc4_ && param1);
                              
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           if(_loc3_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        addr75:
                     }
                  }
               }
            }
         }
      }
      
      public function §[""§(param1:String) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc8_:§+!S§ = null;
         var _loc9_:Object = null;
         var _loc10_:§-2§ = null;
         var _loc11_:§"0§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc13_ && this))
         {
            this.§#x§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§-!9§ = false;
               while(true)
               {
                  this.mScoreSilver = _loc2_.scoreSilver;
                  loop2:
                  for(; _loc12_; if(_loc13_ && _loc3_)
                  {
                     continue;
                  })
                  {
                     this.mScoreGold = _loc2_.scoreGold;
                     loop3:
                     while(true)
                     {
                        this.§7C§ = _loc2_.scoreEagle;
                        loop4:
                        while(true)
                        {
                           this.§,9§ = _loc2_.theme;
                           addr153:
                           while(true)
                           {
                              this.mName = _loc2_.id;
                              addr147:
                              while(true)
                              {
                                 if(_loc2_.counts.joints)
                                 {
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       this.§=!O§ = §%u§(_loc2_.counts.joints,_loc2_.world);
                                    }
                                    continue loop4;
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    this.§%!i§ = new Vector.<§+!S§>();
                                    continue loop3;
                                 }
                              }
                              addr56:
                              if(_loc12_ || _loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
                  if(_loc13_ && this)
                  {
                     continue;
                  }
                  §§goto(addr91);
               }
            }
         }
         while(false)
         {
            §§goto(addr72);
         }
         var _loc3_:* = Number(0);
         loop13:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc13_)
            {
               if(§§pop() < _loc2_.camera.length)
               {
                  (_loc8_ = new §+!S§()).x = _loc2_.camera[_loc3_].x;
                  if(!_loc13_)
                  {
                     _loc8_.y = _loc2_.camera[_loc3_].y;
                     loop14:
                     while(true)
                     {
                        _loc8_.left = _loc2_.camera[_loc3_].left;
                        loop15:
                        while(true)
                        {
                           _loc8_.right = _loc2_.camera[_loc3_].right;
                           while(true)
                           {
                              _loc8_.top = _loc2_.camera[_loc3_].top;
                              addr285:
                              while(true)
                              {
                                 _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
                                 addr276:
                                 while(true)
                                 {
                                    _loc8_.id = _loc2_.camera[_loc3_].id;
                                    continue loop15;
                                 }
                              }
                              addr228:
                              if(_loc13_ && this)
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 continue loop13;
                              }
                              while(true)
                              {
                                 this.§%!i§.push(_loc8_);
                                 addr242:
                                 while(!_loc13_)
                                 {
                                    continue loop14;
                                 }
                                 continue loop15;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc12_ || this)
                     {
                        §§push(§§pop() + 1);
                        if(_loc12_)
                        {
                           addr215:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(_loc12_ || _loc3_)
                        {
                           if(_loc12_)
                           {
                              if(!_loc13_)
                              {
                                 §§goto(addr228);
                              }
                              §§goto(addr285);
                           }
                           §§goto(addr276);
                        }
                        §§goto(addr242);
                     }
                     §§goto(addr215);
                  }
                  continue;
               }
               if(!_loc13_)
               {
                  §§push(Number(1));
                  if(_loc12_)
                  {
                     break;
                  }
                  addr409:
                  if(§§pop() <= _loc2_.counts.birds)
                  {
                     _loc9_ = _loc2_.world["bird_" + _loc3_];
                     (_loc10_ = new §-2§()).x = _loc9_.x;
                     if(!_loc13_)
                     {
                        _loc10_.y = _loc9_.y;
                        while(true)
                        {
                           _loc10_.id = _loc9_.id;
                           loop25:
                           while(!(_loc13_ && this))
                           {
                              loop26:
                              while(true)
                              {
                                 this.mBirds.push(_loc10_);
                                 while(true)
                                 {
                                    if(_loc13_)
                                    {
                                       continue loop25;
                                    }
                                    §§push(_loc3_);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc12_)
                                       {
                                          addr361:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       if(!(_loc13_ && param1))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr361);
                                 }
                                 addr370:
                                 addr408:
                                 addr413:
                                 while(false)
                                 {
                                    continue loop26;
                                 }
                                 addr413:
                                 while(true)
                                 {
                                    §§goto(addr409);
                                 }
                                 var _loc4_:Vector.<int> = new Vector.<int>();
                                 var _loc7_:int = 1;
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(!_loc13_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc12_)
                                          {
                                             loop29:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc13_)
                                                {
                                                   if(§§pop() > _loc2_.counts.blocks)
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         addr549:
                                                         §§push(Number(1));
                                                         if(_loc12_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!_loc12_)
                                                            {
                                                            }
                                                            §§goto(addr796);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         break loop29;
                                                      }
                                                      addr768:
                                                   }
                                                   else
                                                   {
                                                      §§push("block_");
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc13_ && this))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc13_ && this))
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean((_loc5_ = _loc2_.world[_loc6_]).uniqueID));
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    addr502:
                                                                                    if(_loc5_.uniqueID.length > 0)
                                                                                    {
                                                                                       if(!(_loc12_ || this))
                                                                                       {
                                                                                          continue loop29;
                                                                                       }
                                                                                       _loc4_.push(_loc5_.uniqueID);
                                                                                       if(!(_loc12_ || this))
                                                                                       {
                                                                                          continue loop29;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc12_ || _loc3_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                                 continue loop29;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr502);
                                                                     }
                                                                     addr479:
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§!M§ = _loc2_.slingshotX;
                                                                     addr780:
                                                                     if(_loc13_)
                                                                     {
                                                                     }
                                                                     §§goto(addr796);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = _loc2_.world[_loc6_];
                                                                           (_loc11_ = new §"0§()).x = _loc5_.x;
                                                                           if(!(_loc13_ && _loc3_))
                                                                           {
                                                                              _loc11_.y = _loc5_.y;
                                                                           }
                                                                           loop36:
                                                                           while(true)
                                                                           {
                                                                              _loc11_.id = _loc5_.id;
                                                                              loop37:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(_loc5_.uniqueID));
                                                                                 addr746:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop36;
                                                                                       }
                                                                                       addr748:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_.indexOf(_loc7_) >= 0)
                                                                                                {
                                                                                                   _loc7_++;
                                                                                                   loop43:
                                                                                                   while(_loc13_ && _loc2_)
                                                                                                   {
                                                                                                      loop44:
                                                                                                      while(_loc12_ || _loc3_)
                                                                                                      {
                                                                                                         loop45:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_.front)
                                                                                                            {
                                                                                                               loop46:
                                                                                                               while(_loc12_ || this)
                                                                                                               {
                                                                                                                  if(_loc12_ || param1)
                                                                                                                  {
                                                                                                                     _loc11_.front = _loc5_.front;
                                                                                                                     loop47:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr636:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc11_.angle = _loc5_.angle;
                                                                                                                           loop49:
                                                                                                                           for(; !_loc13_; while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc12_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                              if(_loc13_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop46;
                                                                                                                              }
                                                                                                                              if(!(_loc12_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop44;
                                                                                                                              }
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(_loc12_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr598:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 if(_loc12_ || this)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr598);
                                                                                                                           },§§goto(addr607))
                                                                                                                           {
                                                                                                                              if(!(_loc13_ && this))
                                                                                                                              {
                                                                                                                                 do
                                                                                                                                 {
                                                                                                                                    this.§[z§.push(_loc11_);
                                                                                                                                    continue loop49;
                                                                                                                                 }
                                                                                                                                 while(false);
                                                                                                                                 
                                                                                                                                 §§goto(addr768);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc11_.uniqueID = _loc7_.toString();
                                                                                                                     }
                                                                                                                     addr694:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_.push(_loc7_);
                                                                                                                     break loop46;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     continue loop45;
                                                                                                                  }
                                                                                                                  continue loop43;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr636);
                                                                                                         }
                                                                                                         continue loop37;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc11_.uniqueID = _loc5_.uniqueID;
                                                                                                            continue loop44;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr694);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr730);
                                                                                       }
                                                                                       addr728:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr564:
                                                                     }
                                                                     §§goto(addr796);
                                                                  }
                                                                  addr561:
                                                               }
                                                               §§goto(addr796);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr561);
                                                            }
                                                            addr560:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr560);
                                                         }
                                                         addr559:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr559);
                                                      }
                                                      addr558:
                                                   }
                                                   §§goto(addr796);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() > _loc2_.counts.blocks)
                                                {
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      §§goto(addr780);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr558);
                                                   §§push("block_");
                                                }
                                                addr796:
                                                this.§finally§ = _loc2_.slingshotY;
                                                return;
                                             }
                                             addr769:
                                          }
                                          §§goto(addr564);
                                       }
                                       §§goto(addr769);
                                    }
                                    §§goto(addr549);
                                 }
                                 §§goto(addr479);
                              }
                           }
                        }
                     }
                     §§goto(addr370);
                  }
               }
               §§goto(addr413);
            }
            break;
         }
         _loc3_ = §§pop();
         if(_loc12_ || param1)
         {
            §§goto(addr408);
         }
         §§goto(addr413);
      }
      
      public function §6" §() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_ || this)
         {
            _loc1_.LevelExtension = this.§#x§;
            while(true)
            {
               _loc1_.scoreSilver = this.mScoreSilver;
               loop1:
               while(_loc4_)
               {
                  _loc1_.scoreGold = this.mScoreGold;
                  while(true)
                  {
                     _loc1_.scoreEagle = this.§7C§;
                     while(!_loc3_)
                     {
                        _loc1_.theme = this.§,9§;
                        loop4:
                        for(; !(_loc3_ && _loc3_); loop6:
                        while(_loc4_ || this)
                        {
                           while(true)
                           {
                              _loc1_.camera = this.§%!i§;
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop6;
                              }
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr43);
                           }
                           var _loc2_:* = Number(0);
                           if(_loc4_)
                           {
                              _loc1_.world = new Object();
                              do
                              {
                                 _loc2_ = Number(0);
                              }
                              while(!_loc4_);
                              
                           }
                           loop9:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop10:
                              while(true)
                              {
                                 if(§§pop() >= this.mBirds.length)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr373:
                                          addr317:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                          §§push(0);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(§§pop() >= this.§=!O§.length)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        _loc1_.counts = new Object();
                                                                        addr236:
                                                                        loop21:
                                                                        while(_loc4_ || _loc2_)
                                                                        {
                                                                           _loc1_.counts.blocks = this.§[z§.length;
                                                                           loop22:
                                                                           while(!_loc3_)
                                                                           {
                                                                              _loc1_.counts.birds = this.mBirds.length;
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || _loc1_))
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 if(!(_loc4_ || _loc1_))
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    if(!(_loc4_ || _loc1_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc1_.counts.joints = this.§=!O§.length;
                                                                                    continue loop20;
                                                                                 }
                                                                                 addr294:
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!(_loc4_ || this))
                                                                                    {
                                                                                       addr377:
                                                                                       §§push(§§pop() + 1);
                                                                                       break loop19;
                                                                                    }
                                                                                    §§push(§§pop() + 1);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             addr275:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                continue loop19;
                                                                                             }
                                                                                             addr338:
                                                                                             addr379:
                                                                                             addr336:
                                                                                             addr337:
                                                                                             §§push(Number(§§pop() + 1));
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                break;
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       while(!(_loc3_ && this))
                                                                                       {
                                                                                          if(§§pop() >= this.§[z§.length)
                                                                                          {
                                                                                             break loop21;
                                                                                          }
                                                                                          addr362:
                                                                                          _loc1_.world["block_" + (_loc2_ + 1)] = this.§[z§[_loc2_];
                                                                                          §§goto(addr336);
                                                                                          §§push(_loc2_);
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr275);
                                                                                 addr131:
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    _loc1_.slingshotY = this.§finally§;
                                                                                    addr138:
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§goto(addr131);
                                                                                          §§goto(addr138);
                                                                                       }
                                                                                       continue;
                                                                                       addr129:
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       return _loc1_;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                              addr346:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr297);
                                                                                 §§goto(addr346);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr295);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc1_.world["joint_" + (_loc2_ + 1)] = this.§=!O§[_loc2_];
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr379);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc2_);
                                                         addr396:
                                                      }
                                                      §§goto(addr377);
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc1_.slingshotX = this.§!M§;
                                                      §§goto(addr129);
                                                   }
                                                }
                                                §§goto(addr338);
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    §§goto(addr374);
                                 }
                                 else
                                 {
                                    _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
                                 }
                                 §§goto(addr396);
                              }
                           }
                        })
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              _loc1_.name = this.mName;
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §]Z§() : String
      {
         return JSON.stringify(this.§6" §());
      }
      
      public function §'i§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§"0§ = null;
         var _loc3_:* = null;
         var _loc4_:§4!p§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§[z§)
         {
            if(_loc7_)
            {
               §§push(_loc2_.id);
               if(_loc7_ || _loc2_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §!<§.§[!@§(_loc3_)) == null);
            if(_loc7_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc7_ || this)
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(!(_loc8_ && _loc3_))
                           {
                              addr109:
                              if(§§pop())
                              {
                                 if(!(_loc7_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 addr123:
                                 _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
                                 if(!_loc8_)
                                 {
                                    _loc4_ = §!<§.§[!@§(_loc3_);
                                    addr131:
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(_loc1_);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc4_.score);
                                    if(!_loc8_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc7_)
                                          {
                                             addr162:
                                             if(§8N§(_loc4_))
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc8_ && _loc1_)
                                                   {
                                                   }
                                                   addr193:
                                                   _loc1_ = §§pop();
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       §§push(_loc4_.§%5§);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() * §,4§.§]O§.getValue());
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr162);
               }
            }
            §§goto(addr109);
         }
         return _loc1_;
      }
      
      public function §02§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§+!S§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!_loc6_)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  while(true)
                  {
                     §§push(_loc1_);
                     while(true)
                     {
                        §§push(" LevelExtension=\"" + this.§#x§);
                        if(!_loc6_)
                        {
                           §§push("\"");
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                           addr240:
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           while(!_loc6_)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr246:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    continue loop7;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc7_ || this)
               {
                  _loc1_ = §§pop();
                  §§goto(addr230);
               }
            }
         }
         §§goto(addr202);
      }
      
      public function getObject(param1:int) : §"0§
      {
         return this.§[z§[param1];
      }
      
      public function addObject(param1:§"0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[z§.push(param1);
         }
      }
      
      public function §`'§(param1:int) : §8!z§
      {
         return this.§=!O§[param1];
      }
      
      public function §@!V§(param1:§8!z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=!O§.push(param1);
         }
      }
      
      public function §+,§(param1:int) : §-2§
      {
         return this.mBirds[param1];
      }
      
      public function §=o§(param1:§-2§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.mBirds.push(param1);
         }
      }
      
      public function §["?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§%!i§ = new Vector.<§+!S§>();
         }
      }
      
      public function §^!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.mBirds = new Vector.<§-2§>();
         }
      }
      
      public function §6!§(param1:int) : §+!S§
      {
         return this.§%!i§[param1];
      }
      
      public function § d§(param1:§+!S§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§%!i§.push(param1);
         }
      }
   }
}
