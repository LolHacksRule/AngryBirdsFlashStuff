package §0!N§
{
   import § use§.§'!]§;
   import § use§.§+N§;
   import § use§.§0!D§;
   import §,!5§.§^g§;
   import §2!R§.§#C§;
   import §<!1§.§9B§;
   import §<!1§.§<F§;
   import §?!G§.*;
   import flash.geom.Point;
   
   public class §=+§
   {
      
      public static const §'!M§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!M§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §6y§:Number = 0;
      
      public var §8!r§:Number = -8;
      
      private var §>!!§:Vector.<§0!D§> = null;
      
      private var §?$§:Vector.<§'!]§> = null;
      
      private var §4a§:Vector.<§+N§> = null;
      
      private var §3t§:Vector.<§4!=§> = null;
      
      public var §&!O§:Number = 0;
      
      public var §?s§:Boolean = false;
      
      public var §8!l§:int = 0;
      
      public var §>!o§:int = 0;
      
      private var §2!y§:int = 0;
      
      private var §+!m§:String = null;
      
      public var mName:String = null;
      
      public function §=+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               this.§3t§ = new Vector.<§4!=§>();
               while(_loc2_)
               {
                  this.§>!!§ = new Vector.<§0!D§>();
                  loop2:
                  for(; !(_loc1_ && _loc2_); if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr52:
                  })
                  {
                     this.§?$§ = new Vector.<§'!]§>();
                     while(true)
                     {
                        this.§4a§ = new Vector.<§+N§>();
                        while(!(_loc1_ && this))
                        {
                           this.§+!m§ = §'!M§;
                           if(!(_loc1_ && _loc2_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §@^§(param1:String) : §=+§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=+§ = new §=+§();
         if(_loc4_ || _loc3_)
         {
            _loc2_.§0!Z§(param1);
         }
         return _loc2_;
      }
      
      public static function §,!R§(param1:§9B§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §=+§)
         {
            §§push(param1.§6K§);
            loop0:
            while(true)
            {
               §§push(§9B§.§#!s§);
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
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§pop();
                                    loop7:
                                    for(; _loc2_; if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    },§§goto(addr24))
                                    {
                                       §§push(param1.§6K§);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop0;
                                       }
                                       §§push(§9B§.§4x§);
                                       if(_loc2_ || param1)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop7;
                                                }
                                                addr24:
                                                §§push(false);
                                                if(!(_loc3_ && §=+§))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr146:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop7;
                                                   }
                                                }
                                             }
                                             return §§pop();
                                             addr77:
                                          }
                                          §§goto(addr87);
                                       }
                                       else
                                       {
                                          addr118:
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ && _loc2_)
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
                                    while(true)
                                    {
                                       §§push(param1.§6K§);
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr77);
                           }
                           continue;
                        }
                        §§goto(addr146);
                     }
                     addr87:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public static function §"M§(param1:String) : §=+§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§=+§ = §@^§(param1);
         if(!(_loc4_ && §=+§))
         {
            _loc2_.§6y§ = _loc2_.§?$§[0].x;
            if(_loc5_)
            {
               _loc2_.§8!r§ = _loc2_.§?$§[0].y - 8.5;
               addr38:
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(_loc5_)
                  {
                     if(§§pop() >= _loc2_.§>!!§.length)
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
                        _loc2_.§>!!§[_loc3_].angle = 360 - _loc2_.§>!!§[_loc3_].angle;
                     }
                     addr100:
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr100);
            }
            return _loc2_;
         }
         §§goto(addr38);
      }
      
      protected static function §4m§(param1:int, param2:Object) : Vector.<§+N§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§+N§ = null;
         var _loc3_:Vector.<§+N§> = new Vector.<§+N§>();
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
               if(_loc9_)
               {
                  §§push(_loc5_.type == §+N§.§!p§);
                  if(!_loc10_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && param2))
                        {
                           addr92:
                           §§pop();
                           addr111:
                           if(!_loc10_)
                           {
                              §§push(_loc5_.type == §+N§.§0!'§);
                           }
                           _loc8_ = new §+N§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                           if(!_loc10_)
                           {
                              if(_loc5_.type == §+N§.§0!'§)
                              {
                                 if(_loc9_)
                                 {
                                    _loc8_.axisX = _loc5_.axisX;
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       _loc8_.axisY = _loc5_.axisY;
                                       if(!(_loc10_ && param2))
                                       {
                                          addr195:
                                          if(_loc5_.type == §+N§.§3!!§)
                                          {
                                             if(_loc9_)
                                             {
                                                _loc8_.§5l§ = _loc5_.destroyTimer;
                                                if(!_loc9_)
                                                {
                                                }
                                                addr211:
                                                _loc4_++;
                                                continue;
                                             }
                                          }
                                          addr170:
                                       }
                                       §§goto(addr211);
                                    }
                                    _loc3_.push(_loc8_);
                                    §§goto(addr211);
                                 }
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr211);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr111);
                     }
                     else
                     {
                        _loc8_ = new §+N§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                     }
                     §§goto(addr195);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr211);
         }
         return _loc3_;
      }
      
      public function get § %§() : int
      {
         return this.§>!!§.length;
      }
      
      public function get §^!"§() : int
      {
         return this.§4a§.length;
      }
      
      public function get §]U§() : int
      {
         return this.§?$§.length;
      }
      
      public function get §-!"§() : int
      {
         return this.§3t§.length;
      }
      
      public function get theme() : String
      {
         return this.§+!m§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+!m§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§^!v§());
         if(_loc2_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc2_)
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
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr146:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr121:
                              loop5:
                              while(true)
                              {
                                 §§push(this.§2!y§);
                                 addr123:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop8;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        addr145:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§2!y§);
                              loop4:
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(0);
                                       if(!(_loc3_ && this))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break loop2;
                                                }
                                                if(!_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      break loop4;
                                                   }
                                                   addr104:
                                                }
                                                else
                                                {
                                                   §§goto(addr146);
                                                }
                                             }
                                          }
                                          §§push(this.§2!y§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             return §§pop();
                                          }
                                          continue;
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr136);
                              }
                              continue loop0;
                           }
                        }
                        break;
                        §§goto(addr125);
                     }
                     addr136:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  §§goto(addr145);
               }
            }
         }
         §§goto(addr104);
      }
      
      public function § !M§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§^!v§());
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr107:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc3_ && this))
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 return;
                              }
                              addr104:
                              while(true)
                              {
                              }
                              addr104:
                           }
                           while(true)
                           {
                              this.§2!y§ = param1;
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr104);
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           §§push(§§pop() < §§pop());
                           addr91:
                           continue loop0;
                           if(_loc4_ || this)
                           {
                              continue;
                           }
                           addr117:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr117:
                        }
                        return;
                        addr99:
                     }
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §0!Z§(param1:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:§4!=§ = null;
         var _loc5_:Object = null;
         var _loc6_:§'!]§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§0!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc10_)
         {
            this.§&!O§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§?s§ = false;
               addr154:
               while(true)
               {
                  this.§8!l§ = _loc2_.scoreSilver;
                  addr147:
                  while(_loc11_)
                  {
                     this.§>!o§ = _loc2_.scoreGold;
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.§2!y§ = _loc2_.scoreEagle;
            loop4:
            while(true)
            {
               this.§+!m§ = _loc2_.theme;
               loop5:
               while(true)
               {
                  this.mName = _loc2_.id;
                  loop6:
                  while(_loc11_)
                  {
                     if(!_loc2_.counts.joints)
                     {
                        loop9:
                        while(true)
                        {
                           this.§3t§ = new Vector.<§4!=§>();
                           loop10:
                           for(; !_loc10_; while(!(_loc10_ && this))
                           {
                              this.§>!!§ = new Vector.<§0!D§>();
                              if(!(_loc10_ && param1))
                              {
                                 if(!_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       break loop9;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       var _loc3_:* = Number(0);
                                       addr273:
                                       §§push(_loc3_);
                                       if(!(_loc10_ && this))
                                       {
                                          if(§§pop() < _loc2_.camera.length)
                                          {
                                             (_loc4_ = new §4!=§()).x = _loc2_.camera[_loc3_].x;
                                             if(!_loc10_)
                                             {
                                                _loc4_.y = _loc2_.camera[_loc3_].y;
                                                _loc4_.left = _loc2_.camera[_loc3_].left;
                                                addr262:
                                                if(!_loc10_)
                                                {
                                                   _loc4_.right = _loc2_.camera[_loc3_].right;
                                                   addr251:
                                                   if(_loc11_)
                                                   {
                                                      _loc4_.top = _loc2_.camera[_loc3_].top;
                                                      _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                                      _loc4_.id = _loc2_.camera[_loc3_].id;
                                                      addr194:
                                                      this.§3t§.push(_loc4_);
                                                      addr242:
                                                      addr233:
                                                      if(_loc11_ || this)
                                                      {
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc3_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      addr224:
                                                      §§goto(addr224);
                                                      addr253:
                                                   }
                                                   §§goto(addr262);
                                                }
                                                addr272:
                                                §§goto(addr272);
                                             }
                                             §§goto(addr253);
                                          }
                                          if(!_loc10_)
                                          {
                                             §§push(1);
                                             if(_loc11_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      addr391:
                                                      §§push(_loc3_);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr399:
                                                         if(§§pop() <= _loc2_.counts.birds)
                                                         {
                                                            _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                            (_loc6_ = new §'!]§()).x = _loc5_.x;
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               _loc6_.y = _loc5_.y;
                                                               _loc6_.id = _loc5_.id;
                                                               addr378:
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr367:
                                                                  this.§?$§.push(_loc6_);
                                                                  addr372:
                                                                  §§push(_loc3_);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        addr354:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr367);
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        §§goto(addr378);
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr354);
                                                                  addr385:
                                                               }
                                                               addr390:
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            addr405:
                                                            §§push(Number(1));
                                                            if(_loc11_)
                                                            {
                                                               addr409:
                                                               _loc3_ = §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  §§goto(addr590);
                                                               }
                                                               §§goto(addr597);
                                                            }
                                                         }
                                                         §§goto(addr428);
                                                      }
                                                      addr590:
                                                      if(_loc3_ <= _loc2_.counts.blocks)
                                                      {
                                                         §§push("block_");
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(§§pop() + _loc3_);
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            addr428:
                                                            _loc8_ = _loc2_.world[_loc7_];
                                                            (_loc9_ = new §0!D§()).x = _loc8_.x;
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               _loc9_.y = _loc8_.y;
                                                            }
                                                            _loc9_.id = _loc8_.id;
                                                            addr589:
                                                            addr584:
                                                            §§push(Boolean(_loc8_.uniqueID));
                                                            if(!(_loc10_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr560:
                                                                  §§pop();
                                                                  addr561:
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     §§push(_loc8_.uniqueID.length > 0);
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        addr540:
                                                                        if(§§pop())
                                                                        {
                                                                           addr542:
                                                                           _loc9_.uniqueID = _loc8_.uniqueID;
                                                                           addr546:
                                                                           if(_loc8_.front)
                                                                           {
                                                                              addr513:
                                                                              _loc9_.front = _loc8_.front;
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr501:
                                                                                 _loc9_.angle = _loc8_.angle;
                                                                                 addr506:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr495:
                                                                                    this.§>!!§.push(_loc9_);
                                                                                    addr500:
                                                                                    §§push(_loc3_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr457:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr495);
                                                                                                            }
                                                                                                            §§goto(addr590);
                                                                                                         }
                                                                                                         §§goto(addr589);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   addr526:
                                                                                                   §§goto(addr542);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr513);
                                                                                          }
                                                                                          §§goto(addr506);
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    §§goto(addr457);
                                                                                 }
                                                                                 §§goto(addr561);
                                                                              }
                                                                              §§goto(addr546);
                                                                           }
                                                                           §§goto(addr501);
                                                                        }
                                                                        _loc9_.uniqueID = _loc7_;
                                                                        §§goto(addr526);
                                                                     }
                                                                     §§goto(addr560);
                                                                  }
                                                                  §§goto(addr584);
                                                               }
                                                               §§goto(addr540);
                                                            }
                                                            §§goto(addr560);
                                                         }
                                                         §§goto(addr603);
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         addr597:
                                                         this.§6y§ = _loc2_.slingshotX;
                                                         if(_loc10_)
                                                         {
                                                         }
                                                         §§goto(addr603);
                                                      }
                                                      addr603:
                                                      this.§8!r§ = _loc2_.slingshotY;
                                                      return;
                                                   }
                                                   §§goto(addr405);
                                                }
                                                §§goto(addr399);
                                             }
                                             §§goto(addr405);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr409);
                                    }
                                    addr95:
                                 }
                                 while(_loc11_)
                                 {
                                 }
                                 continue loop5;
                                 break loop10;
                              }
                           })
                           {
                              if(!_loc11_)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 this.§?$§ = new Vector.<§'!]§>();
                                 continue loop10;
                              }
                           }
                           continue loop4;
                        }
                        continue loop3;
                        addr78:
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr154);
               }
            }
         }
      }
      
      public function §&!6§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_ || _loc3_)
         {
            _loc1_.LevelExtension = this.§&!O§;
            while(true)
            {
               _loc1_.scoreSilver = this.§8!l§;
               addr82:
               while(true)
               {
                  _loc1_.scoreGold = this.§>!o§;
                  addr74:
                  while(_loc4_)
                  {
                  }
               }
            }
            addr87:
         }
         while(true)
         {
            _loc1_.scoreEagle = this.§2!y§;
            loop4:
            while(true)
            {
               if(!_loc3_)
               {
                  _loc1_.theme = this.§+!m§;
                  loop5:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        _loc1_.name = this.mName;
                        continue loop5;
                        addr36:
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc2_:* = Number(0);
                        if(!_loc3_)
                        {
                           _loc1_.world = new Object();
                           _loc2_ = Number(0);
                           addr413:
                           if(_loc3_)
                           {
                              §§goto(addr413);
                           }
                        }
                        addr353:
                        if(_loc2_ >= this.§?$§.length)
                        {
                           addr359:
                           if(!(_loc3_ && this))
                           {
                              addr368:
                              _loc2_ = Number(0);
                              addr275:
                              addr369:
                              addr367:
                              §§push(_loc2_);
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(§§pop() >= this.§>!!§.length)
                                 {
                                    addr288:
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       addr292:
                                       §§push(Number(§§pop()));
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                _loc2_ = §§pop();
                                                addr180:
                                                addr309:
                                                §§push(_loc2_);
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(§§pop() >= this.§4a§.length)
                                                         {
                                                            addr217:
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  _loc1_.counts = new Object();
                                                                  addr235:
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        _loc1_.counts.blocks = this.§>!!§.length;
                                                                        addr165:
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              _loc1_.counts.birds = this.§?$§.length;
                                                                              addr150:
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 _loc1_.counts.joints = this.§4a§.length;
                                                                                 addr133:
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       _loc1_.slingshotX = this.§6y§;
                                                                                       addr119:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                _loc1_.slingshotY = this.§8!r§;
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr150);
                                                                                                   }
                                                                                                   return _loc1_;
                                                                                                }
                                                                                                §§goto(addr119);
                                                                                             }
                                                                                             addr329:
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                          §§goto(addr217);
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                    addr385:
                                                                                    §§goto(addr353);
                                                                                 }
                                                                                 §§goto(addr165);
                                                                              }
                                                                              addr258:
                                                                              §§goto(addr180);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  addr242:
                                                                  §§push(_loc2_);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr247:
                                                                        §§push(§§pop() + 1);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr257:
                                                                              _loc2_ = Number(§§pop());
                                                                              §§goto(addr258);
                                                                           }
                                                                           addr384:
                                                                           _loc2_ = Number(§§pop() + 1);
                                                                           addr383:
                                                                           §§goto(addr385);
                                                                        }
                                                                        _loc2_ = Number(§§pop());
                                                                        addr327:
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  §§goto(addr292);
                                                                  addr274:
                                                               }
                                                               addr345:
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  addr312:
                                                                  §§push(_loc2_);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§goto(addr327);
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         _loc1_.world["joint_" + (_loc2_ + 1)] = this.§4a§[_loc2_];
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr384);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr367);
                                 }
                                 _loc1_.world["block_" + (_loc2_ + 1)] = this.§>!!§[_loc2_];
                                 §§goto(addr345);
                              }
                              §§goto(addr368);
                           }
                           §§goto(addr384);
                           §§push(_loc2_);
                           addr401:
                        }
                        _loc1_.world["bird_" + (_loc2_ + 1)] = this.§?$§[_loc2_];
                        while(!(_loc3_ && _loc1_))
                        {
                           _loc1_.camera = this.§3t§;
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr36);
                        }
                        §§goto(addr401);
                     }
                     continue loop4;
                  }
                  §§goto(addr74);
               }
               else
               {
                  §§goto(addr87);
               }
            }
         }
      }
      
      public function §>>§() : String
      {
         return JSON.stringify(this.§&!6§());
      }
      
      public function §^!v§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§0!D§ = null;
         var _loc3_:* = null;
         var _loc4_:§9B§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§>!!§)
         {
            if(_loc7_ || _loc3_)
            {
               §§push(_loc2_.id);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §<F§.§1]§(_loc3_)) == null);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(!(_loc8_ && _loc1_))
                  {
                     §§pop();
                     if(_loc7_ || _loc1_)
                     {
                        §§push(_loc3_);
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(_loc7_)
                           {
                              addr109:
                              if(§§pop())
                              {
                                 if(_loc7_ || _loc1_)
                                 {
                                    addr130:
                                    §§push("MISC_FOOD_");
                                    if(_loc7_ || _loc1_)
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       addr133:
                                       _loc4_ = §<F§.§1]§(_loc3_);
                                       addr138:
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          addr142:
                                          §§push(_loc1_);
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(§§pop() + _loc4_.score);
                                             if(!_loc8_)
                                             {
                                                §§push(int(§§pop()));
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   _loc1_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      addr166:
                                                      if(§,!R§(_loc4_))
                                                      {
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            addr177:
                                                            §§push(_loc1_);
                                                            if(!(_loc8_ && _loc1_))
                                                            {
                                                               addr195:
                                                               §§push(_loc4_.§-!!§);
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() * §^g§.§>p§.getValue());
                                                               }
                                                               §§push(int(§§pop() + §§pop()));
                                                            }
                                                            _loc1_ = §§pop();
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr166);
         }
         return _loc1_;
      }
      
      public function §`F§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§4!=§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!(_loc7_ && _loc3_))
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
                        if(_loc6_)
                        {
                           §§push(" LevelExtension=\"");
                           while(true)
                           {
                              §§push(§§pop() + this.§&!O§);
                              addr266:
                              while(true)
                              {
                                 §§push("\"");
                                 addr267:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr268:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr269:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                              }
                              addr134:
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              §§push(this.§>!o§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop28:
                                 while(true)
                                 {
                                    §§push("\"");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop29:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop30:
                                          while(_loc6_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             loop31:
                                             while(_loc6_)
                                             {
                                                _loc1_ = §§pop();
                                                loop32:
                                                while(true)
                                                {
                                                   loop33:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      addr93:
                                                      addr215:
                                                      while(_loc6_ || this)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(">");
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop29;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               while(true)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  continue loop32;
                                                               }
                                                               addr46:
                                                               §§push("<Cameras>");
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  continue loop28;
                                                               }
                                                               if(!(_loc7_ && _loc1_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr65:
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              if(_loc7_ && _loc3_)
                                                                              {
                                                                                 continue loop32;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          addr119:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(" scoreGold=\"");
                                                                                             if(!(_loc6_ || _loc3_))
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                             addr127:
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr134);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                break loop30;
                                                                                                §§goto(addr127);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr220:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       addr223:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          §§push(" AutoCamera=\"");
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§?s§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push("\"");
                                                                                                addr237:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr238:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr239:
                                                                                                      while(_loc6_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         break loop31;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr65);
                                                                                             }
                                                                                             addr236:
                                                                                          }
                                                                                          §§goto(addr238);
                                                                                          if(_loc7_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr46);
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 while(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(" scoreSilver=\"");
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          if(_loc7_ && _loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(this.§8!l§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr190:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push("\"");
                                                                                                break loop28;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                    §§goto(addr266);
                                                                                 }
                                                                                 continue loop3;
                                                                                 addr216:
                                                                                 addr250:
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              var _loc4_:int = 0;
                                                                              var _loc5_:* = this.§3t§;
                                                                              addr408:
                                                                              for each(_loc2_ in _loc5_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc6_ || _loc1_)
                                                                                    {
                                                                                       §§push(" <Camera id=\"");
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc2_.id);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push("\" leftBorder=\"");
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(_loc2_.left);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr326:
                                                                                                         §§push("\" rightBorder=\"");
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr337:
                                                                                                               §§push(_loc2_.right);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     addr349:
                                                                                                                     §§push("\" topBorder=\"");
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr360:
                                                                                                                           §§push(_loc2_.top);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr364:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push("\" bottomBorder=\"");
                                                                                                                                 if(!(_loc7_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr380:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       addr383:
                                                                                                                                       §§push(_loc2_.top);
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          addr395:
                                                                                                                                          addr392:
                                                                                                                                          §§push(§§pop() + (§§pop() + §#C§.§&R§));
                                                                                                                                          if(_loc6_ || _loc1_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          _loc1_ = §§pop() + §§pop();
                                                                                                                                          §§goto(addr408);
                                                                                                                                       }
                                                                                                                                       §§goto(addr395);
                                                                                                                                    }
                                                                                                                                    addr404:
                                                                                                                                    §§goto(addr395);
                                                                                                                                    §§push(§§pop() + "\"></Camera>");
                                                                                                                                 }
                                                                                                                                 §§goto(addr404);
                                                                                                                              }
                                                                                                                              §§goto(addr383);
                                                                                                                           }
                                                                                                                           §§goto(addr395);
                                                                                                                        }
                                                                                                                        §§goto(addr383);
                                                                                                                     }
                                                                                                                     §§goto(addr404);
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               §§goto(addr364);
                                                                                                            }
                                                                                                            §§goto(addr360);
                                                                                                         }
                                                                                                         §§goto(addr404);
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                   §§goto(addr392);
                                                                                                }
                                                                                                §§goto(addr326);
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                                 §§goto(addr408);
                                                                              }
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 addr889:
                                                                                 _loc1_ += "</Cameras>";
                                                                                 addr884:
                                                                                 _loc1_ += "<Slingshot x=\"" + this.§?$§[0].x + "\" y=\"" + (this.§?$§[0].y - 8) + "\">";
                                                                                 addr887:
                                                                                 addr882:
                                                                                 addr872:
                                                                                 addr871:
                                                                                 addr880:
                                                                                 addr888:
                                                                                 addr881:
                                                                                 addr870:
                                                                                 addr890:
                                                                                 addr885:
                                                                                 addr863:
                                                                                 addr883:
                                                                                 §§push(_loc1_);
                                                                                 §§push(" <Birds>");
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    addr845:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          addr832:
                                                                                          _loc3_ = 0;
                                                                                          addr833:
                                                                                          addr850:
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(§§pop() >= this.§?$§.length)
                                                                                             {
                                                                                                addr762:
                                                                                                §§push(_loc1_);
                                                                                                §§push(" </Birds>");
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr765:
                                                                                                   _loc1_ = §§pop() + §§pop();
                                                                                                   addr766:
                                                                                                   §§push(_loc1_);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         addr736:
                                                                                                         _loc1_ = §§pop() + "</Slingshot>";
                                                                                                         addr735:
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc1_)
                                                                                                            {
                                                                                                               addr717:
                                                                                                               _loc3_ = 0;
                                                                                                               addr718:
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr427:
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(§§pop() >= this.§>!!§.length)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push("</Level>");
                                                                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                        addr509:
                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr833);
                                                                                                                                                                           }
                                                                                                                                                                           return new XML(_loc1_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr718);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr765);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr736);
                                                                                                                                                               }
                                                                                                                                                               addr701:
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  addr704:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc7_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                        _loc3_++;
                                                                                                                                                                        addr526:
                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr427);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr850);
                                                                                                                                                                           }
                                                                                                                                                                           _loc3_++;
                                                                                                                                                                           addr829:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr833);
                                                                                                                                                                        addr714:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr887);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr884);
                                                                                                                                                               }
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  addr828:
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  §§goto(addr829);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr845);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr882);
                                                                                                                                                         }
                                                                                                                                                         addr557:
                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + this.§>!!§[_loc3_].id);
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§push("\" x=\"");
                                                                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc7_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + this.§>!!§[_loc3_].x);
                                                                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push("\" y=\"");
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr615:
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc7_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + this.§>!!§[_loc3_].y);
                                                                                                                                                                                             if(_loc6_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr640:
                                                                                                                                                                                                if(_loc6_ || _loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push("\" rotation=\"");
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr685:
                                                                                                                                                                                                                        addr678:
                                                                                                                                                                                                                        addr684:
                                                                                                                                                                                                                        §§push(§§pop() + this.§>!!§[_loc3_].angle);
                                                                                                                                                                                                                        §§push("\" ></Item>");
                                                                                                                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr800:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr701);
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr808:
                                                                                                                                                                                                                              §§push(§§pop() + "\" y=\"");
                                                                                                                                                                                                                              if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr824:
                                                                                                                                                                                                                                 §§goto(addr701);
                                                                                                                                                                                                                                 §§push(§§pop() + (§§pop() + this.§?$§[_loc3_].y + "\"></Bird>"));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr824);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr872);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr794:
                                                                                                                                                                                                                           §§goto(addr800);
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() + this.§?$§[_loc3_].x);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr871);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr800);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr808);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr685);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr880);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr783:
                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr685);
                                                                                                                                                                                                            §§push("\" x=\"");
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr888);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr794);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr824);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr735);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr678);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr762);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr685);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr881);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr685);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr870);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr640);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr684);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr824);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr615);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr800);
                                                                                                                                                            }
                                                                                                                                                            addr777:
                                                                                                                                                            §§goto(addr783);
                                                                                                                                                            §§push(§§pop() + this.§?$§[_loc3_].id);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr824);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr685);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr800);
                                                                                                                                                }
                                                                                                                                                §§goto(addr765);
                                                                                                                                             }
                                                                                                                                             addr547:
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr557);
                                                                                                                                                   §§push("<Item id=\"");
                                                                                                                                                }
                                                                                                                                                §§goto(addr828);
                                                                                                                                             }
                                                                                                                                             §§goto(addr762);
                                                                                                                                          }
                                                                                                                                          §§goto(addr704);
                                                                                                                                       }
                                                                                                                                       §§goto(addr762);
                                                                                                                                    }
                                                                                                                                    §§goto(addr714);
                                                                                                                                 }
                                                                                                                                 §§goto(addr526);
                                                                                                                              }
                                                                                                                              §§goto(addr509);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                           §§push(_loc1_);
                                                                                                                        }
                                                                                                                        §§goto(addr833);
                                                                                                                     }
                                                                                                                     §§goto(addr717);
                                                                                                                  }
                                                                                                                  §§goto(addr766);
                                                                                                               }
                                                                                                               §§goto(addr736);
                                                                                                            }
                                                                                                            §§goto(addr890);
                                                                                                         }
                                                                                                         §§goto(addr885);
                                                                                                      }
                                                                                                      §§goto(addr863);
                                                                                                   }
                                                                                                   addr774:
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr777);
                                                                                                      §§push("  <Bird id=\"");
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr884);
                                                                                             }
                                                                                             §§goto(addr774);
                                                                                             §§push(_loc1_);
                                                                                          }
                                                                                          §§goto(addr832);
                                                                                       }
                                                                                       §§goto(addr889);
                                                                                    }
                                                                                    §§goto(addr883);
                                                                                 }
                                                                                 addr864:
                                                                                 §§goto(addr864);
                                                                              }
                                                                              §§goto(addr829);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr108);
                                                                        }
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         §§goto(addr216);
                                                         §§goto(addr93);
                                                      }
                                                   }
                                                }
                                             }
                                             while(!_loc7_)
                                             {
                                                _loc1_ = §§pop();
                                                §§goto(addr250);
                                             }
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                §§goto(addr271);
                                             }
                                          }
                                          while(_loc6_ || _loc2_)
                                          {
                                             §§goto(addr215);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr269);
                                       }
                                    }
                                    break;
                                 }
                                 while(_loc6_ || _loc1_)
                                 {
                                    if(!(_loc7_ && _loc1_))
                                    {
                                       §§goto(addr127);
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr270);
                     }
                  }
               }
            }
         }
         §§goto(addr220);
      }
      
      public function §8!3§(param1:int) : §0!D§
      {
         return this.§>!!§[param1];
      }
      
      public function addObject(param1:§0!D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>!!§.push(param1);
         }
      }
      
      public function §!y§(param1:int) : §+N§
      {
         return this.§4a§[param1];
      }
      
      public function §"!K§(param1:§+N§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4a§.push(param1);
         }
      }
      
      public function §0J§(param1:int) : §'!]§
      {
         return this.§?$§[param1];
      }
      
      public function §-T§(param1:§'!]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§?$§.push(param1);
         }
      }
      
      public function §4!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§3t§ = new Vector.<§4!=§>();
         }
      }
      
      public function §7s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?$§ = new Vector.<§'!]§>();
         }
      }
      
      public function §6!L§(param1:int) : §4!=§
      {
         return this.§3t§[param1];
      }
      
      public function §&!=§(param1:§4!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3t§.push(param1);
         }
      }
   }
}
