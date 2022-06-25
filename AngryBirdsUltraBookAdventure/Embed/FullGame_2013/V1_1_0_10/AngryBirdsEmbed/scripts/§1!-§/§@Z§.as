package §1!-§
{
   import §2k§.§`n§;
   import §6A§.§ !§;
   import §8§.*;
   import §^!L§.§6<§;
   import §^!L§.each;
   import §^G§.§#H§;
   import §^G§.§;u§;
   import §^G§.§`8§;
   import flash.geom.Point;
   
   public class §@Z§
   {
      
      public static const §try§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §@Z§))
         {
            §try§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §!N§:Number = 0;
      
      public var §#!4§:Number = -8;
      
      protected var §+q§:Vector.<§;u§> = null;
      
      protected var §,B§:Vector.<§#H§> = null;
      
      protected var §]J§:Vector.<§`8§> = null;
      
      protected var §5m§:Vector.<§5>§> = null;
      
      public var §!x§:int = 0;
      
      public var §4!6§:int = 0;
      
      private var §#=§:int = 0;
      
      protected var §@t§:String = null;
      
      public var mName:String = null;
      
      public function §@Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            this.§5m§ = new Vector.<§5>§>();
            if(_loc2_)
            {
               this.§+q§ = new Vector.<§;u§>();
               if(!(_loc1_ && this))
               {
                  this.§,B§ = new Vector.<§#H§>();
                  if(!_loc1_)
                  {
                     addr75:
                     this.§]J§ = new Vector.<§`8§>();
                     if(!_loc1_)
                     {
                        addr83:
                        this.§@t§ = §try§;
                     }
                  }
                  return;
               }
               §§goto(addr75);
            }
         }
         §§goto(addr83);
      }
      
      public static function §[e§(param1:String) : §@Z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@Z§ = new §@Z§();
         if(_loc3_ || _loc3_)
         {
            _loc2_.§29§(param1);
         }
         return _loc2_;
      }
      
      public static function §'<§(param1:each) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.§@%§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(each.§,U§);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc3_ || §@Z§)
                           {
                              addr67:
                              §§push(param1.§@%§);
                              if(_loc3_)
                              {
                                 §§push(each.§`V§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc3_)
                                    {
                                       addr88:
                                       addr89:
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          addr106:
                                          if(_loc3_)
                                          {
                                             addr97:
                                             §§push(param1.§@%§ == each.§9R§);
                                          }
                                          §§push(true);
                                          if(!_loc2_)
                                          {
                                             §§goto(addr109);
                                          }
                                          else
                                          {
                                             §§goto(addr111);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             §§goto(addr106);
                                          }
                                          else
                                          {
                                             addr110:
                                             §§push(false);
                                          }
                                          addr111:
                                          return §§pop();
                                       }
                                       §§goto(addr110);
                                    }
                                    addr109:
                                    return §§pop();
                                 }
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr67);
      }
      
      public static function §^&§(param1:String) : §@Z§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§@Z§ = §[e§(param1);
         if(_loc4_)
         {
            _loc2_.§!N§ = _loc2_.§,B§[0].x;
            if(_loc4_)
            {
               _loc2_.§#!4§ = _loc2_.§,B§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < _loc2_.§+q§.length)
            {
               _loc2_.§+q§[_loc3_].angle = 360 - _loc2_.§+q§[_loc3_].angle;
               if(_loc5_)
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc4_ || §@Z§)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
               }
               §§push(Number(§§pop()));
               if(!_loc5_)
               {
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return _loc2_;
         }
      }
      
      protected static function §@f§(param1:int, param2:Object) : Vector.<§`8§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§`8§ = null;
         var _loc3_:Vector.<§`8§> = new Vector.<§`8§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!(_loc9_ || _loc3_))
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc5_.type == §`8§.§12§);
                  if(_loc9_ || param2)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && §@Z§))
                        {
                           addr112:
                           §§pop();
                           if(_loc9_ || _loc3_)
                           {
                              addr125:
                              if(_loc5_.type == §`8§.§#!K§)
                              {
                                 addr126:
                                 _loc8_ = new §`8§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc9_)
                                 {
                                    if(_loc5_.type == §`8§.§#!K§)
                                    {
                                       _loc8_.axisX = _loc5_.axisX;
                                       addr165:
                                       _loc8_.axisY = _loc5_.axisY;
                                    }
                                    addr194:
                                    if(_loc5_.type == §`8§.§9!+§)
                                    {
                                       _loc8_.§=e§ = _loc5_.destroyTimer;
                                       if(_loc10_ && param1)
                                       {
                                       }
                                       addr213:
                                       _loc4_++;
                                       continue;
                                    }
                                    _loc3_.push(_loc8_);
                                    §§goto(addr213);
                                 }
                                 §§goto(addr165);
                              }
                              else
                              {
                                 _loc8_ = new §`8§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr126);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr112);
               }
               §§goto(addr125);
            }
            §§goto(addr213);
         }
         return _loc3_;
      }
      
      public function get §-'§() : int
      {
         return this.§+q§.length;
      }
      
      public function get §#,§() : int
      {
         return this.§]J§.length;
      }
      
      public function get §]U§() : int
      {
         return this.§,B§.length;
      }
      
      public function get §8e§() : int
      {
         return this.§5m§.length;
      }
      
      public function get theme() : String
      {
         return this.§@t§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@t§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§+v§());
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc1_)
                        {
                           addr63:
                           §§pop();
                           if(_loc3_)
                           {
                              addr66:
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 addr69:
                                 §§push(this.§#=§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr79);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr63);
               }
               addr79:
               if(§§pop() < §§pop())
               {
                  if(_loc3_)
                  {
                     addr82:
                     §§push(_loc1_);
                     if(!(_loc2_ && _loc3_))
                     {
                        return §§pop();
                     }
                     addr107:
                     if(§§pop() == 0)
                     {
                        if(!_loc2_)
                        {
                           §§push(_loc1_);
                           if(!(_loc2_ && this))
                           {
                              addr119:
                              return §§pop();
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§push(this.§#=§);
               }
               else
               {
                  §§push(this.§#=§);
                  if(!_loc2_)
                  {
                     §§goto(addr107);
                  }
               }
               addr122:
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr66);
      }
      
      public function §&<§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§+v§());
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr78);
                  }
                  addr72:
                  §§pop();
                  if(!_loc4_)
                  {
                     addr78:
                     if(_loc2_ < param1)
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                  }
                  this.§#=§ = param1;
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §29§(param1:String) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc8_:§5>§ = null;
         var _loc9_:Object = null;
         var _loc10_:§#H§ = null;
         var _loc11_:§;u§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!x§ = _loc2_.scoreSilver;
         this.§4!6§ = _loc2_.scoreGold;
         this.§#=§ = _loc2_.scoreEagle;
         if(_loc13_)
         {
            this.§@t§ = _loc2_.theme;
            this.mName = _loc2_.id;
            if(_loc2_.counts.joints)
            {
               this.§]J§ = §@f§(_loc2_.counts.joints,_loc2_.world);
            }
            this.§5m§ = new Vector.<§5>§>();
            if(!_loc12_)
            {
               this.§,B§ = new Vector.<§#H§>();
               this.§+q§ = new Vector.<§;u§>();
               addr97:
               _loc3_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(_loc13_ || _loc3_)
               {
                  if(§§pop() < _loc2_.camera.length)
                  {
                     (_loc8_ = new §5>§()).x = _loc2_.camera[_loc3_].x;
                     if(_loc13_ || _loc2_)
                     {
                        _loc8_.y = _loc2_.camera[_loc3_].y;
                        if(_loc13_ || _loc3_)
                        {
                           _loc8_.left = _loc2_.camera[_loc3_].left;
                           if(_loc12_ && _loc3_)
                           {
                              continue;
                           }
                        }
                        _loc8_.right = _loc2_.camera[_loc3_].right;
                        if(_loc13_ || this)
                        {
                           _loc8_.top = _loc2_.camera[_loc3_].top;
                           if(!(_loc13_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
                        if(_loc12_ && param1)
                        {
                           continue;
                        }
                        _loc8_.id = _loc2_.camera[_loc3_].id;
                     }
                     this.§5m§.push(_loc8_);
                     if(_loc13_ || this)
                     {
                        _loc3_++;
                     }
                     continue;
                  }
                  if(_loc13_)
                  {
                     §§push(1);
                     if(_loc13_)
                     {
                        _loc3_ = §§pop();
                        if(!_loc12_)
                        {
                           addr228:
                           while(true)
                           {
                              §§push(_loc3_);
                              break loop0;
                           }
                           addr272:
                        }
                        var _loc4_:Vector.<int> = new Vector.<int>();
                        var _loc7_:int = 1;
                        addr277:
                        §§push(1);
                        if(_loc13_ || param1)
                        {
                           _loc3_ = §§pop();
                           if(_loc13_ || param1)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc12_)
                                 {
                                    if(§§pop() > _loc2_.counts.blocks)
                                    {
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          addr400:
                                          §§push(1);
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             addr408:
                                             _loc3_ = §§pop();
                                             if(!_loc12_)
                                             {
                                                addr572:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   break loop1;
                                                }
                                                addr572:
                                             }
                                             §§goto(addr588);
                                          }
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push("block_");
                                       if(_loc13_ || _loc2_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc13_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc12_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      §§push(Boolean((_loc5_ = _loc2_.world[_loc6_]).uniqueID));
                                                      if(!_loc12_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               §§pop();
                                                               if(_loc13_)
                                                               {
                                                                  addr366:
                                                                  if(_loc5_.uniqueID.length > 0)
                                                                  {
                                                                     if(!(_loc13_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr374:
                                                                     _loc4_.push(_loc5_.uniqueID);
                                                                     if(_loc12_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc3_++;
                                                                  continue;
                                                               }
                                                               §§goto(addr374);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr366);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_ = _loc2_.world[_loc6_];
                                                         (_loc11_ = new §;u§()).x = _loc5_.x;
                                                         if(_loc13_ || this)
                                                         {
                                                            _loc11_.y = _loc5_.y;
                                                            _loc11_.id = _loc5_.id;
                                                            if(_loc13_ || this)
                                                            {
                                                               addr468:
                                                               §§push(Boolean(_loc5_.uniqueID));
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr482:
                                                                        §§pop();
                                                                        §§push(_loc5_.uniqueID.length > 0);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        _loc11_.uniqueID = _loc5_.uniqueID;
                                                                        addr537:
                                                                        if(_loc5_.front)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr542:
                                                                              _loc11_.front = _loc5_.front;
                                                                              addr546:
                                                                              _loc11_.angle = _loc5_.angle;
                                                                           }
                                                                           this.§+q§.push(_loc11_);
                                                                           if(!(_loc12_ && param1))
                                                                           {
                                                                              _loc3_++;
                                                                           }
                                                                           §§goto(addr572);
                                                                        }
                                                                        §§goto(addr546);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr511:
                                                                        do
                                                                        {
                                                                           if(_loc4_.indexOf(_loc7_) >= 0)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           _loc11_.uniqueID = _loc7_.toString();
                                                                           if(!(_loc12_ && param1))
                                                                           {
                                                                              _loc4_.push(_loc7_);
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr537);
                                                                              }
                                                                              §§goto(addr546);
                                                                           }
                                                                        }
                                                                        while(_loc7_++, _loc13_ || _loc3_);
                                                                        
                                                                        §§goto(addr572);
                                                                        addr511:
                                                                     }
                                                                     §§goto(addr542);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr511);
                                                                  }
                                                               }
                                                               §§goto(addr482);
                                                            }
                                                            §§goto(addr511);
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      addr432:
                                                   }
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§goto(addr432);
                                                   }
                                                   addr584:
                                                   this.§!N§ = _loc2_.slingshotX;
                                                   addr423:
                                                   addr588:
                                                   this.§#!4§ = _loc2_.slingshotY;
                                                   return;
                                                   while(true)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr584);
                                                }
                                             }
                                             §§goto(addr423);
                                          }
                                          while(true)
                                          {
                                          }
                                          addr422:
                                       }
                                       §§goto(addr423);
                                    }
                                    §§goto(addr584);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop() > _loc2_.counts.blocks)
                                 {
                                    if(_loc13_ || this)
                                    {
                                       §§goto(addr584);
                                    }
                                    §§goto(addr588);
                                 }
                                 else
                                 {
                                    §§push("block_");
                                    if(_loc13_ || _loc3_)
                                    {
                                       §§goto(addr422);
                                       §§push(_loc3_);
                                    }
                                    §§goto(addr423);
                                 }
                              }
                           }
                           §§goto(addr400);
                        }
                        §§goto(addr408);
                     }
                     break;
                  }
                  §§goto(addr228);
               }
               break;
            }
            for(; §§pop() <= _loc2_.counts.birds; §§goto(addr272))
            {
               _loc9_ = _loc2_.world["bird_" + _loc3_];
               (_loc10_ = new §#H§()).x = _loc9_.x;
               if(!_loc12_)
               {
                  _loc10_.y = _loc9_.y;
                  if(!_loc12_)
                  {
                     _loc10_.id = _loc9_.id;
                     if(_loc13_ || param1)
                     {
                        addr265:
                        this.§,B§.push(_loc10_);
                        if(!_loc13_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc3_++;
                  continue;
               }
               §§goto(addr265);
            }
            §§goto(addr277);
         }
         §§goto(addr97);
      }
      
      public function §&s§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§!x§;
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.scoreGold = this.§4!6§;
            _loc1_.scoreEagle = this.§#=§;
            _loc1_.theme = this.§@t§;
            if(_loc4_)
            {
               addr46:
               _loc1_.name = this.mName;
               if(!_loc3_)
               {
                  _loc1_.camera = this.§5m§;
               }
            }
            var _loc2_:* = Number(0);
            if(_loc4_ || _loc1_)
            {
               _loc1_.world = new Object();
               if(_loc4_)
               {
                  addr72:
                  _loc2_ = Number(0);
               }
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop() < this.§,B§.length)
                        {
                           _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,B§[_loc2_];
                           if(!(_loc4_ || this))
                           {
                              break;
                           }
                           §§push(Number(_loc2_ + 1));
                           if(_loc4_ || _loc2_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        §§push(0);
                        if(_loc4_ || _loc2_)
                        {
                           _loc2_ = Number(§§pop());
                           loop7:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc3_ && this))
                              {
                                 if(§§pop() >= this.§+q§.length)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr183:
                                       §§push(Number(0));
                                       if(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr225:
                                             while(§§pop() < this.§]J§.length)
                                             {
                                                _loc1_.world["joint_" + (_loc2_ + 1)] = this.§]J§[_loc2_].getAsSerializableObject();
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      break loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr261:
                                                   _loc1_.slingshotX = this.§!N§;
                                                   _loc1_.slingshotY = this.§#!4§;
                                                   break loop1;
                                                   addr221:
                                                }
                                                break loop1;
                                             }
                                             _loc1_.counts = new Object();
                                             _loc1_.counts.blocks = this.§+q§.length;
                                             _loc1_.counts.birds = this.§,B§.length;
                                             _loc1_.counts.joints = this.§]J§.length;
                                             §§goto(addr261);
                                          }
                                       }
                                       §§goto(addr221);
                                    }
                                    break loop1;
                                 }
                                 addr155:
                                 addr142:
                                 _loc1_.world["block_" + (_loc2_ + 1)] = this.§+q§[_loc2_];
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_ + 1);
                                    if(!_loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc4_ || _loc1_)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop7;
                                       }
                                       addr220:
                                       addr220:
                                       while(true)
                                       {
                                          break loop2;
                                       }
                                    }
                                    break;
                                    §§goto(addr142);
                                 }
                                 §§goto(addr261);
                              }
                              §§goto(addr220);
                           }
                        }
                        §§goto(addr183);
                     }
                     return _loc1_;
                  }
                  break;
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_)
                  {
                     §§goto(addr220);
                  }
                  §§goto(addr225);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr46);
      }
      
      public function §+!I§() : String
      {
         return JSON.stringify(this.§&s§());
      }
      
      public function §+v§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§;u§ = null;
         var _loc3_:* = null;
         var _loc4_:each = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§+q§)
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
            §§push((_loc4_ = §6<§.§6H§(_loc3_)) == null);
            if(_loc8_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && _loc1_))
                  {
                     §§pop();
                     §§push(_loc3_);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(§§pop().indexOf("MISC_") == 0);
                        if(!_loc7_)
                        {
                           addr103:
                           if(§§pop())
                           {
                              if(!(_loc8_ || _loc2_))
                              {
                                 continue;
                              }
                              addr124:
                              §§push("MISC_FOOD_");
                              if(_loc8_ || _loc1_)
                              {
                                 §§push(§§pop() + _loc3_.substring(5));
                              }
                              _loc3_ = §§pop();
                              if(_loc8_ || _loc1_)
                              {
                                 _loc4_ = §6<§.§6H§(_loc3_);
                                 addr137:
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc1_);
                              if(_loc8_ || this)
                              {
                                 §§push(§§pop() + _loc4_.score);
                                 if(!_loc7_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc7_ && this))
                                    {
                                       _loc1_ = §§pop();
                                       addr166:
                                       if(!§'<§(_loc4_))
                                       {
                                          continue;
                                       }
                                       §§push(_loc1_);
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr199:
                                          §§push(_loc4_.§@!§);
                                          if(_loc8_ || _loc1_)
                                          {
                                             §§push(§§pop() * § !§.§6]§.getValue());
                                          }
                                          §§push(int(§§pop() + §§pop()));
                                       }
                                    }
                                    _loc1_ = §§pop();
                                    continue;
                                 }
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr166);
               }
               §§goto(addr103);
            }
            §§goto(addr166);
         }
         return _loc1_;
      }
      
      public function §?W§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§5>§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(_loc6_ || _loc1_)
         {
            §§push(_loc1_);
            §§push("<Level background=\"ThemeHills\"");
            if(_loc6_)
            {
               §§push(§§pop() + §§pop());
               if(_loc6_ || _loc1_)
               {
                  _loc1_ = §§pop();
                  if(!_loc7_)
                  {
                     §§push(_loc1_);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(" scoreSilver=\"");
                        §§push(this.§!x§);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           §§push("\"");
                           if(!(_loc7_ && _loc1_))
                           {
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc7_)
                              {
                                 addr71:
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    _loc1_ = §§pop();
                                    if(_loc6_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc6_ || this)
                                       {
                                          addr88:
                                          §§push(" scoreGold=\"" + this.§4!6§);
                                          if(!(_loc7_ && this))
                                          {
                                             addr97:
                                             §§push(§§pop() + "\"");
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      addr116:
                                                      _loc1_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         addr119:
                                                         §§push(_loc1_);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§push(">");
                                                            if(!(_loc7_ && _loc1_))
                                                            {
                                                               addr135:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  addr138:
                                                                  _loc1_ = §§pop();
                                                                  addr150:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     addr148:
                                                                     §§push(_loc1_ + "<Cameras>");
                                                                  }
                                                                  for each(_loc2_ in this.§5m§)
                                                                  {
                                                                     if(_loc7_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc1_);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(" <Camera id=\"");
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() + _loc2_.id);
                                                                           if(_loc6_ || _loc1_)
                                                                           {
                                                                              addr191:
                                                                              §§push("\" leftBorder=\"");
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(_loc2_.left);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push("\" rightBorder=\"");
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(_loc2_.right);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             §§push("\" topBorder=\"");
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr229:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(_loc2_.top);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push("\" bottomBorder=\"");
                                                                                                      if(_loc7_ && _loc3_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr272:
                                                                                                      _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                      addr269:
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr253:
                                                                                                   §§push(_loc2_.top);
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      addr265:
                                                                                                      §§push(§§pop() + (§§pop() + §`n§.§]$§));
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr268:
                                                                                                         §§goto(addr269);
                                                                                                         §§push("\"></Camera>");
                                                                                                      }
                                                                                                      §§goto(addr269);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr253);
                                                                                             }
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr191);
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(_loc1_);
                                                                     §§push("</Cameras>");
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        _loc1_ = §§pop() + §§pop();
                                                                        §§push(_loc1_);
                                                                        §§push("<Slingshot x=\"" + this.§,B§[0].x);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() + "\" y=\"");
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() + (this.§,B§[0].y - 8));
                                                                              §§push("\">");
                                                                              if(_loc6_)
                                                                              {
                                                                                 _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                 §§push(_loc1_);
                                                                                 §§push(" <Birds>");
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    _loc1_ = §§pop() + §§pop();
                                                                                    §§push(0);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop() >= this.§,B§.length)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                if(_loc6_ || _loc1_)
                                                                                                {
                                                                                                   _loc1_ = §§pop() + " </Birds>";
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr585);
                                                                                                   }
                                                                                                   §§goto(addr571);
                                                                                                }
                                                                                                §§goto(addr584);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push("  <Bird id=\"" + this.§,B§[_loc3_].id + "\" x=\"" + this.§,B§[_loc3_].x);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push("\" y=\"");
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop() + this.§,B§[_loc3_].y);
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            §§push("\"></Bird>");
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               addr396:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr397:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§goto(addr584);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr396:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr492:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr500:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + this.§+q§[_loc3_].y);
                                                                                                                        addr506:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push("\" rotation=\"");
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr509:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr517:
                                                                                                                                 §§push(§§pop() + this.§+q§[_loc3_].angle);
                                                                                                                                 if(!(_loc7_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push("\" ></Item>");
                                                                                                                                       addr531:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc7_ && this)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr585:
                                                                                                                                       addr586:
                                                                                                                                       addr434:
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       §§push("</Slingshot>");
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr437:
                                                                                                                                          _loc1_ = §§pop() + §§pop();
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc7_ && this))
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(!(_loc7_ && this))
                                                                                                                                             {
                                                                                                                                                addr571:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   break loop1;
                                                                                                                                                }
                                                                                                                                                addr571:
                                                                                                                                             }
                                                                                                                                             addr584:
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             §§push("</Level>");
                                                                                                                                          }
                                                                                                                                          break loop1;
                                                                                                                                       }
                                                                                                                                       _loc1_ = §§pop() + §§pop();
                                                                                                                                       return new XML(_loc1_);
                                                                                                                                       §§goto(addr517);
                                                                                                                                    }
                                                                                                                                    addr530:
                                                                                                                                 }
                                                                                                                                 §§goto(addr585);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          _loc3_++;
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr571);
                                                                                                                                          }
                                                                                                                                          §§goto(addr585);
                                                                                                                                       }
                                                                                                                                       §§goto(addr571);
                                                                                                                                    }
                                                                                                                                    §§goto(addr584);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr509);
                                                                                                                              }
                                                                                                                              §§goto(addr586);
                                                                                                                           }
                                                                                                                           §§goto(addr531);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr500:
                                                                                                                  }
                                                                                                                  §§goto(addr530);
                                                                                                               }
                                                                                                               addr492:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr585);
                                                                                                      }
                                                                                                      §§goto(addr396);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + this.§+q§[_loc3_].x);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr492);
                                                                                                         §§push("\" y=\"");
                                                                                                      }
                                                                                                      §§goto(addr500);
                                                                                                   }
                                                                                                   addr483:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr434);
                                                                                                }
                                                                                                §§goto(addr585);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= this.§+q§.length)
                                                                                       {
                                                                                          if(!(_loc7_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr584);
                                                                                          }
                                                                                          §§goto(addr585);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          §§push("<Item id=\"");
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + this.§+q§[_loc3_].id);
                                                                                             }
                                                                                             addr461:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("\" x=\"");
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   §§goto(addr483);
                                                                                                }
                                                                                                §§goto(addr506);
                                                                                             }
                                                                                             §§goto(addr492);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        §§goto(addr500);
                                                                     }
                                                                     §§goto(addr461);
                                                                  }
                                                                  §§goto(addr402);
                                                               }
                                                               _loc1_ = §§pop();
                                                            }
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr119);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr148);
      }
      
      public function §1F§(param1:int) : §;u§
      {
         return this.§+q§[param1];
      }
      
      public function addObject(param1:§;u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+q§.push(param1);
         }
      }
      
      public function §04§(param1:int) : §`8§
      {
         return this.§]J§[param1];
      }
      
      public function §,f§(param1:§`8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]J§.push(param1);
         }
      }
      
      public function §4w§(param1:int) : §#H§
      {
         return this.§,B§[param1];
      }
      
      public function §+!D§(param1:§#H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,B§.push(param1);
         }
      }
      
      public function §5j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5m§ = new Vector.<§5>§>();
         }
      }
      
      public function §7!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§,B§ = new Vector.<§#H§>();
         }
      }
      
      public function §8=§(param1:int) : §5>§
      {
         return this.§5m§[param1];
      }
      
      public function §'_§(param1:§5>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5m§.push(param1);
         }
      }
   }
}
