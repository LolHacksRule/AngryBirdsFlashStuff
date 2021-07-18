package §?m§
{
   import §-!_§.§,#Q§;
   import §2"Y§.§"t§;
   import §2"Y§.§,§;
   import §<"B§.§-#'§;
   import §<"B§.§5y§;
   import §<"B§.§94§;
   import flash.geom.Point;
   
   public class §8!B§
   {
      
      public static const §7#M§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §8!B§))
         {
            §7#M§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      protected var §7M§:Number = 0;
      
      protected var §=!F§:Number = -8;
      
      protected var §[9§:Number = 0.0;
      
      protected var §1!b§:Vector.<§94§> = null;
      
      protected var §,!?§:Vector.<§5y§> = null;
      
      protected var §6!Z§:Vector.<§-#'§> = null;
      
      protected var §5#U§:Vector.<§0!§> = null;
      
      public var §+#%§:Number = 0;
      
      public var §^#3§:Boolean = false;
      
      protected var §"H§:int = 0;
      
      protected var §5!?§:int = 0;
      
      protected var § !f§:int = 0;
      
      protected var §"!n§:String = null;
      
      protected var mName:String = null;
      
      public function §8!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            while(true)
            {
               this.§5#U§ = new Vector.<§0!§>();
               loop1:
               while(true)
               {
                  this.§1!b§ = new Vector.<§94§>();
                  addr92:
                  while(true)
                  {
                     this.§,!?§ = new Vector.<§5y§>();
                     continue loop1;
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.§6!Z§ = new Vector.<§-#'§>();
               §§goto(addr62);
            }
         }
         §§goto(addr62);
      }
      
      public static function §`"e§(param1:String) : §8!B§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8!B§ = new §8!B§();
         if(_loc4_ || _loc3_)
         {
            _loc2_.§+!B§(param1);
         }
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§"t§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1.healthMax == -1);
            if(_loc3_)
            {
               §§push(!§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr87);
                     }
                     addr86:
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr86);
         }
         addr87:
         loop3:
         while(true)
         {
            §§push(param1.score > 0);
            if(_loc2_ && §8!B§)
            {
               break;
            }
            if(_loc3_)
            {
               if(!_loc2_)
               {
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        §§push(true);
                        break loop3;
                     }
                     continue loop3;
                  }
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  break;
                  addr58:
               }
               continue loop0;
            }
         }
         return §§pop();
      }
      
      public static function §]c§(param1:String) : §8!B§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§8!B§ = §`"e§(param1);
         if(_loc5_ || param1)
         {
            _loc2_.§7M§ = _loc2_.§,!?§[0].x;
            if(!_loc4_)
            {
               addr38:
               _loc2_.§=!F§ = _loc2_.§,!?§[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() >= _loc2_.§1!b§.length)
                  {
                     if(_loc5_)
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
                  _loc2_.§1!b§[_loc3_].angle = _loc2_.§1!b§[_loc3_].angle;
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr88);
                     }
                  }
               }
               §§goto(addr88);
            }
            return _loc2_;
         }
         §§goto(addr38);
      }
      
      public function get objectCount() : int
      {
         return this.§1!b§.length;
      }
      
      public function get §&"+§() : int
      {
         return this.§6!Z§.length;
      }
      
      public function get §'o§() : int
      {
         return this.§,!?§.length;
      }
      
      public function get §<#I§() : int
      {
         return this.§5#U§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§5!?§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§5!?§ = param1;
         }
      }
      
      public function get scoreSilver() : int
      {
         return this.§ !f§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !f§ = param1;
         }
      }
      
      public function get slingshotX() : Number
      {
         return this.§7M§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7M§ = param1;
         }
      }
      
      public function get slingshotY() : Number
      {
         return this.§=!F§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!F§ = param1;
         }
      }
      
      public function get §0"r§() : Number
      {
         return this.§[9§;
      }
      
      public function set §0"r§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[9§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         return this.§"!n§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"!n§ = param1;
         }
      }
      
      public function getEagleScore(param1:§,#5§, param2:int) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§#"+§(param1,param2));
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§`b§());
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc7_ || this)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               addr54:
               §§push(int(§§pop() + §§pop()));
               §§push(int(§§pop() + §§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               §§push(0);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           addr83:
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(_loc5_);
                              loop2:
                              while(true)
                              {
                                 §§push(this.§"H§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    addr161:
                                    loop0:
                                    while(!§§pop())
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(this.§"H§);
                                          if(_loc7_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(_loc5_);
                                                                  break loop1;
                                                               }
                                                               break loop0;
                                                            }
                                                            addr164:
                                                            while(true)
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      §§push(this.§"H§);
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         break loop1;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr163:
                                                   return §§pop();
                                                   addr122:
                                                }
                                                continue loop3;
                                             }
                                             addr119:
                                          }
                                          break;
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr163);
                                 }
                              }
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr83);
               }
               §§goto(addr122);
            }
            §§goto(addr119);
         }
         §§goto(addr54);
      }
      
      public function §%#S§(param1:int, param2:§,#5§, param3:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(this.§#"+§(param2,param3));
         if(_loc8_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§`b§());
         if(_loc8_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_);
         if(_loc8_ || param2)
         {
            §§push(int(§§pop() + _loc5_));
         }
         var _loc6_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc4_);
            loop0:
            while(true)
            {
               §§push(0);
               addr134:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr135:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr137:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 addr70:
                                 while(true)
                                 {
                                    this.§"H§ = param1;
                                    if(_loc8_ || param2)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 if(_loc8_ || param3)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr70);
                        }
                        addr111:
                     }
                  }
               }
            }
         }
      }
      
      public function §+!B§(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§0!§ = null;
         var _loc5_:Object = null;
         var _loc6_:§5y§ = null;
         var _loc7_:Object = null;
         var _loc8_:§94§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc10_ || param1)
         {
            this.§+#%§ = _loc2_.LevelExtension;
            while(true)
            {
               this.§^#3§ = false;
               addr176:
               while(true)
               {
                  this.§ !f§ = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.§5!?§ = _loc2_.scoreGold;
                     loop3:
                     while(true)
                     {
                        this.§"H§ = _loc2_.scoreEagle;
                        while(true)
                        {
                           this.§"!n§ = _loc2_.theme;
                           continue loop2;
                           addr113:
                           while(!(_loc9_ && param1))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               loop10:
               while(true)
               {
                  this.§5#U§ = new Vector.<§0!§>();
                  loop11:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        this.§,!?§ = new Vector.<§5y§>();
                        while(_loc10_)
                        {
                           if(_loc10_)
                           {
                              this.§1!b§ = new Vector.<§94§>();
                              if(_loc10_ || _loc3_)
                              {
                                 continue loop11;
                              }
                              continue;
                           }
                           §§goto(addr176);
                        }
                        addr140:
                        while(true)
                        {
                           if(!_loc2_.counts.joints)
                           {
                              continue loop10;
                           }
                           while(true)
                           {
                              this.§6!Z§ = this.§["M§(_loc2_.counts.joints,_loc2_.world);
                              §§goto(addr113);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.mName = _loc2_.id;
            §§goto(addr140);
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         if(_loc5_ || this)
         {
            _loc1_.LevelExtension = this.§+#%§;
         }
         loop0:
         while(true)
         {
            _loc1_.scoreSilver = this.§ !f§;
            while(true)
            {
               _loc1_.scoreGold = this.§5!?§;
               addr89:
               while(true)
               {
                  _loc1_.scoreEagle = this.§"H§;
                  continue loop0;
               }
               addr55:
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
               _loc1_.camera = this.§5#U§;
               if(!(_loc4_ && _loc1_))
               {
                  addr44:
                  if(!_loc4_)
                  {
                     if(false)
                     {
                        addr68:
                        while(true)
                        {
                           _loc1_.name = this.mName;
                           addr53:
                           while(!_loc4_)
                           {
                              §§goto(addr55);
                           }
                           continue loop0;
                           §§goto(addr44);
                        }
                        while(_loc5_)
                        {
                           §§goto(addr48);
                        }
                        addr48:
                        §§goto(addr89);
                        addr68:
                     }
                     var _loc2_:* = Number(0);
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc1_.world = new Object();
                     }
                     _loc2_ = Number(0);
                     addr283:
                     if(!(_loc5_ || _loc3_))
                     {
                        §§goto(addr283);
                     }
                     addr202:
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           if(§§pop() >= this.§,!?§.length)
                           {
                              if(!_loc4_)
                              {
                                 addr226:
                                 _loc2_ = Number(0);
                                 if(_loc5_ || this)
                                 {
                                    addr112:
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(§§pop() >= this.§1!b§.length)
                                          {
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                §§push(0);
                                                if(_loc5_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc4_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         if(false)
                                                         {
                                                            addr150:
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                               }
                                                               addr340:
                                                               if(§§pop() < this.§6!Z§.length)
                                                               {
                                                                  _loc3_ = this.§6!Z§[_loc2_].getAsSerializableObject();
                                                                  if(!_loc4_)
                                                                  {
                                                                     _loc3_.index1 = this.§@!r§(_loc3_.index1);
                                                                     _loc3_.index2 = this.§@!r§(_loc3_.index2);
                                                                     addr313:
                                                                     _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
                                                                     addr338:
                                                                     addr331:
                                                                  }
                                                                  addr323:
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr303:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr313);
                                                                              }
                                                                              addr339:
                                                                              §§goto(addr340);
                                                                              §§push(_loc2_);
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  _loc1_.counts = new Object();
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     _loc1_.counts.blocks = this.§1!b§.length;
                                                                     _loc1_.counts.birds = this.§,!?§.length;
                                                                     _loc1_.counts.joints = this.§6!Z§.length;
                                                                     _loc1_.slingshotX = this.§7M§;
                                                                     addr428:
                                                                     addr435:
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           _loc1_.slingshotY = this.§=!F§;
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr428);
                                                                              }
                                                                              return _loc1_;
                                                                              addr382:
                                                                           }
                                                                           §§goto(addr428);
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     addr410:
                                                                     §§goto(addr410);
                                                                     addr362:
                                                                  }
                                                                  §§goto(addr428);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr112);
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                               addr239:
                                                               _loc2_ = Number(§§pop() + 1);
                                                               addr238:
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr202);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr428);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr428);
                                          }
                                          _loc1_.world["block_" + (_loc2_ + 1)] = this.§1!b§[_loc2_].getAsSerializableObject();
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr150);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr340);
                                 }
                                 §§goto(addr428);
                              }
                              §§goto(addr382);
                           }
                           _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,!?§[_loc2_].getAsSerializableObject();
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr238);
                              §§push(_loc2_);
                           }
                           §§goto(addr428);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr68);
               }
               §§goto(addr53);
            }
         }
      }
      
      protected function §@!r§(param1:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() >= this.§1!b§.length)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  loop2:
                  while(_loc3_ && _loc2_)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  continue;
                  addr58:
               }
               else if(this.§1!b§[_loc2_].id == param1)
               {
                  if(_loc4_)
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr89);
               }
               while(true)
               {
                  _loc2_++;
                  §§goto(addr58);
               }
            }
            break;
         }
         if(!(_loc3_ && _loc2_))
         {
            return §§pop();
         }
         addr88:
         return _loc2_;
      }
      
      public function §&"d§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §["M§(param1:int, param2:Object) : Vector.<§-#'§>
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§-#'§ = null;
         var _loc3_:Vector.<§-#'§> = new Vector.<§-#'§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!_loc11_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               if(_loc11_)
               {
                  §§push(int(_loc5_.index1));
                  if(!_loc12_)
                  {
                     _loc8_ = §§pop();
                     addr89:
                     if(_loc11_ || _loc3_)
                     {
                        §§push(int(_loc5_.index2));
                     }
                     _loc10_ = null;
                     if(!(_loc12_ && param1))
                     {
                        §§push(_loc5_.type == §-#'§.§>"z§);
                        if(!_loc12_)
                        {
                           if(!§§pop())
                           {
                              if(_loc11_)
                              {
                                 addr110:
                                 §§pop();
                                 addr134:
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(_loc5_.type == §-#'§.§,"?§);
                                 }
                                 _loc10_ = new §-#'§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(_loc5_.type == §-#'§.§,"?§)
                                    {
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          addr185:
                                          _loc10_.axisX = _loc5_.axisX;
                                          if(!_loc12_)
                                          {
                                             _loc10_.axisY = _loc5_.axisY;
                                             if(_loc11_ || _loc3_)
                                             {
                                                addr226:
                                                if(_loc5_.type == §-#'§.§use §)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                   }
                                                   addr257:
                                                   _loc4_++;
                                                   continue;
                                                }
                                                addr254:
                                                _loc3_.push(_loc10_);
                                                §§goto(addr257);
                                                addr202:
                                             }
                                             _loc10_.annihilationTime = _loc5_.destroyTimer;
                                             if(_loc11_ || this)
                                             {
                                             }
                                          }
                                          §§goto(addr257);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr185);
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr134);
                           }
                           else
                           {
                              _loc10_ = new §-#'§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
                           }
                           §§goto(addr226);
                        }
                     }
                     §§goto(addr110);
                  }
                  _loc9_ = §§pop();
               }
               §§goto(addr89);
            }
            §§goto(addr257);
         }
         return _loc3_;
      }
      
      public function §#"+§(param1:§,#5§, param2:int) : int
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§94§ = null;
         var _loc5_:* = null;
         var _loc6_:§"t§ = null;
         if(_loc10_ || this)
         {
            if(!param1)
            {
               if(!_loc9_)
               {
                  addr37:
                  §§push(0);
                  if(!_loc9_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr41:
                  §§push(0);
               }
               var _loc3_:* = §§pop();
               for each(_loc4_ in this.§1!b§)
               {
                  §§push(_loc4_.type);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  §§push((_loc6_ = param1.getItem(_loc5_)) == null);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              §§push(_loc5_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!_loc9_)
                                 {
                                    addr88:
                                    if(§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       addr97:
                                       _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          _loc6_ = param1.getItem(_loc5_);
                                          addr120:
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(!_loc9_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc9_)
                                             {
                                                §§push(this.§^"$§(param1,_loc5_,param2));
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc3_);
                                                         if(!_loc9_)
                                                         {
                                                            addr163:
                                                            §§push(§§pop() + _loc6_.score);
                                                            if(_loc10_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr174:
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     addr182:
                                                                     if(isDamageAwardingScore(_loc6_))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           addr188:
                                                                           §§push(_loc3_);
                                                                           if(!_loc10_)
                                                                           {
                                                                           }
                                                                           addr214:
                                                                           _loc3_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            addr213:
                                                            §§goto(addr214);
                                                            §§push(int(§§pop()));
                                                         }
                                                         §§push(_loc6_.healthMax);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * param2);
                                                         }
                                                         §§goto(addr213);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr88);
               }
               return _loc3_;
            }
            §§goto(addr41);
         }
         §§goto(addr37);
      }
      
      protected function §^"$§(param1:§,#5§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §`b§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§,!?§)
            {
               if(_loc1_)
               {
                  return this.§,!?§.length * this.§@!C§();
               }
            }
         }
         return 0;
      }
      
      public function §@!C§() : int
      {
         return 10000;
      }
      
      public function §]#N§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§0!§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!_loc6_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc1_);
                     while(true)
                     {
                        §§push(" LevelExtension=\"" + this.§+#%§);
                        addr241:
                        while(true)
                        {
                           §§push("\"");
                           addr242:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr243:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr244:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr245:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr52:
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        addr59:
                        §§push(§§pop() + "<Cameras>");
                        if(!(_loc6_ && this))
                        {
                           addr68:
                           if(!(_loc6_ && this))
                           {
                              if(_loc6_ && this)
                              {
                                 continue loop1;
                              }
                              addr82:
                              _loc1_ = §§pop();
                              if(_loc7_ || _loc1_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       if(false)
                                       {
                                          loop27:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             loop28:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(§§pop() + ">");
                                                         while(_loc7_)
                                                         {
                                                            _loc1_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(_loc7_ || _loc1_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(!(_loc7_ || _loc3_))
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        addr38:
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr45:
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           §§goto(addr52);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(" AutoCamera=\"" + this.§^#3§);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push("\"");
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr229:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr230:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr231:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc1_ = §§pop();
                                                                                                break loop27;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr228:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr229);
                                                                              §§goto(addr45);
                                                                           }
                                                                           §§goto(addr243);
                                                                           addr214:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr180:
                                                                        while(!(_loc6_ && _loc3_))
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           addr211:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr180);
                                                                        }
                                                                        addr180:
                                                                        addr210:
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr188);
                                                               §§goto(addr82);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr214);
                                                            }
                                                            §§goto(addr59);
                                                         }
                                                         while(!(_loc6_ && this))
                                                         {
                                                            §§goto(addr180);
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr230);
                                                         addr121:
                                                         addr172:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr231);
                                                }
                                                addr191:
                                                while(true)
                                                {
                                                   §§push(" scoreSilver=\"" + this.§ !f§);
                                                   addr195:
                                                   while(true)
                                                   {
                                                      §§push("\"");
                                                      addr196:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         while(!_loc6_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            while(!(_loc6_ && _loc1_))
                                                            {
                                                               §§goto(addr210);
                                                               §§push(§§pop());
                                                               §§goto(addr68);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                }
                                             }
                                             §§goto(addr245);
                                          }
                                          while(!_loc6_)
                                          {
                                             §§goto(addr191);
                                             §§push(_loc1_);
                                          }
                                          continue loop2;
                                          addr232:
                                       }
                                       var _loc4_:int = 0;
                                       var _loc5_:* = this.§5#U§;
                                       addr373:
                                       for each(_loc2_ in _loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(" <Camera id=\"" + _loc2_.id);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§§pop() + "\" leftBorder=\"");
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(_loc2_.left);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc7_ || this)
                                                         {
                                                            §§push(§§pop() + "\" rightBorder=\"");
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc2_.right);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr323:
                                                                     §§push(§§pop() + "\" topBorder=\"");
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        addr332:
                                                                        §§push(_loc2_.top);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr344:
                                                                              §§push(§§pop() + "\" bottomBorder=\"");
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr353:
                                                                                 §§push(_loc2_.top);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr360:
                                                                                    §§push(§§pop() + (§§pop() + §,#Q§.§`"!§));
                                                                                    if(_loc7_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() + "\"></Camera>");
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                           }
                                                                           addr372:
                                                                           _loc1_ = §§pop() + §§pop();
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr323);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr372);
                                          }
                                          §§goto(addr373);
                                       }
                                       if(!_loc6_)
                                       {
                                          addr778:
                                          _loc1_ += "</Cameras>";
                                          addr773:
                                          _loc1_ += "<Slingshot x=\"" + this.§,!?§[0].x + "\" y=\"" + (this.§,!?§[0].y - 8) + "\">";
                                          addr731:
                                          _loc1_ += " <Birds>";
                                          addr742:
                                          addr729:
                                          addr771:
                                          addr749:
                                          addr750:
                                          addr759:
                                          addr779:
                                          addr772:
                                          addr776:
                                          addr751:
                                          if(!(_loc6_ && this))
                                          {
                                             addr725:
                                             _loc3_ = 0;
                                             addr628:
                                             addr726:
                                             §§push(_loc3_);
                                             if(!_loc6_)
                                             {
                                                if(§§pop() >= this.§,!?§.length)
                                                {
                                                   addr636:
                                                   if(!_loc6_)
                                                   {
                                                      addr639:
                                                      §§push(_loc1_);
                                                      if(!_loc6_)
                                                      {
                                                         addr643:
                                                         §§push(§§pop() + " </Birds>");
                                                         if(_loc7_ || this)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr653:
                                                               if(_loc7_)
                                                               {
                                                                  addr613:
                                                                  §§push(_loc1_);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        addr619:
                                                                        §§push(§§pop() + "</Slingshot>");
                                                                        if(!(_loc6_ && _loc1_))
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           addr607:
                                                                           _loc3_ = 0;
                                                                           addr627:
                                                                           if(_loc7_)
                                                                           {
                                                                              addr397:
                                                                              §§push(_loc3_);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    if(§§pop() >= this.§1!b§.length)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(_loc7_ || _loc1_)
                                                                                             {
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() + "</Level>");
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        addr473:
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!(_loc7_ || this))
                                                                                                                              {
                                                                                                                                 §§goto(addr627);
                                                                                                                              }
                                                                                                                              return new XML(_loc1_);
                                                                                                                           }
                                                                                                                           _loc3_++;
                                                                                                                           addr604:
                                                                                                                        }
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr397);
                                                                                                                        }
                                                                                                                        §§goto(addr653);
                                                                                                                     }
                                                                                                                     §§goto(addr778);
                                                                                                                  }
                                                                                                                  §§goto(addr619);
                                                                                                               }
                                                                                                               addr579:
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  addr582:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           _loc1_ = §§pop();
                                                                                                                           §§goto(addr604);
                                                                                                                        }
                                                                                                                        §§goto(addr742);
                                                                                                                     }
                                                                                                                     §§goto(addr729);
                                                                                                                  }
                                                                                                                  addr721:
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  _loc3_++;
                                                                                                                  §§goto(addr628);
                                                                                                                  addr722:
                                                                                                               }
                                                                                                               §§goto(addr643);
                                                                                                            }
                                                                                                            §§goto(addr613);
                                                                                                         }
                                                                                                         addr499:
                                                                                                         §§push("<Item id=\"" + this.§1!b§[_loc3_].type);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push("\" x=\"");
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.§1!b§[_loc3_].x);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr522:
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push("\" y=\"");
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc7_ || _loc1_)
                                                                                                                           {
                                                                                                                              addr535:
                                                                                                                              §§push(§§pop() + this.§1!b§[_loc3_].y);
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + "\" rotation=\"");
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       addr554:
                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + this.§1!b§[_loc3_].angle);
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                addr576:
                                                                                                                                                §§push(§§pop() + "\" ></Item>");
                                                                                                                                             }
                                                                                                                                             §§goto(addr579);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr771);
                                                                                                                                       }
                                                                                                                                       addr719:
                                                                                                                                       §§goto(addr721);
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr576);
                                                                                                                                 }
                                                                                                                                 addr717:
                                                                                                                                 §§goto(addr719);
                                                                                                                                 §§push(§§pop() + "\"></Bird>");
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        addr699:
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§goto(addr717);
                                                                                                                                 §§push(§§pop() + this.§,!?§[_loc3_].y);
                                                                                                                              }
                                                                                                                              §§goto(addr749);
                                                                                                                           }
                                                                                                                           §§goto(addr717);
                                                                                                                        }
                                                                                                                        §§goto(addr750);
                                                                                                                     }
                                                                                                                     addr691:
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr699);
                                                                                                                        §§push("\" y=\"");
                                                                                                                     }
                                                                                                                     §§goto(addr759);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr535);
                                                                                                            }
                                                                                                            addr682:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr685:
                                                                                                               §§goto(addr691);
                                                                                                               §§push(§§pop() + this.§,!?§[_loc3_].x);
                                                                                                            }
                                                                                                            §§goto(addr717);
                                                                                                         }
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      §§goto(addr582);
                                                                                                   }
                                                                                                   §§goto(addr779);
                                                                                                }
                                                                                                §§goto(addr778);
                                                                                             }
                                                                                             §§goto(addr582);
                                                                                          }
                                                                                          §§goto(addr627);
                                                                                       }
                                                                                       §§goto(addr473);
                                                                                    }
                                                                                    §§goto(addr499);
                                                                                    §§push(_loc1_);
                                                                                 }
                                                                                 §§goto(addr628);
                                                                              }
                                                                              §§goto(addr607);
                                                                           }
                                                                           §§goto(addr636);
                                                                        }
                                                                        §§goto(addr772);
                                                                     }
                                                                     §§goto(addr776);
                                                                  }
                                                                  §§goto(addr639);
                                                               }
                                                               §§goto(addr726);
                                                            }
                                                            §§goto(addr731);
                                                         }
                                                         §§goto(addr554);
                                                      }
                                                      addr663:
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push("  <Bird id=\"" + this.§,!?§[_loc3_].type);
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr682);
                                                               §§push("\" x=\"");
                                                            }
                                                            §§goto(addr751);
                                                         }
                                                         §§goto(addr685);
                                                      }
                                                      §§goto(addr773);
                                                   }
                                                   §§goto(addr722);
                                                }
                                                §§goto(addr663);
                                                §§push(_loc1_);
                                             }
                                             §§goto(addr725);
                                          }
                                          addr774:
                                          §§goto(addr774);
                                       }
                                       §§goto(addr604);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr121);
                     }
                  }
               }
            }
         }
         §§goto(addr246);
      }
      
      public function getObject(param1:int) : §94§
      {
         return this.§1!b§[param1];
      }
      
      public function addObject(param1:§94§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1.type == null)
            {
               if(!(_loc3_ && this))
               {
                  throw new Error("Item type can\'t be null.");
               }
               while(true)
               {
               }
               addr71:
            }
            while(true)
            {
               this.§1!b§.push(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr71);
            }
         }
      }
      
      public function §0#V§(param1:int) : §-#'§
      {
         return this.§6!Z§[param1];
      }
      
      public function §@"_§(param1:§-#'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6!Z§.push(param1);
         }
      }
      
      public function §+§(param1:int) : §5y§
      {
         return this.§,!?§[param1];
      }
      
      public function §0#T§(param1:§5y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,!?§.push(param1);
         }
      }
      
      public function §[!=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5#U§ = new Vector.<§0!§>();
         }
      }
      
      public function §=F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!?§ = new Vector.<§5y§>();
         }
      }
      
      public function §^#'§(param1:int) : §0!§
      {
         return this.§5#U§[param1];
      }
      
      public function §'!h§(param1:§0!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5#U§.push(param1);
         }
      }
   }
}
