package §%!B§
{
   import §#!I§.§0k§;
   import §%8§.§4O§;
   import §%8§.§@-§;
   import §0N§.§ i§;
   import §0N§.§,!A§;
   import §0N§.§-C§;
   import flash.geom.Point;
   
   public class §5L§
   {
      
      public static const §<!U§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!U§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      protected var §4]§:Number = 0;
      
      protected var §;!f§:Number = -8;
      
      protected var §<;§:Number = 0.0;
      
      protected var §-"2§:Vector.<§,!A§> = null;
      
      protected var §&]§:Vector.<§ i§> = null;
      
      protected var §>]§:Vector.<§-C§> = null;
      
      protected var §9S§:Vector.<§9"2§> = null;
      
      public var §5!r§:Number = 0;
      
      public var §+"-§:Boolean = false;
      
      protected var §1!2§:int = 0;
      
      protected var §3!L§:int = 0;
      
      protected var §,b§:int = 0;
      
      protected var §3?§:String = null;
      
      protected var mName:String = null;
      
      public function §5L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§9S§ = new Vector.<§9"2§>();
            }
            addr107:
         }
         while(true)
         {
            this.§-"2§ = new Vector.<§,!A§>();
            loop2:
            for(; !(_loc2_ && _loc1_); if(_loc2_ && _loc2_)
            {
               continue;
            },§§goto(addr61))
            {
               if(_loc1_)
               {
                  this.§&]§ = new Vector.<§ i§>();
                  loop3:
                  while(true)
                  {
                     this.§>]§ = new Vector.<§-C§>();
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                        addr61:
                        this.§3?§ = §<!U§;
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop2;
                  }
               }
               else
               {
                  §§goto(addr107);
               }
            }
         }
      }
      
      public static function §&!3§(param1:String) : §5L§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5L§ = new §5L§();
         if(_loc3_)
         {
            _loc2_.§&!s§(param1);
         }
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§@-§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1.healthMax == -1);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr67:
                           §§push(true);
                        }
                        else
                        {
                           if(!_loc2_)
                           {
                              addr25:
                              §§push(false);
                              if(!(_loc2_ && param1))
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    §§pop();
                                 }
                              }
                              §§goto(addr68);
                           }
                           while(true)
                           {
                              §§push(param1.score > 0);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        addr68:
                        return §§pop();
                     }
                     §§goto(addr25);
                  }
                  return §§pop();
                  addr63:
               }
               §§goto(addr91);
            }
         }
         §§goto(addr67);
      }
      
      public static function §""4§(param1:String) : §5L§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§5L§ = §&!3§(param1);
         if(_loc4_ || §5L§)
         {
            _loc2_.§4]§ = _loc2_.§&]§[0].x;
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.§;!f§ = _loc2_.§&]§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && §5L§))
            {
               if(!(_loc5_ && param1))
               {
                  if(§§pop() >= _loc2_.§-"2§.length)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc2_.§-"2§[_loc3_].angle = _loc2_.§-"2§[_loc3_].angle;
                  }
                  addr109:
                  §§push(_loc3_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr109);
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§-"2§.length;
      }
      
      public function get §7!f§() : int
      {
         return this.§>]§.length;
      }
      
      public function get §>s§() : int
      {
         return this.§&]§.length;
      }
      
      public function get §5!i§() : int
      {
         return this.§9S§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§3!L§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§3!L§ = param1;
         }
      }
      
      public function get scoreSilver() : int
      {
         return this.§,b§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,b§ = param1;
         }
      }
      
      public function get slingshotX() : Number
      {
         return this.§4]§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4]§ = param1;
         }
      }
      
      public function get slingshotY() : Number
      {
         return this.§;!f§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!f§ = param1;
         }
      }
      
      public function get set() : Number
      {
         return this.§<;§;
      }
      
      public function set set(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<;§ = param1;
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
         if(!(_loc2_ && _loc2_))
         {
            this.mName = param1;
         }
      }
      
      public function get §7!H§() : Boolean
      {
         return true;
      }
      
      public function get §@[§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§3?§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3?§ = param1;
         }
      }
      
      public function getEagleScore(param1:§4O§, param2:int) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§=U§(param1,param2));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§+!0§());
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               addr44:
               §§push(int(§§pop() + §§pop()));
               §§push(int(§§pop() + §§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           §§pop();
                           if(_loc7_)
                           {
                              §§push(_loc5_);
                              while(true)
                              {
                                 §§push(this.§1!2§);
                                 addr123:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    §§goto(addr124);
                                 }
                              }
                           }
                           §§goto(addr115);
                        }
                     }
                  }
                  addr124:
                  §§goto(addr143);
               }
               §§goto(addr123);
            }
            addr143:
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(_loc5_);
                     break;
                  }
                  while(true)
                  {
                  }
                  addr144:
               }
               while(true)
               {
                  §§push(this.§1!2§);
                  if(!(_loc7_ || this))
                  {
                     break;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc7_)
                        {
                           addr115:
                           §§push(_loc5_);
                           break;
                        }
                        if(_loc6_)
                        {
                           §§goto(addr144);
                        }
                     }
                     §§push(this.§1!2§);
                     if(_loc6_ && param1)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
                  continue loop4;
               }
               return §§pop();
               continue loop4;
            }
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public function §7"0§(param1:int, param2:§4O§, param3:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(this.§=U§(param2,param3));
         if(_loc7_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§+!0§());
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_);
         if(!_loc8_)
         {
            §§push(int(§§pop() + _loc5_));
         }
         var _loc6_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc4_);
            loop0:
            while(true)
            {
               §§push(0);
               addr106:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc8_ && this))
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(!§§pop())
                        {
                           do
                           {
                              this.§1!2§ = param1;
                              if(_loc7_)
                              {
                                 if(!_loc8_)
                                 {
                                    return;
                                 }
                                 break loop2;
                              }
                           }
                           while(_loc7_ || param3);
                           
                           continue loop0;
                           addr85:
                           §§push(§§pop() < §§pop());
                           if(!(_loc8_ && param1))
                           {
                              continue;
                           }
                           addr126:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr85);
                           }
                           addr126:
                        }
                        return;
                        addr93:
                     }
                  }
                  §§goto(addr126);
               }
            }
            addr105:
         }
         while(true)
         {
            §§push(_loc6_);
            if(_loc7_ || param2)
            {
               §§push(param1);
               if(_loc7_ || param3)
               {
                  §§goto(addr85);
               }
               else
               {
                  §§goto(addr106);
               }
            }
            else
            {
               §§goto(addr105);
            }
            §§goto(addr106);
            §§goto(addr126);
         }
      }
      
      public function §&!s§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:§9"2§ = null;
         var _loc5_:Object = null;
         var _loc6_:§ i§ = null;
         var _loc7_:Object = null;
         var _loc8_:§,!A§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc9_)
         {
            this.§5!r§ = _loc2_.LevelExtension;
            while(true)
            {
               this.§+"-§ = false;
            }
            addr160:
         }
         while(true)
         {
            this.§,b§ = _loc2_.scoreSilver;
            loop2:
            while(true)
            {
               this.§3!L§ = _loc2_.scoreGold;
               loop3:
               while(_loc9_)
               {
                  this.§1!2§ = _loc2_.scoreEagle;
                  loop4:
                  while(true)
                  {
                     this.§3?§ = _loc2_.theme;
                     while(true)
                     {
                        this.mName = _loc2_.id;
                        continue loop4;
                        addr83:
                        if(_loc9_ || param1)
                        {
                           while(true)
                           {
                              this.§&]§ = new Vector.<§ i§>();
                              do
                              {
                                 this.§-"2§ = new Vector.<§,!A§>();
                              }
                              while(_loc10_);
                              
                              if(_loc9_)
                              {
                                 continue;
                              }
                              loop10:
                              while(!_loc10_)
                              {
                                 addr76:
                                 if(!(_loc10_ && this))
                                 {
                                    §§goto(addr83);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§>]§ = this.§[""§(_loc2_.counts.joints,_loc2_.world);
                                       break loop10;
                                       §§goto(addr76);
                                    }
                                    addr96:
                                 }
                              }
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc10_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§9S§ = new Vector.<§9"2§>();
                                    §§goto(addr74);
                                 }
                              }
                              addr74:
                              continue loop3;
                           }
                           continue loop2;
                           addr59:
                        }
                     }
                  }
               }
               §§goto(addr160);
            }
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         if(_loc5_)
         {
            _loc1_.LevelExtension = this.§5!r§;
            while(true)
            {
               _loc1_.scoreSilver = this.§,b§;
               while(!_loc4_)
               {
                  _loc1_.scoreGold = this.§3!L§;
                  addr63:
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     _loc1_.name = this.mName;
                     do
                     {
                        _loc1_.camera = this.§9S§;
                     }
                     while(!_loc5_);
                     
                     if(_loc5_ || _loc1_)
                     {
                        if(_loc5_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           var _loc2_:* = Number(0);
                           if(_loc5_ || _loc1_)
                           {
                              _loc1_.world = new Object();
                              _loc2_ = Number(0);
                              addr293:
                              if(_loc4_)
                              {
                                 §§goto(addr293);
                              }
                           }
                           addr214:
                           if(_loc2_ >= this.§&]§.length)
                           {
                              addr231:
                              §§push(Number(0));
                              if(!(_loc4_ && _loc1_))
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr107:
                                    §§push(_loc2_);
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(§§pop() >= this.§-"2§.length)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(0);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      addr140:
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr154:
                                                                  §§push(_loc2_);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr174:
                                                                           _loc2_ = Number(§§pop());
                                                                           addr173:
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§goto(addr107);
                                                                           }
                                                                           _loc1_.counts.birds = this.§&]§.length;
                                                                           _loc1_.counts.joints = this.§>]§.length;
                                                                           addr431:
                                                                           addr460:
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc1_.slingshotX = this.§4]§;
                                                                                 _loc1_.slingshotY = this.§;!f§;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!(_loc5_ || _loc2_))
                                                                                    {
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    return _loc1_;
                                                                                 }
                                                                                 addr423:
                                                                                 §§goto(addr423);
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                           addr453:
                                                                           §§goto(addr453);
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     addr259:
                                                                     _loc2_ = Number(§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr214);
                                                                     }
                                                                     §§goto(addr174);
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               addr374:
                                                               if(_loc2_ < this.§>]§.length)
                                                               {
                                                                  _loc3_ = this.§>]§[_loc2_].getAsSerializableObject();
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     _loc3_.index1 = this.§;!5§(_loc3_.index1);
                                                                     _loc3_.index2 = this.§;!5§(_loc3_.index2);
                                                                     addr359:
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        addr334:
                                                                        _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           _loc2_ = §§pop();
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr334);
                                                                           addr351:
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     addr373:
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               if(_loc4_ && _loc3_)
                                                               {
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            _loc1_.counts = new Object();
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               _loc1_.counts.blocks = this.§-"2§.length;
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr374);
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr174);
                                          }
                                          _loc1_.world["block_" + (_loc2_ + 1)] = this.§-"2§[_loc2_].getAsSerializableObject();
                                          if(_loc5_ || _loc1_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                §§goto(addr154);
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr374);
                           }
                           _loc1_.world["bird_" + (_loc2_ + 1)] = this.§&]§[_loc2_].getAsSerializableObject();
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§goto(addr259);
                                 §§push(§§pop() + 1);
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr174);
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_.theme = this.§3?§;
                              break loop5;
                           }
                           addr76:
                        }
                     }
                     break;
                  }
                  while(!(_loc4_ && _loc1_))
                  {
                     §§goto(addr63);
                     §§goto(addr45);
                  }
                  addr45:
                  while(true)
                  {
                     _loc1_.scoreEagle = this.§1!2§;
                     §§goto(addr76);
                     §§goto(addr56);
                  }
                  addr56:
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function §;!5§(param1:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= this.§-"2§.length)
                  {
                     if(_loc4_ || this)
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
                     addr53:
                  }
                  else if(this.§-"2§[_loc2_].id == param1)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§goto(addr88);
                     }
                     §§goto(addr89);
                  }
                  while(true)
                  {
                     _loc2_++;
                     §§goto(addr53);
                  }
               }
               addr88:
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §5V§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §[""§(param1:int, param2:Object) : Vector.<§-C§>
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:§-C§ = null;
         var _loc3_:Vector.<§-C§> = new Vector.<§-C§>();
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
               if(!_loc12_)
               {
                  §§push(int(_loc5_.index1));
                  if(!(_loc12_ && this))
                  {
                     _loc8_ = §§pop();
                     if(!(_loc12_ && this))
                     {
                        addr93:
                        _loc9_ = _loc5_.index2;
                     }
                     _loc10_ = null;
                     if(!_loc12_)
                     {
                        §§push(_loc5_.type == §-C§.§6`§);
                        if(_loc11_)
                        {
                           if(!§§pop())
                           {
                              if(_loc11_ || param2)
                              {
                                 §§pop();
                                 addr139:
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(_loc5_.type == §-C§.§0g§);
                                 }
                                 _loc10_ = new §-C§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                                 if(_loc11_ || param2)
                                 {
                                    if(_loc5_.type == §-C§.§0g§)
                                    {
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          addr190:
                                          _loc10_.axisX = _loc5_.axisX;
                                          if(_loc11_ || _loc3_)
                                          {
                                             _loc10_.axisY = _loc5_.axisY;
                                             if(_loc11_ || param1)
                                             {
                                                addr236:
                                                if(_loc5_.type == §-C§.§-!R§)
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      addr248:
                                                      _loc10_.annihilationTime = _loc5_.destroyTimer;
                                                      if(_loc12_)
                                                      {
                                                      }
                                                      addr267:
                                                      _loc4_++;
                                                      continue;
                                                   }
                                                }
                                                _loc3_.push(_loc10_);
                                                §§goto(addr267);
                                                addr212:
                                             }
                                             §§goto(addr267);
                                          }
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr190);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           §§goto(addr139);
                        }
                        else
                        {
                           _loc10_ = new §-C§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr248);
         }
         return _loc3_;
      }
      
      public function §=U§(param1:§4O§, param2:int) : int
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:§,!A§ = null;
         var _loc5_:* = null;
         var _loc6_:§@-§ = null;
         if(!(_loc9_ && _loc3_))
         {
            if(!param1)
            {
               if(_loc10_ || _loc3_)
               {
                  addr42:
                  §§push(0);
                  if(!_loc9_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  §§push(0);
               }
               var _loc3_:* = §§pop();
               for each(_loc4_ in this.§-"2§)
               {
                  §§push(_loc4_.type);
                  if(_loc10_)
                  {
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  §§push((_loc6_ = param1.§1!e§(_loc5_)) == null);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && param2))
                        {
                           §§pop();
                           if(_loc10_)
                           {
                              §§push(_loc5_);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§§pop().indexOf("MISC_") == 0);
                                 if(!(_loc9_ && param1))
                                 {
                                    addr108:
                                    if(§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       addr127:
                                       _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
                                       if(!_loc9_)
                                       {
                                          _loc6_ = param1.§1!e§(_loc5_);
                                          addr135:
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(_loc10_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(this.§#"-§(param1,_loc5_,param2));
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc10_ || param1)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr178:
                                                            §§push(_loc3_);
                                                            if(_loc10_)
                                                            {
                                                               addr181:
                                                               §§push(§§pop() + _loc6_.score);
                                                               if(_loc10_ || this)
                                                               {
                                                                  addr191:
                                                                  §§push(int(§§pop()));
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     addr199:
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        addr207:
                                                                        if(isDamageAwardingScore(_loc6_))
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr218:
                                                                              §§push(_loc3_);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 addr226:
                                                                                 §§push(_loc6_.healthMax);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() * param2);
                                                                                 }
                                                                                 §§push(int(§§pop() + §§pop()));
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr207);
                              }
                           }
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr207);
               }
               return _loc3_;
            }
            §§goto(addr46);
         }
         §§goto(addr42);
      }
      
      protected function §#"-§(param1:§4O§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §+!0§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§&]§)
            {
               if(!_loc1_)
               {
                  §§goto(addr49);
               }
            }
            return 0;
         }
         addr49:
         return this.§&]§.length * this.§^D§();
      }
      
      public function §^D§() : int
      {
         return 10000;
      }
      
      public function §<^§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§9"2§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc1_);
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               addr265:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr266:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(" LevelExtension=\"" + this.§5!r§);
                        while(true)
                        {
                           §§push("\"");
                           addr257:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr258:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr259:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                           }
                        }
                        addr256:
                     }
                     addr260:
                     while(true)
                     {
                        _loc1_ = §§pop();
                     }
                  }
               }
               addr206:
               if(!(_loc7_ || this))
               {
                  continue;
               }
               _loc1_ = §§pop();
               loop22:
               while(true)
               {
                  §§push(_loc1_);
                  loop23:
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        §§push(" scoreGold=\"" + this.§3!L§);
                        if(!(_loc6_ && this))
                        {
                           if(!(_loc6_ && this))
                           {
                              §§push("\"");
                              if(!_loc6_)
                              {
                                 addr137:
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       addr152:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop24:
                                                for(; _loc7_ || _loc1_; while(_loc7_ || _loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   §§goto(addr111);
                                                })
                                                {
                                                   §§push(§§pop());
                                                   loop25:
                                                   for(; _loc7_ || this; while(true)
                                                   {
                                                      if(!(_loc6_ && _loc1_))
                                                      {
                                                         continue loop23;
                                                      }
                                                      continue loop25;
                                                   },continue loop23)
                                                   {
                                                      _loc1_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  continue loop25;
                                                                  addr76:
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  var _loc4_:int = 0;
                                                                  var _loc5_:* = this.§9S§;
                                                                  addr398:
                                                                  for each(_loc2_ in _loc5_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(" <Camera id=\"" + _loc2_.id);
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              §§push(§§pop() + "\" leftBorder=\"");
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§push(_loc2_.left);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + "\" rightBorder=\"");
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(_loc2_.right);
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             addr330:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() + "\" topBorder=\"");
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§push(_loc2_.top);
                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         addr359:
                                                                                                         §§push(§§pop() + "\" bottomBorder=\"");
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                         }
                                                                                                         _loc1_ = §§pop() + (§§pop() + "\"></Camera>");
                                                                                                         addr383:
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr383);
                                                                                                   }
                                                                                                   addr372:
                                                                                                   §§push(§§pop() + (§§pop() + §0k§.§,s§));
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr383);
                                                                                                }
                                                                                                §§push(_loc2_.top);
                                                                                                if(_loc7_ || _loc3_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                          §§goto(addr372);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     addr793:
                                                                     _loc1_ += "</Cameras>";
                                                                     _loc1_ += "<Slingshot x=\"" + this.§&]§[0].x + "\" y=\"" + (this.§&]§[0].y - 8) + "\">";
                                                                     addr791:
                                                                     addr794:
                                                                  }
                                                                  addr753:
                                                                  _loc1_ += " <Birds>";
                                                                  addr745:
                                                                  _loc3_ = 0;
                                                                  addr746:
                                                                  addr751:
                                                                  addr754:
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr644:
                                                                     §§push(_loc3_);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(§§pop() >= this.§&]§.length)
                                                                        {
                                                                           addr652:
                                                                           §§push(_loc1_);
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              addr662:
                                                                              _loc1_ = §§pop() + " </Birds>";
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr633:
                                                                                       §§push(_loc1_ + "</Slingshot>");
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          addr641:
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr620:
                                                                                             _loc3_ = 0;
                                                                                             addr621:
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                addr412:
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(§§pop() >= this.§-"2§.length)
                                                                                                      {
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + "</Level>");
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       §§goto(addr471);
                                                                                                                                    }
                                                                                                                                    §§goto(addr793);
                                                                                                                                 }
                                                                                                                                 addr734:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    _loc3_++;
                                                                                                                                    addr677:
                                                                                                                                    §§goto(addr644);
                                                                                                                                    addr742:
                                                                                                                                 }
                                                                                                                                 §§goto(addr791);
                                                                                                                              }
                                                                                                                              §§goto(addr662);
                                                                                                                           }
                                                                                                                           addr586:
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr596:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       §§goto(addr606);
                                                                                                                                    }
                                                                                                                                    §§goto(addr734);
                                                                                                                                 }
                                                                                                                                 §§goto(addr652);
                                                                                                                              }
                                                                                                                              §§goto(addr793);
                                                                                                                           }
                                                                                                                           §§goto(addr633);
                                                                                                                        }
                                                                                                                        §§goto(addr793);
                                                                                                                     }
                                                                                                                     §§goto(addr751);
                                                                                                                  }
                                                                                                                  §§goto(addr633);
                                                                                                               }
                                                                                                               §§goto(addr596);
                                                                                                            }
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                         addr471:
                                                                                                         if(_loc6_ && _loc1_)
                                                                                                         {
                                                                                                            addr606:
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     _loc3_++;
                                                                                                                     addr481:
                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr412);
                                                                                                                     }
                                                                                                                     §§goto(addr641);
                                                                                                                  }
                                                                                                                  §§goto(addr746);
                                                                                                               }
                                                                                                               §§goto(addr652);
                                                                                                            }
                                                                                                            §§goto(addr621);
                                                                                                         }
                                                                                                         return new XML(_loc1_);
                                                                                                      }
                                                                                                      §§push(_loc1_);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push("<Item id=\"" + this.§-"2§[_loc3_].type);
                                                                                                            if(_loc7_ || _loc1_)
                                                                                                            {
                                                                                                               if(_loc7_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push("\" x=\"");
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr524:
                                                                                                                        §§push(§§pop() + this.§-"2§[_loc3_].x);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push("\" y=\"");
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + this.§-"2§[_loc3_].y);
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + "\" rotation=\"");
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr568:
                                                                                                                                                   §§push(§§pop() + this.§-"2§[_loc3_].angle);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr578:
                                                                                                                                                      §§push(§§pop() + "\" ></Item>");
                                                                                                                                                      if(_loc7_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr586);
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + this.§&]§[_loc3_].y);
                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr732:
                                                                                                                                                            §§goto(addr734);
                                                                                                                                                            §§push(§§pop() + (§§pop() + "\"></Bird>"));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr732);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr793);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr578);
                                                                                                                                             }
                                                                                                                                             addr714:
                                                                                                                                             §§goto(addr578);
                                                                                                                                             §§push(§§pop() + "\" y=\"");
                                                                                                                                          }
                                                                                                                                          §§goto(addr578);
                                                                                                                                       }
                                                                                                                                       §§goto(addr568);
                                                                                                                                    }
                                                                                                                                    §§goto(addr793);
                                                                                                                                 }
                                                                                                                                 §§goto(addr714);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr793);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr568);
                                                                                                                  }
                                                                                                                  addr692:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     addr700:
                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr714);
                                                                                                                        §§push(§§pop() + this.§&]§[_loc3_].x);
                                                                                                                     }
                                                                                                                     §§goto(addr793);
                                                                                                                  }
                                                                                                                  §§goto(addr714);
                                                                                                               }
                                                                                                               §§goto(addr732);
                                                                                                            }
                                                                                                            §§goto(addr524);
                                                                                                         }
                                                                                                         addr682:
                                                                                                         §§push("  <Bird id=\"" + this.§&]§[_loc3_].type);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§goto(addr692);
                                                                                                            §§push("\" x=\"");
                                                                                                         }
                                                                                                         §§goto(addr700);
                                                                                                      }
                                                                                                      §§goto(addr596);
                                                                                                   }
                                                                                                   §§goto(addr644);
                                                                                                }
                                                                                                §§goto(addr620);
                                                                                             }
                                                                                             §§goto(addr662);
                                                                                          }
                                                                                          §§goto(addr794);
                                                                                       }
                                                                                       §§goto(addr753);
                                                                                    }
                                                                                    §§goto(addr754);
                                                                                 }
                                                                                 §§goto(addr742);
                                                                              }
                                                                              §§goto(addr677);
                                                                           }
                                                                           §§goto(addr793);
                                                                        }
                                                                        §§goto(addr682);
                                                                        §§push(_loc1_);
                                                                     }
                                                                     §§goto(addr745);
                                                                  }
                                                                  addr789:
                                                                  §§goto(addr789);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr261:
                                                            }
                                                            §§push(_loc1_);
                                                            break loop25;
                                                         }
                                                         break;
                                                         addr62:
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            continue loop22;
                                                         }
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         while(true)
                                                         {
                                                            §§push(" scoreSilver=\"" + this.§,b§);
                                                            addr191:
                                                            while(_loc7_ || _loc1_)
                                                            {
                                                               §§push("\"");
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr200:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     break loop24;
                                                                  }
                                                               }
                                                            }
                                                            addr230:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr231:
                                                               while(_loc7_)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(!(_loc6_ && this))
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            addr41:
                                                            if(!(_loc7_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() + "<Cameras>");
                                                            if(_loc6_)
                                                            {
                                                               continue loop24;
                                                            }
                                                            addr52:
                                                            if(!(_loc6_ && this))
                                                            {
                                                               _loc1_ = §§pop();
                                                               if(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(!(_loc7_ || _loc2_))
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     §§goto(addr41);
                                                                     §§goto(addr52);
                                                                  }
                                                                  §§goto(addr231);
                                                                  addr111:
                                                               }
                                                               §§goto(addr62);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(" AutoCamera=\"" + this.§+"-§);
                                                      addr221:
                                                      while(!(_loc6_ && this))
                                                      {
                                                         §§push("\"");
                                                         while(true)
                                                         {
                                                            §§goto(addr230);
                                                            §§goto(addr137);
                                                         }
                                                      }
                                                      §§goto(addr258);
                                                      §§goto(addr172);
                                                   }
                                                   addr172:
                                                }
                                                while(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   while(!_loc6_)
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr265);
                                             }
                                             break;
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr204);
                     if(!(_loc7_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr103);
                     §§push(§§pop() + ">");
                  }
                  §§goto(addr256);
               }
            }
         }
         §§goto(addr261);
      }
      
      public function getObject(param1:int) : §,!A§
      {
         return this.§-"2§[param1];
      }
      
      public function §&w§(param1:§,!A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.type != null)
            {
               loop0:
               while(true)
               {
                  this.§-"2§.push(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  addr62:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  return;
               }
            }
            throw new Error("Item type can\'t be null.");
         }
         §§goto(addr62);
      }
      
      public function §-"1§(param1:int) : §-C§
      {
         return this.§>]§[param1];
      }
      
      public function §?!w§(param1:§-C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>]§.push(param1);
         }
      }
      
      public function §`!^§(param1:int) : § i§
      {
         return this.§&]§[param1];
      }
      
      public function §'"&§(param1:§ i§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§&]§.push(param1);
         }
      }
      
      public function §;!x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9S§ = new Vector.<§9"2§>();
         }
      }
      
      public function §5>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§&]§ = new Vector.<§ i§>();
         }
      }
      
      public function §@"!§(param1:int) : §9"2§
      {
         return this.§9S§[param1];
      }
      
      public function § !O§(param1:§9"2§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§9S§.push(param1);
         }
      }
   }
}
