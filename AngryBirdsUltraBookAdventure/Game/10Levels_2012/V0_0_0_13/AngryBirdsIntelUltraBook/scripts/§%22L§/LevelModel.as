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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         if(_loc1_)
         {
            super();
         }
         while(true)
         {
            this.§5P§ = new Vector.<§;c§>();
            loop1:
            while(true)
            {
               this.§4!W§ = new Vector.<§+H§>();
               do
               {
                  this.§#P§ = new Vector.<§38§>();
                  continue loop1;
               }
               while(!_loc1_);
               
               return;
            }
         }
      }
      
      public static function §?!=§(param1:String) : LevelModel
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelModel = new LevelModel();
         if(!(_loc3_ && LevelModel))
         {
            _loc2_.§2U§(param1);
         }
         return _loc2_;
      }
      
      public static function §`O§(param1:§5s§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1.§17§);
            loop0:
            while(true)
            {
               §§push(§5s§.§4!T§);
               addr162:
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
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr175:
                                 while(true)
                                 {
                                    §§push(param1.§17§);
                                    while(true)
                                    {
                                       §§push(§5s§.§"!W§);
                                       addr116:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          addr117:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          continue loop5;
                                       }
                                       addr156:
                                       §§push(param1.§17§);
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 addr147:
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && LevelModel))
                                          {
                                             §§push(true);
                                             continue loop11;
                                          }
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§goto(addr24);
                                             }
                                             addr109:
                                          }
                                          while(!(_loc3_ && LevelModel))
                                          {
                                             §§goto(addr156);
                                          }
                                          §§goto(addr175);
                                       }
                                       addr24:
                                       §§goto(addr44);
                                    }
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       addr44:
                                       loop17:
                                       while(true)
                                       {
                                          §§push(false);
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop15;
                                             }
                                             else
                                             {
                                                addr67:
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                addr70:
                                                if(!(_loc3_ && param1))
                                                {
                                                   continue loop15;
                                                }
                                                addr148:
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr70);
                                                }
                                                continue loop17;
                                             }
                                          }
                                          continue loop11;
                                       }
                                    }
                                    continue loop3;
                                    return §§pop();
                                 }
                                 §§goto(addr148);
                              }
                              if(_loc2_ || LevelModel)
                              {
                                 break;
                              }
                              §§goto(addr117);
                           }
                           return §§pop();
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public static function §=g§(param1:String) : LevelModel
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:LevelModel = §?!=§(param1);
         if(!_loc4_)
         {
            _loc2_.§7a§ = _loc2_.§#P§[0].x;
            if(_loc5_ || LevelModel)
            {
               _loc2_.§<7§ = _loc2_.§#P§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && _loc3_))
            {
               if(!_loc4_)
               {
                  if(§§pop() >= _loc2_.§4!W§.length)
                  {
                     if(!(_loc5_ || LevelModel))
                     {
                        continue;
                     }
                     if(_loc5_ || _loc2_)
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
                  }
               }
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
         }
         return _loc2_;
      }
      
      protected static function §8![§(param1:int, param2:Object) : Vector.<§3V§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3V§ = null;
         var _loc3_:Vector.<§3V§> = new Vector.<§3V§>();
         §§push(1);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(_loc4_ <= param1)
         {
            _loc5_ = param2["joint_" + _loc4_];
            if(!(_loc9_ || param1))
            {
               continue;
            }
            if(_loc5_ != null)
            {
               if(_loc10_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!(_loc10_ && param2))
               {
                  §§push(_loc5_.type == §3V§.§!U§);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc10_ && LevelModel))
                     {
                        addr109:
                        §§push(§§pop());
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc9_ || _loc3_)
                           {
                              addr136:
                              §§pop();
                              if(!(_loc10_ && param1))
                              {
                                 addr144:
                                 §§push(_loc5_.type == §3V§.§]C§);
                                 if(!_loc10_)
                                 {
                                    addr153:
                                    if(§§pop())
                                    {
                                       addr154:
                                       _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                       if(_loc9_ || param2)
                                       {
                                          if(_loc5_.type == §3V§.§]C§)
                                          {
                                             if(!_loc10_)
                                             {
                                                _loc8_.axisX = _loc5_.axisX;
                                                if(!_loc10_)
                                                {
                                                   _loc8_.axisY = _loc5_.axisY;
                                                   if(_loc9_)
                                                   {
                                                      addr224:
                                                      if(_loc5_.type == §3V§.§@+§)
                                                      {
                                                         if(_loc10_ && param1)
                                                         {
                                                         }
                                                         addr258:
                                                         _loc3_.push(_loc8_);
                                                         §§push(_loc4_);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                         }
                                                         _loc4_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr258);
                                                      addr209:
                                                   }
                                                }
                                                §§goto(addr258);
                                             }
                                             _loc8_.§]!f§ = _loc5_.destroyTimer;
                                             if(_loc10_ && param1)
                                             {
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr258);
                                    }
                                    else
                                    {
                                       _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr154);
                           }
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr109);
               }
               §§goto(addr144);
            }
            §§goto(addr258);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§''§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§<o§());
         if(_loc2_)
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
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr140:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 addr96:
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§@2§);
                                    addr98:
                                    while(true)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          break loop4;
                                       }
                                       §§push(§§pop() < §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           addr139:
                        }
                        loop2:
                        while(!§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§@2§);
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(0);
                                 if(!(_loc3_ && this))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(_loc1_);
                                             break;
                                          }
                                          continue;
                                       }
                                       if(_loc3_ && _loc3_)
                                       {
                                          break loop2;
                                       }
                                       if(_loc3_)
                                       {
                                          §§goto(addr140);
                                       }
                                    }
                                    §§push(this.§@2§);
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr124);
                                    }
                                    break;
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr96);
                           }
                           continue loop0;
                           §§goto(addr115);
                        }
                        addr123:
                        addr124:
                        return §§pop();
                        §§push(_loc1_);
                     }
                  }
                  §§goto(addr139);
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §#!2§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§<o§());
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr118:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr119:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr120:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr125:
                        }
                        else
                        {
                           while(true)
                           {
                              addr106:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       return;
                                    }
                                    addr115:
                                    while(true)
                                    {
                                    }
                                    addr115:
                                 }
                                 while(true)
                                 {
                                    this.§@2§ = param1;
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       break;
                                    }
                                    §§goto(addr115);
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    return;
                                    addr62:
                                 }
                                 continue loop0;
                              }
                           }
                           addr105:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §2U§(param1:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:§;c§ = null;
         var _loc5_:Object = null;
         var _loc6_:§38§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§+H§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc11_)
         {
            this.§]X§ = _loc2_.LevelExtension;
         }
         loop0:
         while(true)
         {
            this.§?v§ = false;
            loop1:
            while(true)
            {
               this.§^]§ = _loc2_.scoreSilver;
               loop2:
               while(true)
               {
                  this.§;!L§ = _loc2_.scoreGold;
                  loop3:
                  while(true)
                  {
                     this.§@2§ = _loc2_.scoreEagle;
                     loop4:
                     for(; _loc11_; while(_loc11_ || this)
                     {
                        if(_loc2_.counts.joints)
                        {
                           loop7:
                           while(!_loc10_)
                           {
                              this.§=![§ = §8![§(_loc2_.counts.joints,_loc2_.world);
                              while(_loc11_)
                              {
                                 loop10:
                                 while(_loc11_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§#P§ = new Vector.<§38§>();
                                       addr75:
                                       while(true)
                                       {
                                          if(_loc11_)
                                          {
                                             if(_loc10_ && _loc2_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc10_)
                                             {
                                                continue loop3;
                                             }
                                             this.§4!W§ = new Vector.<§+H§>();
                                             if(!_loc11_)
                                             {
                                                §§goto(addr75);
                                             }
                                             if(!_loc10_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr142);
                                             continue loop7;
                                          }
                                          continue loop10;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        while(true)
                        {
                           this.§5P§ = new Vector.<§;c§>();
                           §§goto(addr96);
                        }
                     })
                     {
                        this.§''§ = _loc2_.theme;
                        while(true)
                        {
                           this.mName = _loc2_.id;
                           continue loop4;
                        }
                     }
                     continue loop0;
                  }
                  if(!(_loc11_ || _loc3_))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr66);
                  }
                  var _loc3_:* = Number(0);
                  addr306:
                  §§push(_loc3_);
                  if(!(_loc10_ && this))
                  {
                     if(§§pop() < _loc2_.camera.length)
                     {
                        _loc4_ = new §;c§();
                        if(_loc11_)
                        {
                           _loc4_.x = _loc2_.camera[_loc3_].x;
                           _loc4_.y = _loc2_.camera[_loc3_].y;
                           _loc4_.left = _loc2_.camera[_loc3_].left;
                           _loc4_.right = _loc2_.camera[_loc3_].right;
                           addr272:
                           addr305:
                           addr288:
                           if(_loc11_ || _loc2_)
                           {
                              _loc4_.top = _loc2_.camera[_loc3_].top;
                              _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                              addr252:
                              if(_loc11_)
                              {
                                 _loc4_.id = _loc2_.camera[_loc3_].id;
                                 addr212:
                                 this.§5P§.push(_loc4_);
                                 addr243:
                                 if(!(_loc10_ && this))
                                 {
                                    if(_loc11_)
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc11_)
                                             {
                                                addr197:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc3_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      addr210:
                                                      if(false)
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr305);
                                    }
                                    §§goto(addr288);
                                 }
                                 §§goto(addr252);
                              }
                              addr263:
                              §§goto(addr263);
                           }
                           addr297:
                           §§goto(addr297);
                        }
                        §§goto(addr210);
                     }
                     if(!(_loc10_ && _loc2_))
                     {
                        §§push(1);
                        if(_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc10_ && _loc2_))
                           {
                              addr346:
                              _loc3_ = §§pop();
                              if(!(_loc10_ && param1))
                              {
                                 addr424:
                                 §§push(_loc3_);
                                 if(_loc11_)
                                 {
                                    if(§§pop() <= _loc2_.counts.birds)
                                    {
                                       _loc5_ = _loc2_.world["bird_" + _loc3_];
                                       _loc6_ = new §38§();
                                       if(!_loc10_)
                                       {
                                          _loc6_.x = _loc5_.x;
                                          _loc6_.y = _loc5_.y;
                                          addr416:
                                          if(!_loc10_)
                                          {
                                             _loc6_.id = _loc5_.id;
                                             addr391:
                                             this.§#P§.push(_loc6_);
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(_loc3_);
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc11_)
                                                   {
                                                      addr383:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr391);
                                                         }
                                                         §§goto(addr424);
                                                      }
                                                      §§goto(addr416);
                                                   }
                                                   §§goto(addr391);
                                                }
                                                §§goto(addr383);
                                             }
                                             addr410:
                                             §§goto(addr410);
                                             addr418:
                                          }
                                          addr423:
                                          §§goto(addr423);
                                       }
                                       §§goto(addr418);
                                    }
                                    if(_loc11_)
                                    {
                                       addr433:
                                       §§push(Number(1));
                                       if(_loc11_)
                                       {
                                          addr437:
                                          _loc3_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             addr632:
                                             if(_loc3_ <= _loc2_.counts.blocks)
                                             {
                                                §§push("block_");
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() + _loc3_);
                                                }
                                                _loc7_ = §§pop();
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr456:
                                                   _loc8_ = _loc2_.world[_loc7_];
                                                   _loc9_ = new §+H§();
                                                   if(_loc11_)
                                                   {
                                                      _loc9_.x = _loc8_.x;
                                                      _loc9_.y = _loc8_.y;
                                                      _loc9_.id = _loc8_.id;
                                                      addr591:
                                                      §§push(Boolean(_loc8_.uniqueID));
                                                      §§push(Boolean(_loc8_.uniqueID));
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      addr631:
                                                      addr626:
                                                      addr610:
                                                      if(§§pop())
                                                      {
                                                         addr601:
                                                         §§pop();
                                                         addr602:
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc8_.uniqueID.length > 0);
                                                            if(_loc11_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  addr571:
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc11_)
                                                                  {
                                                                     addr573:
                                                                     if(§§pop())
                                                                     {
                                                                        addr575:
                                                                        _loc9_.uniqueID = _loc8_.uniqueID;
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           addr523:
                                                                           §§push(Boolean(_loc8_.front));
                                                                           if(_loc11_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    _loc9_.front = _loc8_.front;
                                                                                 }
                                                                                 addr541:
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    addr501:
                                                                                    _loc9_.angle = _loc8_.angle;
                                                                                    addr506:
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          if(!(_loc10_ && _loc2_))
                                                                                          {
                                                                                             addr492:
                                                                                             this.§4!W§.push(_loc9_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      addr486:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr492);
                                                                                                      }
                                                                                                      §§goto(addr632);
                                                                                                   }
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                                §§goto(addr486);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                          §§goto(addr575);
                                                                                       }
                                                                                       addr555:
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                          §§goto(addr631);
                                                                                       }
                                                                                       §§goto(addr575);
                                                                                    }
                                                                                    §§goto(addr541);
                                                                                    addr548:
                                                                                 }
                                                                                 §§goto(addr626);
                                                                              }
                                                                              §§goto(addr501);
                                                                           }
                                                                           §§goto(addr571);
                                                                        }
                                                                        §§goto(addr602);
                                                                     }
                                                                     _loc9_.uniqueID = _loc7_;
                                                                     §§goto(addr555);
                                                                  }
                                                                  §§goto(addr591);
                                                               }
                                                               §§goto(addr601);
                                                            }
                                                            §§goto(addr571);
                                                         }
                                                         §§goto(addr610);
                                                      }
                                                      §§goto(addr573);
                                                   }
                                                   §§goto(addr548);
                                                }
                                                §§goto(addr650);
                                             }
                                             if(!_loc10_)
                                             {
                                                this.§7a§ = _loc2_.slingshotX;
                                                if(_loc10_ && this)
                                                {
                                                }
                                                §§goto(addr650);
                                             }
                                          }
                                          §§goto(addr456);
                                       }
                                       §§goto(addr632);
                                    }
                                    addr650:
                                    this.§<7§ = _loc2_.slingshotY;
                                    return;
                                 }
                                 §§goto(addr437);
                              }
                              §§goto(addr433);
                           }
                           §§goto(addr632);
                        }
                        §§goto(addr433);
                     }
                     §§goto(addr456);
                  }
                  §§goto(addr346);
               }
            }
         }
      }
      
      public function §3!@§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc3_ || _loc3_)
         {
            _loc1_.LevelExtension = this.§]X§;
            while(true)
            {
               _loc1_.scoreSilver = this.§^]§;
               loop1:
               for(; !(_loc4_ && this); while(_loc3_ || _loc3_)
               {
                  _loc1_.theme = this.§''§;
                  while(!_loc4_)
                  {
                     loop5:
                     while(true)
                     {
                        _loc1_.name = this.mName;
                        do
                        {
                           _loc1_.camera = this.§5P§;
                        }
                        while(_loc4_);
                        
                        if(!(_loc3_ || this))
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           while(false)
                           {
                              continue loop5;
                           }
                           var _loc2_:* = Number(0);
                           if(_loc3_)
                           {
                              _loc1_.world = new Object();
                              do
                              {
                                 _loc2_ = Number(0);
                              }
                              while(!(_loc3_ || _loc1_));
                              
                           }
                           loop9:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop10:
                              while(true)
                              {
                                 if(§§pop() >= this.§#P§.length)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§push(0);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop13:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop14:
                                                while(true)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  addr368:
                                                                  _loc2_ = Number(§§pop());
                                                                  continue loop9;
                                                               }
                                                               if(§§pop() >= this.§4!W§.length)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               _loc1_.world["block_" + (_loc2_ + 1)] = this.§4!W§[_loc2_];
                                                               §§push(_loc2_);
                                                               addr344:
                                                            }
                                                            addr326:
                                                            §§push(Number(§§pop() + 1));
                                                         }
                                                         _loc2_ = §§pop();
                                                         continue;
                                                      }
                                                      addr314:
                                                      loop17:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         loop18:
                                                         while(_loc3_ || _loc1_)
                                                         {
                                                            loop19:
                                                            do
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop() >= this.§=![§.length)
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 _loc1_.counts = new Object();
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc1_.counts.blocks = this.§4!W§.length;
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc1_.counts.birds = this.§#P§.length;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop22;
                                                                                          addr125:
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             _loc1_.slingshotY = this.§<7§;
                                                                                             addr132:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_ && _loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc1_.slingshotX = this.§7a§;
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                      addr140:
                                                                                                   }
                                                                                                   §§goto(addr125);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                return _loc1_;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc1_.world["joint_" + (_loc2_ + 1)] = this.§=![§[_loc2_];
                                                                     }
                                                                     §§push(_loc2_);
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr368);
                                                                     }
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               continue loop17;
                                                            }
                                                            while(!_loc4_);
                                                            
                                                            continue loop9;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          addr395:
                                       }
                                       §§goto(addr368);
                                    }
                                 }
                                 else
                                 {
                                    _loc1_.world["bird_" + (_loc2_ + 1)] = this.§#P§[_loc2_];
                                 }
                                 §§goto(addr395);
                              }
                           }
                           addr44:
                        }
                        else
                        {
                           §§goto(addr78);
                        }
                     }
                  }
               })
               {
                  _loc1_.scoreGold = this.§;!L§;
                  while(true)
                  {
                     _loc1_.scoreEagle = this.§@2§;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr44);
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
            if(!_loc8_)
            {
               §§push(_loc2_.id);
               if(_loc7_ || _loc2_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            _loc4_ = LevelItemManager.§&!i§(_loc3_);
            if(_loc8_)
            {
               continue;
            }
            §§push(_loc4_ == null);
            if(!_loc8_)
            {
               §§push(Boolean(§§pop()));
               if(_loc7_ || _loc1_)
               {
                  addr77:
                  §§push(§§pop());
                  if(_loc7_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(!_loc8_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(!_loc8_)
                           {
                              addr111:
                              §§push(Boolean(§§pop()));
                              if(!_loc8_)
                              {
                                 addr114:
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       addr130:
                                       §§push("MISC_FOOD_");
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() + _loc3_.substring(5));
                                       }
                                       _loc3_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                       _loc4_ = LevelItemManager.§&!i§(_loc3_);
                                       addr139:
                                       §§push(Boolean(_loc4_));
                                       if(_loc7_)
                                       {
                                          addr143:
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc1_);
                                          if(!(_loc8_ && _loc1_))
                                          {
                                             §§push(§§pop() + _loc4_.score);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc7_ || _loc3_)
                                                {
                                                   addr172:
                                                   _loc1_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      addr178:
                                                      if(!§`O§(_loc4_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc7_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   §§push(_loc1_);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr204:
                                                      §§push(_loc4_.§]!3§);
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(§§pop() * LevelMain.§!!R§.getValue());
                                                      }
                                                      §§push(int(§§pop() + §§pop()));
                                                   }
                                                   _loc1_ = §§pop();
                                                   continue;
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr172);
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr114);
               }
               §§goto(addr143);
            }
            §§goto(addr77);
         }
         return _loc1_;
      }
      
      public function §0g§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§;c§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(!_loc7_)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               addr283:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  addr284:
                  while(true)
                  {
                     §§push(§§pop());
                     addr285:
                     while(true)
                     {
                        _loc1_ = §§pop();
                     }
                  }
               }
            }
            addr282:
         }
         loop4:
         while(true)
         {
            §§push(_loc1_);
            loop5:
            while(true)
            {
               §§push(" LevelExtension=\"");
               loop6:
               while(true)
               {
                  §§push(§§pop() + this.§]X§);
                  loop7:
                  while(true)
                  {
                     §§push("\"");
                     loop8:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        loop9:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           loop10:
                           while(_loc6_ || _loc3_)
                           {
                              §§push(§§pop());
                              loop11:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    _loc1_ = §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(" AutoCamera=\"");
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop() + this.§?v§);
                                             loop15:
                                             while(!_loc7_)
                                             {
                                                §§push("\"");
                                                loop16:
                                                for(; _loc6_; loop25:
                                                while(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop26:
                                                   while(_loc6_ || _loc1_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         continue loop5;
                                                      }
                                                      loop33:
                                                      while(true)
                                                      {
                                                         if(_loc7_ && this)
                                                         {
                                                            continue loop26;
                                                         }
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            if(!(_loc6_ || _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            loop34:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop());
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     continue loop12;
                                                                     loop38:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || _loc1_))
                                                                        {
                                                                           continue loop35;
                                                                        }
                                                                        addr79:
                                                                        if(_loc6_ || _loc1_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(" scoreGold=\"");
                                                                              loop31:
                                                                              while(_loc6_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§;!L§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       §§push("\"");
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          continue loop33;
                                                                                       }
                                                                                       continue loop25;
                                                                                       addr43:
                                                                                       if(!(_loc6_ || _loc1_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop34;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr58:
                                                                                             _loc1_ = §§pop();
                                                                                             if(!(_loc6_ || this))
                                                                                             {
                                                                                                loop42:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   addr126:
                                                                                                   if(_loc7_ && _loc2_)
                                                                                                   {
                                                                                                      while(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         continue loop30;
                                                                                                         §§goto(addr126);
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                      addr234:
                                                                                                   }
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc7_ && _loc1_))
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                      §§push("<Cameras>");
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr43);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(_loc6_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr113:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr114:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 continue loop42;
                                                                                                                              }
                                                                                                                              §§goto(addr256);
                                                                                                                           }
                                                                                                                           §§goto(addr285);
                                                                                                                        }
                                                                                                                        addr113:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr283);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         §§goto(addr206);
                                                                                                         addr94:
                                                                                                      }
                                                                                                      §§goto(addr113);
                                                                                                   }
                                                                                                   §§goto(addr114);
                                                                                                }
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop38;
                                                                                                   }
                                                                                                   addr70:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   var _loc4_:int = 0;
                                                                                                   var _loc5_:* = this.§5P§;
                                                                                                   addr419:
                                                                                                   for each(_loc2_ in _loc5_)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(" <Camera id=\"");
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc2_.id);
                                                                                                               if(!(_loc7_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push("\" leftBorder=\"");
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.left);
                                                                                                                        if(_loc6_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc7_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push("\" rightBorder=\"");
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_.right);
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc7_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr374:
                                                                                                                                          §§push("\" topBorder=\"");
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr377:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr398:
                                                                                                                                             §§push(_loc2_.top);
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §%!-§.§#!>§);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc6_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr418:
                                                                                                                                                _loc1_ = §§pop() + (§§pop() + "\"></Camera>");
                                                                                                                                                addr416:
                                                                                                                                                §§goto(addr419);
                                                                                                                                             }
                                                                                                                                             §§goto(addr416);
                                                                                                                                          }
                                                                                                                                          addr395:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr398);
                                                                                                                                          }
                                                                                                                                          §§goto(addr416);
                                                                                                                                       }
                                                                                                                                       §§push(_loc2_.top);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr384:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr392:
                                                                                                                                             §§push("\" bottomBorder=\"");
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr395);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr416);
                                                                                                                                       }
                                                                                                                                       §§goto(addr398);
                                                                                                                                    }
                                                                                                                                    §§goto(addr384);
                                                                                                                                 }
                                                                                                                                 §§goto(addr392);
                                                                                                                              }
                                                                                                                              §§goto(addr377);
                                                                                                                           }
                                                                                                                           §§goto(addr374);
                                                                                                                        }
                                                                                                                        §§goto(addr384);
                                                                                                                     }
                                                                                                                     §§goto(addr392);
                                                                                                                  }
                                                                                                                  §§goto(addr374);
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         §§goto(addr418);
                                                                                                      }
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      addr969:
                                                                                                      _loc1_ += "</Cameras>";
                                                                                                      addr966:
                                                                                                   }
                                                                                                   addr963:
                                                                                                   _loc1_ += "<Slingshot x=\"" + this.§#P§[0].x + "\" y=\"" + (this.§#P§[0].y - 8) + "\">";
                                                                                                   addr970:
                                                                                                   addr964:
                                                                                                   addr943:
                                                                                                   addr960:
                                                                                                   addr949:
                                                                                                   addr950:
                                                                                                   addr961:
                                                                                                   addr951:
                                                                                                   addr959:
                                                                                                   addr962:
                                                                                                   §§push(_loc1_ + " <Birds>");
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      _loc1_ = §§pop();
                                                                                                      addr914:
                                                                                                      _loc3_ = int(0);
                                                                                                      addr915:
                                                                                                      addr913:
                                                                                                      addr929:
                                                                                                      if(_loc3_ >= this.§#P§.length)
                                                                                                      {
                                                                                                         addr803:
                                                                                                         §§push(_loc1_);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr808:
                                                                                                               §§push(§§pop() + " </Birds>");
                                                                                                               if(!(_loc7_ && _loc1_))
                                                                                                               {
                                                                                                                  addr817:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     addr825:
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr779:
                                                                                                                        §§push(§§pop() + "</Slingshot>");
                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr794:
                                                                                                                              _loc1_ = §§pop();
                                                                                                                              addr795:
                                                                                                                              §§push(0);
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 addr764:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(!(_loc7_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    addr438:
                                                                                                                                    addr772:
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= this.§4!W§.length)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push("</Level>");
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr511:
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(!(_loc7_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                addr537:
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr915);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return new XML(_loc1_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr744:
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc7_ && _loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr556:
                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr559:
                                                                                                                                                                                                            §§push(§§pop() + 1);
                                                                                                                                                                                                            if(!(_loc7_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr567:
                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_ || _loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                                                                        addr579:
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr438);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr970);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr964);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr825);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr795);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr913);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr830:
                                                                                                                                                                                                                  _loc3_ = int(§§pop());
                                                                                                                                                                                                                  addr831:
                                                                                                                                                                                                                  if(!(_loc7_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr915);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr829:
                                                                                                                                                                                                                  §§goto(addr829);
                                                                                                                                                                                                                  §§push(_loc3_ + 1);
                                                                                                                                                                                                                  addr910:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr764);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr914);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr795);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr831);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr579);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr963);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr803);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr817);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr597:
                                                                                                                                                                                    §§push("<Item id=\"");
                                                                                                                                                                                    if(_loc6_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + this.§4!W§[_loc3_].id);
                                                                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr620:
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("\" x=\"");
                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc7_ && _loc1_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + this.§4!W§[_loc3_].x);
                                                                                                                                                                                                            if(!(_loc7_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr660:
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("\" y=\"");
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr668:
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr681:
                                                                                                                                                                                                                           §§push(§§pop() + this.§4!W§[_loc3_].y);
                                                                                                                                                                                                                           §§push("\" rotation=\"");
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr684:
                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr713:
                                                                                                                                                                                                                                                §§push(§§pop() + this.§4!W§[_loc3_].angle);
                                                                                                                                                                                                                                                §§push("\" ></Item>");
                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr717:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr720:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr730:
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                                                                        §§goto(addr744);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr966);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr963);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr825);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr794);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr966);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr779);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + this.§#P§[_loc3_].id);
                                                                                                                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr867:
                                                                                                                                                                                                                                                            §§push(§§pop() + "\" x=\"");
                                                                                                                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr883:
                                                                                                                                                                                                                                                               §§push(§§pop() + this.§#P§[_loc3_].x + "\" y=\"");
                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr891:
                                                                                                                                                                                                                                                                  §§push(§§pop() + this.§#P§[_loc3_].y);
                                                                                                                                                                                                                                                                  §§push("\"></Bird>");
                                                                                                                                                                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr900:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr909:
                                                                                                                                                                                                                                                                        _loc1_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                        addr908:
                                                                                                                                                                                                                                                                        §§goto(addr910);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr943);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr960);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr949);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr883);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr966);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr963);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr891);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr950);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr961);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr891);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr779);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr713);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr867);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr891);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr713);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr883);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr713);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr900);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr681);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr951);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr959);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr660);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr684);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr808);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr717);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr883);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr730);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr908);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr720);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr668);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr681);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr713);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr717);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr511);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr929);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr803);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr537);
                                                                                                                                                }
                                                                                                                                                §§goto(addr597);
                                                                                                                                                §§push(_loc1_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr830);
                                                                                                                                          }
                                                                                                                                          §§goto(addr556);
                                                                                                                                       }
                                                                                                                                       §§goto(addr559);
                                                                                                                                    }
                                                                                                                                    §§goto(addr567);
                                                                                                                                 }
                                                                                                                                 §§goto(addr914);
                                                                                                                              }
                                                                                                                              §§goto(addr830);
                                                                                                                           }
                                                                                                                           §§goto(addr963);
                                                                                                                        }
                                                                                                                        §§goto(addr808);
                                                                                                                     }
                                                                                                                     §§goto(addr909);
                                                                                                                  }
                                                                                                                  §§goto(addr969);
                                                                                                               }
                                                                                                               §§goto(addr962);
                                                                                                            }
                                                                                                            §§goto(addr963);
                                                                                                         }
                                                                                                         addr843:
                                                                                                         §§goto(addr717);
                                                                                                         §§push("  <Bird id=\"");
                                                                                                      }
                                                                                                      §§goto(addr843);
                                                                                                      §§push(_loc1_);
                                                                                                   }
                                                                                                   addr942:
                                                                                                   §§goto(addr942);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       §§goto(addr113);
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr205);
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr225);
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop6;
                                                })
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr255:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr256:
                                                         while(!_loc7_)
                                                         {
                                                            _loc1_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               addr202:
                                                               while(true)
                                                               {
                                                                  §§push(" scoreSilver=\"");
                                                                  addr203:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^]§);
                                                                     addr205:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr206:
                                                                        while(_loc6_)
                                                                        {
                                                                           §§push("\"");
                                                                           continue loop16;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                          if(!(_loc6_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr94);
                                          §§push(">");
                                       }
                                       while(!(_loc7_ && this))
                                       {
                                          §§goto(addr70);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr282);
                                 }
                              }
                           }
                           §§goto(addr284);
                        }
                     }
                  }
               }
               while(!(_loc7_ && this))
               {
                  _loc1_ = §§pop();
                  §§goto(addr234);
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
         if(!(_loc3_ && this))
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
         if(!_loc3_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#P§.push(param1);
         }
      }
      
      public function §^!4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5P§ = new Vector.<§;c§>();
         }
      }
      
      public function §?M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5P§.push(param1);
         }
      }
   }
}
