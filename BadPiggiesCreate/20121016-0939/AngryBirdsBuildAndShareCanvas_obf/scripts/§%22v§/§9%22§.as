package §"v§
{
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §3"5§.§5!q§;
   import §3"5§.§6O§;
   import §3"5§.§^X§;
   import §5!V§.§!w§;
   import §8g§.*;
   import §=!#§.§`"=§;
   import flash.geom.Point;
   
   public class §9"§
   {
      
      public static const §4!§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4!§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §=!?§:Number = 0;
      
      public var §'!`§:Number = -8;
      
      private var §"!_§:Vector.<§5!q§> = null;
      
      private var mBirds:Vector.<§^X§> = null;
      
      private var §2"'§:Vector.<§6O§> = null;
      
      private var §">§:Vector.<§4^§> = null;
      
      public var §!!5§:Number = 0;
      
      public var §2+§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var § !U§:int = 0;
      
      private var §[!i§:String = null;
      
      public var mName:String = null;
      
      public function §9"§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         while(true)
         {
            this.§">§ = new Vector.<§4^§>();
            loop1:
            while(_loc1_ || _loc2_)
            {
               this.§"!_§ = new Vector.<§5!q§>();
               do
               {
                  this.mBirds = new Vector.<§^X§>();
                  while(!(_loc2_ && this))
                  {
                     this.§2"'§ = new Vector.<§6O§>();
                     do
                     {
                        this.§[!i§ = §4!§;
                     }
                     while(!_loc1_);
                     
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr41);
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      public static function §+0§(param1:String) : §9"§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9"§ = new §9"§();
         if(_loc3_ || _loc2_)
         {
            _loc2_.§1!n§(param1);
         }
         return _loc2_;
      }
      
      public static function §%h§(param1:§]!>§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§,!E§);
            while(true)
            {
               §§push(§]!>§.§9!K§);
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
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1.§,!E§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§]!>§.§-"?§);
                                    addr98:
                                    while(_loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_ || §9"§)
                                       {
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ || §9"§))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && §9"§))
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(true);
                                                         }
                                                         else
                                                         {
                                                            if(_loc3_ && §9"§)
                                                            {
                                                               continue loop5;
                                                            }
                                                            addr19:
                                                            §§push(false);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         while(_loc3_ && §9"§)
                                                         {
                                                            while(_loc2_)
                                                            {
                                                               §§pop();
                                                               continue loop6;
                                                            }
                                                            continue loop2;
                                                         }
                                                         return §§pop();
                                                         addr77:
                                                      }
                                                      §§goto(addr19);
                                                   }
                                                   return §§pop();
                                                   addr55:
                                                }
                                             }
                                             continue loop3;
                                             addr110:
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr120);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr110);
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public static function §]-§(param1:String) : §9"§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§9"§ = §+0§(param1);
         if(_loc5_ || _loc2_)
         {
            _loc2_.§=!?§ = _loc2_.mBirds[0].x;
            if(_loc5_)
            {
               addr38:
               _loc2_.§'!`§ = _loc2_.mBirds[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() >= _loc2_.§"!_§.length)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  _loc2_.§"!_§[_loc3_].angle = 360 - _loc2_.§"!_§[_loc3_].angle;
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc5_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            return _loc2_;
         }
         §§goto(addr38);
      }
      
      protected static function §,Z§(param1:int, param2:Object) : Vector.<§6O§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§6O§ = null;
         var _loc3_:Vector.<§6O§> = new Vector.<§6O§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!(_loc9_ || param2))
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc9_ || §9"§)
               {
                  §§push(_loc5_.type == §6O§.§4N§);
                  if(!(_loc10_ && param2))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && param2))
                        {
                           addr102:
                           §§pop();
                           addr121:
                           if(!_loc10_)
                           {
                              §§push(_loc5_.type == §6O§.§2!+§);
                           }
                           _loc8_ = new §6O§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                           if(!_loc10_)
                           {
                              if(_loc5_.type == §6O§.§2!+§)
                              {
                                 if(_loc9_)
                                 {
                                    _loc8_.axisX = _loc5_.axisX;
                                    if(!(_loc10_ && param2))
                                    {
                                       _loc8_.axisY = _loc5_.axisY;
                                       if(!_loc10_)
                                       {
                                          addr190:
                                          if(_loc5_.type == §6O§.§]I§)
                                          {
                                             if(_loc9_ || §9"§)
                                             {
                                                addr202:
                                                _loc8_.§1!Q§ = _loc5_.destroyTimer;
                                                if(!_loc9_)
                                                {
                                                }
                                                _loc4_++;
                                                continue;
                                             }
                                          }
                                          addr175:
                                       }
                                       §§goto(addr202);
                                    }
                                    _loc3_.push(_loc8_);
                                 }
                                 §§goto(addr202);
                              }
                           }
                           §§goto(addr175);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr121);
                     }
                     else
                     {
                        _loc8_ = new §6O§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                     }
                     §§goto(addr190);
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr202);
         }
         return _loc3_;
      }
      
      public function get §'O§() : int
      {
         return this.§"!_§.length;
      }
      
      public function get §-H§() : int
      {
         return this.§2"'§.length;
      }
      
      public function get § "2§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §[l§() : int
      {
         return this.§">§.length;
      }
      
      public function get theme() : String
      {
         return this.§[!i§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!i§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@!b§());
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
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
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop5:
                              for(; !_loc3_; while(true)
                              {
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr57);
                              },addr88:,return §§pop())
                              {
                                 §§push(this.§ !U§);
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       break;
                                    }
                                    addr57:
                                    §§push(0);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr111);
                                          }
                                          §§push(_loc1_);
                                       }
                                       else if(!_loc3_)
                                       {
                                          addr30:
                                          §§push(this.§ !U§);
                                          if(!_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr111);
                                          }
                                       }
                                       else
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue loop4;
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             §§push(this.§ !U§);
                                             continue loop5;
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr88);
                                    }
                                    §§goto(addr30);
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(!§§pop())
                     {
                        §§goto(addr47);
                     }
                     addr111:
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §^b§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§@!b§());
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr99:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr100:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 this.§ !U§ = param1;
                                 if(!(_loc3_ && param1))
                                 {
                                    break;
                                 }
                                 addr96:
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                           if(_loc4_ || _loc3_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        return;
                        addr76:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §1!n§(param1:String) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§4^§ = null;
         var _loc9_:Object = null;
         var _loc10_:§^X§ = null;
         var _loc11_:§5!q§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc12_ && this))
         {
            this.§!!5§ = _loc2_.LevelExtension;
            while(true)
            {
               this.§2+§ = false;
               while(true)
               {
                  this.mScoreSilver = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.mScoreGold = _loc2_.scoreGold;
                     loop3:
                     while(true)
                     {
                        this.§ !U§ = _loc2_.scoreEagle;
                        loop4:
                        while(true)
                        {
                           this.§[!i§ = _loc2_.theme;
                           loop5:
                           while(true)
                           {
                              this.mName = _loc2_.id;
                              loop6:
                              while(true)
                              {
                                 if(_loc2_.counts.joints)
                                 {
                                    loop7:
                                    while(_loc13_)
                                    {
                                       this.§2"'§ = §,Z§(_loc2_.counts.joints,_loc2_.world);
                                       while(_loc13_)
                                       {
                                          if(_loc13_ || _loc2_)
                                          {
                                             if(!_loc12_)
                                             {
                                                if(!_loc12_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    this.§">§ = new Vector.<§4^§>();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc12_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr98);
      }
      
      public function §%4§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            _loc1_.LevelExtension = this.§!!5§;
            loop0:
            while(true)
            {
               _loc1_.scoreSilver = this.mScoreSilver;
               while(true)
               {
                  _loc1_.scoreGold = this.mScoreGold;
                  loop2:
                  while(true)
                  {
                     _loc1_.scoreEagle = this.§ !U§;
                     while(true)
                     {
                        _loc1_.theme = this.§[!i§;
                        loop4:
                        while(!(_loc3_ && _loc2_))
                        {
                           while(true)
                           {
                              _loc1_.name = this.mName;
                              loop6:
                              while(_loc4_)
                              {
                                 while(true)
                                 {
                                    _loc1_.camera = this.§">§;
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 var _loc2_:* = Number(0);
                                 if(_loc4_ || _loc1_)
                                 {
                                    _loc1_.world = new Object();
                                    do
                                    {
                                       _loc2_ = Number(0);
                                    }
                                    while(_loc3_ && _loc1_);
                                    
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop10:
                                    while(!(_loc3_ && this))
                                    {
                                       if(§§pop() >= this.mBirds.length)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(0);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
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
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(§§pop() < this.§"!_§.length)
                                                               {
                                                                  _loc1_.world["block_" + (_loc2_ + 1)] = this.§"!_§[_loc2_];
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  loop18:
                                                                  while(!_loc3_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        do
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(§§pop() >= this.§2"'§.length)
                                                                                 {
                                                                                    while(_loc4_ || _loc1_)
                                                                                    {
                                                                                       _loc1_.counts = new Object();
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_.counts.blocks = this.§"!_§.length;
                                                                                          loop23:
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             _loc1_.counts.birds = this.mBirds.length;
                                                                                             continue loop22;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      _loc1_.slingshotX = this.§=!?§;
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr332:
                                                                                                   addr332:
                                                                                                   if(!(_loc4_ || this))
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             break loop10;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 _loc1_.world["joint_" + (_loc2_ + 1)] = this.§2"'§[_loc2_];
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                           §§goto(addr272);
                                                                        }
                                                                        while(_loc4_);
                                                                        
                                                                        continue loop14;
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           return _loc1_;
                                                                        }
                                                                     }
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr332);
                                                               }
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(_loc3_ && _loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + 1);
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr331);
                                                               §§goto(addr332);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                addr401:
                                             }
                                             §§goto(addr383);
                                          }
                                       }
                                       else
                                       {
                                          _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
                                       }
                                       §§goto(addr401);
                                    }
                                    _loc2_ = §§pop();
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  if(_loc4_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §4U§() : String
      {
         return JSON.stringify(this.§%4§());
      }
      
      public function §@!b§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§5!q§ = null;
         var _loc3_:* = null;
         var _loc4_:§]!>§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§"!_§)
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
            §§push((_loc4_ = §<!m§.§"!F§(_loc3_)) == null);
            if(_loc7_ || this)
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §§pop();
                     if(_loc7_ || _loc1_)
                     {
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(_loc7_)
                           {
                              addr84:
                              if(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    addr103:
                                    _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
                                    if(_loc8_)
                                    {
                                    }
                                    addr144:
                                    if(§%h§(_loc4_))
                                    {
                                       if(!_loc8_)
                                       {
                                          addr150:
                                          §§push(_loc1_);
                                          if(_loc7_ || this)
                                          {
                                             addr158:
                                             §§push(_loc4_.§'">§);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() * §!w§.§!!l§.getValue());
                                             }
                                             §§push(int(§§pop() + §§pop()));
                                          }
                                          _loc1_ = §§pop();
                                       }
                                    }
                                    continue;
                                 }
                                 _loc4_ = §<!m§.§"!F§(_loc3_);
                              }
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(_loc1_);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop() + _loc4_.score);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc8_)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc7_)
                                          {
                                             §§goto(addr144);
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr144);
                        }
                     }
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr84);
         }
         return _loc1_;
      }
      
      public function §@!S§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§4^§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!_loc7_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               addr254:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr255:
                  while(true)
                  {
                     §§push(_loc1_);
                     addr241:
                     while(true)
                     {
                        §§push(" LevelExtension=\"" + this.§!!5§);
                        addr245:
                        while(true)
                        {
                           §§push("\"");
                           addr246:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr247:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr248:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr249:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr250:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          continue loop0;
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
         §§goto(addr58);
      }
      
      public function getObject(param1:int) : §5!q§
      {
         return this.§"!_§[param1];
      }
      
      public function addObject(param1:§5!q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§"!_§.push(param1);
         }
      }
      
      public function §8!P§(param1:int) : §6O§
      {
         return this.§2"'§[param1];
      }
      
      public function §]"=§(param1:§6O§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2"'§.push(param1);
         }
      }
      
      public function §,;§(param1:int) : §^X§
      {
         return this.mBirds[param1];
      }
      
      public function §"A§(param1:§^X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mBirds.push(param1);
         }
      }
      
      public function §7!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§">§ = new Vector.<§4^§>();
         }
      }
      
      public function §3!B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.mBirds = new Vector.<§^X§>();
         }
      }
      
      public function §5!0§(param1:int) : §4^§
      {
         return this.§">§[param1];
      }
      
      public function §="8§(param1:§4^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§">§.push(param1);
         }
      }
   }
}
