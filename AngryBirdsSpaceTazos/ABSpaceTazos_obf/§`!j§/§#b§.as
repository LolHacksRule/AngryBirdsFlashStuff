package §`!j§
{
   import §"!&§.§-!M§;
   import §"!&§.§8X§;
   import §9!w§.§9!,§;
   import §@w§.§%![§;
   import §@w§.§1o§;
   import §@w§.§`a§;
   import flash.geom.Point;
   
   public class §#b§
   {
      
      public static const §`!0§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §`!0§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      protected var §4,§:Number = 0;
      
      protected var §^!b§:Number = -8;
      
      protected var §9!o§:Number = 0.0;
      
      protected var §-`§:Vector.<§`a§> = null;
      
      protected var mBirds:Vector.<§%![§> = null;
      
      protected var § !B§:Vector.<§1o§> = null;
      
      protected var §>"8§:Vector.<§1U§> = null;
      
      public var §;8§:Number = 0;
      
      public var § !1§:Boolean = false;
      
      protected var §9'§:int = 0;
      
      protected var §=!,§:int = 0;
      
      protected var §>4§:int = 0;
      
      protected var §;!2§:String = null;
      
      protected var mName:String = null;
      
      public function §#b§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         while(true)
         {
            this.§>"8§ = new Vector.<§1U§>();
            loop1:
            while(_loc1_)
            {
               this.§-`§ = new Vector.<§`a§>();
               loop2:
               while(true)
               {
                  this.mBirds = new Vector.<§%![§>();
                  while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        this.§ !B§ = new Vector.<§1o§>();
                        while(_loc1_)
                        {
                           this.§;!2§ = §`!0§;
                           if(!(_loc2_ && _loc1_))
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function §="B§(param1:String) : §#b§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#b§ = new §#b§();
         if(_loc4_ || _loc3_)
         {
            _loc2_.§#"<§(param1);
         }
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§8X§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1.healthMax == -1);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(param1.score > 0);
                        if(!(_loc3_ || param1))
                        {
                           break;
                           addr61:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    break loop2;
                                 }
                                 addr70:
                              }
                              else if(_loc2_ && _loc3_)
                              {
                                 continue loop2;
                              }
                           }
                           §§push(false);
                           if(!_loc2_)
                           {
                              break;
                           }
                           break loop2;
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        if(_loc3_ || param1)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
            while(!(_loc3_ || §#b§));
            
            return §§pop();
         }
         §§goto(addr70);
      }
      
      public static function §5D§(param1:String) : §#b§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§#b§ = §="B§(param1);
         if(_loc5_)
         {
            _loc2_.§4,§ = _loc2_.mBirds[0].x;
            if(_loc5_ || _loc3_)
            {
               _loc2_.§^!b§ = _loc2_.mBirds[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && param1))
            {
               if(!_loc4_)
               {
                  if(§§pop() >= _loc2_.§-`§.length)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  _loc2_.§-`§[_loc3_].angle = _loc2_.§-`§[_loc3_].angle;
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr88);
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§-`§.length;
      }
      
      public function get §continue§() : int
      {
         return this.§ !B§.length;
      }
      
      public function get §2&§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §'!Y§() : int
      {
         return this.§>"8§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§=!,§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=!,§ = param1;
         }
      }
      
      public function get scoreSilver() : int
      {
         return this.§>4§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>4§ = param1;
         }
      }
      
      public function get slingshotX() : Number
      {
         return this.§4,§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4,§ = param1;
         }
      }
      
      public function get slingshotY() : Number
      {
         return this.§^!b§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§^!b§ = param1;
         }
      }
      
      public function get §^!=§() : Number
      {
         return this.§9!o§;
      }
      
      public function set §^!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9!o§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§;!2§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!2§ = param1;
         }
      }
      
      public function getEagleScore(param1:§-!M§, param2:int) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§@![§(param1,param2));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§`1§());
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc7_ && param1))
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               addr48:
               §§push(int(§§pop() + §§pop()));
               §§push(int(§§pop() + §§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           addr67:
                           §§pop();
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(_loc5_);
                              if(_loc6_ || param1)
                              {
                                 §§push(this.§9'§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    addr155:
                                    loop0:
                                    while(!§§pop())
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(this.§9'§);
                                          loop2:
                                          while(_loc6_ || param2)
                                          {
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(_loc5_);
                                                         break;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   §§push(this.§9'§);
                                                   if(!(_loc6_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§goto(addr103);
                                                   }
                                                   continue loop2;
                                                }
                                                return §§pop();
                                                addr119:
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr156:
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr67);
               }
               §§goto(addr119);
            }
            addr103:
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function §4"'§(param1:int, param2:§-!M§, param3:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(this.§@![§(param2,param3));
         if(_loc8_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§`1§());
         if(_loc8_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop() + _loc5_));
         }
         var _loc6_:* = §§pop();
         if(!(_loc7_ && param1))
         {
            §§push(_loc4_);
            loop0:
            while(true)
            {
               §§push(0);
               addr127:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 addr75:
                                 while(true)
                                 {
                                    this.§9'§ = param1;
                                    if(!(_loc7_ && param3))
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc8_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr75);
                           addr96:
                           §§push(§§pop() < §§pop());
                           if(_loc8_ || param3)
                           {
                              continue;
                           }
                           addr132:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr132:
                        }
                        return;
                        addr104:
                     }
                  }
                  §§goto(addr132);
               }
            }
            addr126:
         }
         while(true)
         {
            §§push(_loc6_);
            if(!_loc7_)
            {
               §§push(param1);
               if(!_loc7_)
               {
                  §§goto(addr96);
               }
               else
               {
                  §§goto(addr127);
               }
            }
            else
            {
               §§goto(addr126);
            }
            §§goto(addr127);
            §§goto(addr132);
         }
      }
      
      public function §#"<§(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§1U§ = null;
         var _loc5_:Object = null;
         var _loc6_:§%![§ = null;
         var _loc7_:Object = null;
         var _loc8_:§`a§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc9_)
         {
            this.§;8§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§ !1§ = false;
               while(true)
               {
                  this.§>4§ = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.§=!,§ = _loc2_.scoreGold;
                     while(true)
                     {
                        this.§9'§ = _loc2_.scoreEagle;
                        addr135:
                        while(_loc10_ || this)
                        {
                           if(_loc10_)
                           {
                              this.§;!2§ = _loc2_.theme;
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr81:
                  if(_loc9_ && _loc2_)
                  {
                     continue;
                  }
                  loop11:
                  while(true)
                  {
                     this.mBirds = new Vector.<§%![§>();
                     loop12:
                     while(_loc10_)
                     {
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              this.§-`§ = new Vector.<§`a§>();
                              if(!_loc10_)
                              {
                                 continue loop12;
                              }
                              if(!_loc9_)
                              {
                                 if(!_loc9_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop11;
                                 }
                                 addr94:
                                 while(true)
                                 {
                                    this.§ !B§ = this.§2!-§(_loc2_.counts.joints,_loc2_.world);
                                 }
                              }
                              while(true)
                              {
                                 addr67:
                                 while(true)
                                 {
                                    this.§>"8§ = new Vector.<§1U§>();
                                    break loop12;
                                 }
                              }
                           }
                           var _loc3_:* = Number(0);
                           loop14:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc9_ && this))
                              {
                                 if(§§pop() >= _loc2_.camera.length)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(1);
                                       if(_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc10_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             if(!(_loc9_ && this))
                                             {
                                                addr408:
                                                §§push(_loc3_);
                                                if(!_loc9_)
                                                {
                                                   if(§§pop() <= _loc2_.counts.birds)
                                                   {
                                                      _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                      (_loc6_ = new §%![§()).x = _loc5_.x;
                                                      if(!(_loc9_ && this))
                                                      {
                                                         _loc6_.y = _loc5_.y;
                                                         _loc6_.type = _loc5_.id;
                                                         addr400:
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc6_);
                                                            §§push(_loc3_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            §§pop().index = §§pop();
                                                            addr377:
                                                            this.mBirds.push(_loc6_);
                                                            if(_loc10_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr377);
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            addr394:
                                                            §§goto(addr394);
                                                            addr402:
                                                         }
                                                         addr407:
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr402);
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      addr418:
                                                      §§push(Number(1));
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr421);
                                                      }
                                                      break;
                                                   }
                                                   addr564:
                                                   §§push(_loc3_);
                                                   break;
                                                }
                                                addr421:
                                                _loc3_ = §§pop();
                                                if(_loc10_ || _loc2_)
                                                {
                                                }
                                                §§goto(addr587);
                                             }
                                             addr587:
                                             this.§^!b§ = _loc2_.slingshotY;
                                             return;
                                          }
                                          break;
                                       }
                                       §§goto(addr418);
                                    }
                                    §§goto(addr421);
                                 }
                                 else
                                 {
                                    (_loc4_ = new §1U§()).x = _loc2_.camera[_loc3_].x;
                                    if(!(_loc9_ && param1))
                                    {
                                       _loc4_.y = _loc2_.camera[_loc3_].y;
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       _loc4_.left = _loc2_.camera[_loc3_].left;
                                       while(true)
                                       {
                                          _loc4_.right = _loc2_.camera[_loc3_].right;
                                          while(_loc10_)
                                          {
                                             _loc4_.top = _loc2_.camera[_loc3_].top;
                                             while(_loc10_)
                                             {
                                                _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                                while(_loc10_ || _loc3_)
                                                {
                                                   _loc4_.id = _loc2_.camera[_loc3_].id;
                                                   loop20:
                                                   while(_loc10_)
                                                   {
                                                      do
                                                      {
                                                         this.§>"8§.push(_loc4_);
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop20;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§push(_loc3_);
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr208:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc3_ = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                      }
                                                      while(false);
                                                      
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              break;
                           }
                           while(§§pop() <= _loc2_.counts.blocks)
                           {
                              _loc7_ = _loc2_.world["block_" + _loc3_];
                              (_loc8_ = new §`a§()).x = _loc7_.x;
                              if(_loc10_ || this)
                              {
                                 _loc8_.y = _loc7_.y;
                                 while(true)
                                 {
                                    _loc8_.type = _loc7_.id;
                                    loop25:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       §§push(_loc3_);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       §§pop().id = §§pop();
                                       loop26:
                                       while(true)
                                       {
                                          if(_loc7_.front)
                                          {
                                             while(true)
                                             {
                                                _loc8_.front = _loc7_.front;
                                                addr539:
                                                while(true)
                                                {
                                                }
                                                addr510:
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr477:
                                                   while(true)
                                                   {
                                                      this.§-`§.push(_loc8_);
                                                      addr482:
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop26;
                                                         }
                                                         §§goto(addr510);
                                                      }
                                                      §§goto(addr539);
                                                   }
                                                   continue loop25;
                                                   addr477:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc8_.angle = _loc7_.angle;
                                             continue loop25;
                                             §§goto(addr539);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr506);
                              §§goto(addr564);
                           }
                           if(_loc10_)
                           {
                              this.§4,§ = _loc2_.slingshotX;
                              if(_loc9_)
                              {
                              }
                           }
                           §§goto(addr421);
                           addr66:
                        }
                        else
                        {
                           §§goto(addr135);
                        }
                     }
                     addr74:
                     addr109:
                     while(!(_loc9_ && _loc3_))
                     {
                        §§goto(addr81);
                     }
                     while(_loc10_ || _loc3_)
                     {
                        if(_loc2_.counts.joints)
                        {
                           §§goto(addr94);
                        }
                        §§goto(addr67);
                        §§goto(addr74);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §,!e§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.LevelExtension = this.§;8§;
            loop0:
            while(true)
            {
               _loc1_.scoreSilver = this.§>4§;
               while(true)
               {
                  _loc1_.scoreGold = this.§=!,§;
                  while(_loc4_)
                  {
                     _loc1_.scoreEagle = this.§9'§;
                     while(_loc4_ || _loc3_)
                     {
                        _loc1_.theme = this.§;!2§;
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.camera = this.§>"8§;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr41);
            }
            §§goto(addr55);
         }
         §§goto(addr103);
      }
      
      public function § %§() : String
      {
         return JSON.stringify(this.§,!e§());
      }
      
      protected function §2!-§(param1:int, param2:Object) : Vector.<§1o§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§1o§ = null;
         var _loc3_:Vector.<§1o§> = new Vector.<§1o§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc9_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc10_)
               {
                  §§push(_loc5_.type == §1o§.§4<§);
                  if(_loc10_)
                  {
                     if(!§§pop())
                     {
                        if(_loc10_)
                        {
                           addr83:
                           §§pop();
                           if(!(_loc9_ && _loc3_))
                           {
                              addr96:
                              if(_loc5_.type == §1o§.§="'§)
                              {
                                 _loc8_ = new §1o§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 addr97:
                                 if(!(_loc9_ && param2))
                                 {
                                    if(_loc5_.type == §1o§.§="'§)
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(_loc10_ || param2)
                                          {
                                             _loc8_.axisY = _loc5_.axisY;
                                             if(_loc10_ || this)
                                             {
                                                addr191:
                                                if(_loc5_.type == §1o§.§`!T§)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                   }
                                                   addr219:
                                                   _loc3_.push(_loc8_);
                                                   _loc4_++;
                                                   continue;
                                                }
                                                §§goto(addr219);
                                                addr176:
                                             }
                                             §§goto(addr219);
                                          }
                                          _loc8_.§%?§ = _loc5_.destroyTimer;
                                          if(_loc10_ || this)
                                          {
                                          }
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr219);
                              }
                              else
                              {
                                 _loc8_ = new §1o§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr83);
               }
               §§goto(addr96);
            }
            §§goto(addr219);
         }
         return _loc3_;
      }
      
      public function §@![§(param1:§-!M§, param2:int) : int
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§`a§ = null;
         var _loc5_:* = null;
         var _loc6_:§8X§ = null;
         if(_loc9_)
         {
            if(!param1)
            {
               if(_loc9_ || _loc3_)
               {
                  addr36:
                  §§push(0);
                  if(!_loc10_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr40:
                  §§push(0);
               }
               var _loc3_:* = §§pop();
               for each(_loc4_ in this.§-`§)
               {
                  §§push(_loc4_.type);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  §§push((_loc6_ = param1.getItem(_loc5_)) == null);
                  if(_loc9_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr80:
                           §§pop();
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(_loc5_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!_loc10_)
                                 {
                                    addr97:
                                    if(§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          addr116:
                                          _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
                                          if(_loc9_ || param1)
                                          {
                                             _loc6_ = param1.getItem(_loc5_);
                                             addr129:
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             if(_loc9_ || this)
                                             {
                                                addr138:
                                                §§push(_loc3_);
                                                if(!_loc10_)
                                                {
                                                   §§push(this.calculateSpawnedObjectScores(param1,_loc5_,param2));
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc9_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr165:
                                                                  addr167:
                                                                  §§push(§§pop() + _loc6_.score);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr170:
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc10_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           addr184:
                                                                           if(isDamageAwardingScore(_loc6_))
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 addr218:
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(_loc6_.healthMax);
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() * param2);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                                  §§push(int(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr165);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr129);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr116);
                           }
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr80);
               }
               return _loc3_;
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      protected function calculateSpawnedObjectScores(param1:§-!M§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §`1§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.mBirds)
            {
               if(_loc1_ || this)
               {
                  §§goto(addr53);
               }
            }
            return 0;
         }
         addr53:
         return this.mBirds.length * this.§,!S§();
      }
      
      public function §,!S§() : int
      {
         return 10000;
      }
      
      public function §>G§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§1U§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(_loc7_ || _loc3_)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               while(true)
               {
                  _loc1_ = §§pop();
                  while(true)
                  {
                     §§push(_loc1_);
                     loop3:
                     while(true)
                     {
                        §§push(" LevelExtension=\"" + this.§;8§);
                        addr246:
                        while(true)
                        {
                           §§push("\"");
                           addr247:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr248:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr249:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr250:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr251:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc6_ && _loc1_)
               {
                  continue;
               }
               _loc1_ = §§pop();
               §§goto(addr230);
            }
         }
         §§goto(addr156);
      }
      
      public function getObject(param1:int) : §`a§
      {
         return this.§-`§[param1];
      }
      
      public function addObject(param1:§`a§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.type == null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  throw new Error("Item type can\'t be null.");
               }
               while(true)
               {
               }
               addr67:
            }
            while(true)
            {
               this.§-`§.push(param1);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr67);
            }
         }
      }
      
      public function §2x§(param1:int) : §1o§
      {
         return this.§ !B§[param1];
      }
      
      public function § !R§(param1:§1o§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ !B§.push(param1);
         }
      }
      
      public function §#!`§(param1:int) : §%![§
      {
         return this.mBirds[param1];
      }
      
      public function §?J§(param1:§%![§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mBirds.push(param1);
         }
      }
      
      public function §%7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>"8§ = new Vector.<§1U§>();
         }
      }
      
      public function § "=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.mBirds = new Vector.<§%![§>();
         }
      }
      
      public function §>2§(param1:int) : §1U§
      {
         return this.§>"8§[param1];
      }
      
      public function §,!Z§(param1:§1U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>"8§.push(param1);
         }
      }
   }
}
