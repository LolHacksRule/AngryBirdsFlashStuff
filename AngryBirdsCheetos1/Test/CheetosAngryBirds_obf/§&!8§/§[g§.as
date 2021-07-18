package §&!8§
{
   import § o§.b2Body;
   import § o§.b2BodyDef;
   import § o§.b2FilterData;
   import § o§.b2Fixture;
   import § o§.b2World;
   import §!r§.§"B§;
   import §!r§.§2k§;
   import §!r§.§3!!§;
   import §!r§.§9!,§;
   import §!r§.§=?§;
   import §"0§.b2Settings;
   import §,§.§ p§;
   import §,§.§'-§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §>^§.§!6§;
   import §]!S§.b2PolygonShape;
   import §^a§.Sprite;
   import flash.geom.Point;
   
   public class §[g§
   {
      
      public static const §%!P§:uint;
      
      public static const §?]§:uint;
      
      public static const §'!M§:uint;
      
      public static const §^g§:uint;
      
      public static const §4f§:Boolean = true;
      
      public static const §`!9§:Number = 5;
      
      public static const §3![§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[g§))
         {
            §§push(§§findproperty(§%!P§));
            §§push(1);
            if(!_loc1_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§%!P§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§?]§));
               §§push(1);
               if(!(_loc1_ && §[g§))
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§?]§ = §§pop();
            }
            addr120:
         }
         loop1:
         do
         {
            §§push(§§findproperty(§'!M§));
            §§push(1);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() << 3);
            }
            §§pop().§'!M§ = §§pop();
            loop2:
            while(true)
            {
               §§push(§§findproperty(§^g§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 4);
               }
               §§pop().§^g§ = §§pop();
               loop3:
               do
               {
                  §4f§ = true;
                  loop4:
                  while(_loc2_)
                  {
                     §`!9§ = 5;
                     while(!_loc1_)
                     {
                        §3![§ = 10;
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
                  §§goto(addr120);
               }
               while(_loc1_);
               
               continue loop1;
            }
         }
         while(!_loc2_);
         
      }
      
      private var §^P§:String;
      
      private var §>!Y§:int;
      
      private var §]!K§:int;
      
      public var §>p§:String;
      
      public var §=J§:int;
      
      protected var §0o§:§=?§;
      
      private var §1A§:§+!6§;
      
      private var mWorld:b2World;
      
      protected var §]'§:String = "";
      
      protected var §+W§:int = 1;
      
      private var §[O§:b2Fixture;
      
      private var §,!X§:b2Body;
      
      private var §?&§:b2Vec2;
      
      public var §+_§:Number;
      
      public var § !G§:Number;
      
      private var §#g§:Number;
      
      private var §3E§:Boolean = false;
      
      private var §,!Q§:Number;
      
      private var §8>§:Number;
      
      private var §9!§:Number;
      
      private var §=!]§:Number;
      
      private var §=8§:Number;
      
      private var §#B§:Number;
      
      public var §8C§:Number = 1;
      
      private var §+!b§:Boolean = false;
      
      public var §>!$§:Number = 0;
      
      public var §^!G§:Number = 0;
      
      protected var §!]§:Boolean = false;
      
      public var §5d§:§%$§;
      
      protected var §8!2§:Sprite;
      
      private var §7F§:Number = 0;
      
      private var §6_§:Number = 0;
      
      private var §!!&§:Number = 0;
      
      protected var §#![§:Number = 1.0;
      
      private var §5!%§:Boolean = false;
      
      protected var final:§?!G§;
      
      private var §+!%§:Boolean = true;
      
      public function §[g§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(_loc17_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>p§ = param6;
               loop1:
               while(true)
               {
                  this.§0o§ = §3!!§.§^!-§(param6);
                  loop2:
                  while(true)
                  {
                     this.§1A§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§8!2§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§#![§ = param10;
                           loop5:
                           while(_loc17_)
                           {
                              this.§5!%§ = param11;
                              loop6:
                              while(_loc17_)
                              {
                                 this.§>!Y§ = param5;
                                 loop7:
                                 while(true)
                                 {
                                    this.§=J§ = this.§0o§.§=J§;
                                    while(true)
                                    {
                                       this.§]!K§ = this.§0o§.§@W§();
                                       addr166:
                                       while(_loc17_)
                                       {
                                          this.final = new §?!G§(§`!9§,§3![§);
                                          while(!(_loc16_ && param2))
                                          {
                                             this.§5d§ = new §%$§(this,param2,param4);
                                             while(_loc17_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr166);
                                             addr119:
                                             if(_loc16_ && param3)
                                             {
                                                continue;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(this.§5d§);
                                                if(_loc17_ || this)
                                                {
                                                   §§push(this.§]!K§);
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      §§pop().§[T§(§§pop() == §2k§.§#N§);
                                                      while(true)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr97:
                                                         while(true)
                                                         {
                                                            §§push(this.§5d§);
                                                            addr99:
                                                            while(true)
                                                            {
                                                               §§push(this.§]!K§);
                                                            }
                                                         }
                                                         addr86:
                                                         this.mWorld = param3;
                                                         if(!_loc17_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc16_ && this)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr36);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            break loop14;
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                      addr117:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§19§(§§pop(),this.§0o§.§3!B§(),this.§0o§.§&!0§() / § p§.§]!E§,this.§0o§.§]!?§() / § p§.§]!E§);
                                                      §§goto(addr117);
                                                   }
                                                }
                                                §§goto(addr99);
                                             }
                                             §§goto(addr135);
                                          }
                                          continue loop5;
                                       }
                                       addr36:
                                       continue loop6;
                                       if(_loc17_ || this)
                                       {
                                          if(!_loc16_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§5d§);
            if(!_loc16_)
            {
               if(!§§pop().§+!3§(param1.§^!I§.§#U§))
               {
                  §§goto(addr97);
               }
               §§goto(addr54);
            }
            §§goto(addr99);
         }
      }
      
      public static function §,D§(param1:int, param2:§"B§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param2 == null)
            {
               if(_loc6_ || param2)
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§ !L§[param1]);
         if(!_loc5_)
         {
            if(§§pop().length > 0)
            {
               if(_loc6_ || §[g§)
               {
                  §§push(param3);
                  if(_loc6_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc6_ || §[g§)
                        {
                           §§push(param2.§&&§);
                           if(_loc6_ || param2)
                           {
                           }
                           §§goto(addr92);
                        }
                     }
                     §,!7§.§5%§(_loc4_,param3);
                  }
                  §§goto(addr92);
               }
            }
            addr92:
            param3 = §§pop();
            §§goto(addr91);
         }
         addr91:
         if(!_loc6_)
         {
         }
      }
      
      public static function §]p§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc3_)
         {
            §§push(180);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc2_ && param1))
                  {
                     addr62:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public static function §?!b§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && §[g§))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!(_loc3_ && _loc2_))
            {
               addr68:
               return Number(§§pop());
            }
         }
         §§goto(addr68);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!2§;
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function get front() : Boolean
      {
         return this.§5!%§;
      }
      
      public function get §,!b§() : Number
      {
         return this.§,!X§.GetPosition().x;
      }
      
      public function get §-I§() : Number
      {
         return this.§,!X§.GetPosition().y;
      }
      
      public function get §-!6§() : §=?§
      {
         return this.§0o§;
      }
      
      public function get §>![§() : Boolean
      {
         return this.§#g§ >= 0;
      }
      
      public function get container() : §+!6§
      {
         return this.§1A§;
      }
      
      public function get §&!9§() : Boolean
      {
         return this.§+!%§;
      }
      
      public function set §&!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§+!%§ = param1;
         }
      }
      
      public function set §3!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§3E§ = param1;
         }
      }
      
      public function set §=V§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.final.§=V§ = param1;
         }
      }
      
      public function get §=V§() : uint
      {
         return this.final.§=V§;
      }
      
      public function get §#!$§() : Boolean
      {
         return this.§+!b§;
      }
      
      public function set §#!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+!b§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function get uniqueID() : String
      {
         return this.§^P§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^P§ = param1;
         }
      }
      
      public function §<k§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§[O§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr47:
                     this.§[O§.§=!K§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function §7R§(param1:String) : int
      {
         return §7!?§.§7R§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc4_ && param1))
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr138:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         loop6:
         while(true)
         {
            _loc3_.§-[§ = true;
            loop7:
            while(true)
            {
               _loc3_.§>!`§ = true;
               loop8:
               for(; !_loc4_; if(!(_loc5_ || _loc3_))
               {
                  continue;
               },if(!_loc4_)
               {
                  break loop6;
               },§§goto(addr139))
               {
                  if(!_loc4_)
                  {
                     _loc3_.§60§ = 1;
                     while(_loc5_)
                     {
                        _loc3_.§7N§ = false;
                        if(_loc5_ || param2)
                        {
                           continue loop8;
                        }
                     }
                     continue loop7;
                  }
                  §§goto(addr104);
               }
               §§goto(addr90);
            }
         }
         return _loc3_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mWorld);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr143:
                     while(true)
                     {
                        §§pop().§=!B§(this.§`e§());
                        addr146:
                        while(true)
                        {
                           this.mWorld = null;
                           addr125:
                           while(true)
                           {
                           }
                        }
                     }
                     addr60:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     this.§0o§ = null;
                     addr77:
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc2_ && this))
                        {
                           if(_loc2_ && _loc1_)
                           {
                              loop11:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       this.§[O§ = null;
                                       addr82:
                                       while(true)
                                       {
                                          this.§?&§ = null;
                                          addr58:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                §§goto(addr60);
                                             }
                                             else
                                             {
                                                while(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§8!2§ = null;
                                                      continue loop11;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§8!2§);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            addr112:
                                                            this.§8!2§.dispose();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr146);
                                                         }
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   §§goto(addr112);
                                                }
                                                addr113:
                                                addr120:
                                             }
                                             §§goto(addr77);
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                                 §§goto(addr125);
                              }
                           }
                           return;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr58);
                  }
               }
               while(true)
               {
                  this.§5d§.dispose();
                  §§goto(addr120);
                  §§goto(addr125);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr115);
      }
      
      public function §6!G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§`e§());
            §§push(360);
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§@o§(§§pop());
         }
      }
      
      public function §?%§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§`e§().GetAngle());
         if(_loc2_)
         {
            §§push(180);
            if(_loc2_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr61);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr61:
         §§push(§§pop() - §§pop());
         if(_loc2_ || _loc1_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §5! §(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§`e§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     addr74:
                     while(true)
                     {
                     }
                     addr74:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && param3))
                           {
                              this.§%K§();
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr74);
                        }
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§[O§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§`e§());
            loop0:
            while(true)
            {
               §§push(§§pop().GetPosition());
               loop1:
               while(true)
               {
                  §§push(§§pop().x);
                  loop2:
                  while(true)
                  {
                     §§push(param3);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§`e§());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          loop9:
                                          while(_loc5_ || param2)
                                          {
                                             §§push(§§pop().x);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param4);
                                                addr168:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                                loop20:
                                                while(true)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(_loc6_ && param1)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() >= §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!(_loc5_ || param2))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  addr134:
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc5_ || param3)
                                                                              {
                                                                                 §§push(this.§`e§());
                                                                                 if(!(_loc5_ || param1))
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(§§pop().GetPosition());
                                                                                 if(_loc6_ && param3)
                                                                                 {
                                                                                    while(_loc5_ || this)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       continue loop20;
                                                                                    }
                                                                                    continue loop9;
                                                                                    addr80:
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc6_ && param3)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 §§push(param2);
                                                                                 if(_loc6_ && param1)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr168);
                                                                              }
                                                                              addr180:
                                                                              while(_loc5_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§`e§());
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr146:
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     break;
                                                                     §§goto(addr134);
                                                                  }
                                                                  while(!(_loc6_ && param2))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        addr179:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr141);
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                                  addr141:
                                                                  continue loop5;
                                                                  addr171:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                               addr170:
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr170);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      public function §9G§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?&§ = param1;
         }
      }
      
      public function §2!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§?&§)
            {
               loop0:
               while(true)
               {
                  this.§5! §(this.§?&§,false);
                  addr75:
                  while(true)
                  {
                     this.§?&§ = null;
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr75);
      }
      
      public function §>!U§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(_loc2_)
               {
                  addr22:
                  §§push(this.§`e§());
                  if(!(_loc3_ && _loc2_))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr34:
                     §§push(param1.x);
                     if(!(_loc3_ && param1))
                     {
                        §§push(0);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       addr102:
                                       if(param1.y == 0)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr122:
                                             this.§`e§().§,!d§(0);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§`e§());
                                          if(!_loc3_)
                                          {
                                             §§pop().§,!d§(Math.atan2(param1.x,param1.y));
                                             if(!_loc2_)
                                             {
                                                addr124:
                                             }
                                             return;
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr122);
                                       addr76:
                                    }
                                    §§goto(addr124);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr122);
               }
               §§goto(addr76);
            }
            §§goto(addr34);
         }
         §§goto(addr22);
      }
      
      public function §%K§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(!param1)
            {
               addr26:
               param1 = this.§`e§().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc3_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               this.§6!G§(_loc2_);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function §0Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`e§().§,!d§(param1);
         }
      }
      
      public function §`e§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§[O§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr49);
                  }
               }
               return null;
            }
            §§goto(addr49);
         }
         addr49:
         return this.§[O§.GetBody();
      }
      
      public function §89§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(param1 != -9999)
            {
               addr123:
               while(true)
               {
                  this.§7F§ = param1;
                  addr126:
                  while(true)
                  {
                     this.§6_§ = param2;
                     addr119:
                     while(true)
                     {
                     }
                  }
               }
               addr123:
            }
            loop0:
            while(true)
            {
               §§push(this.§`e§());
               loop1:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  loop2:
                  while(true)
                  {
                     §§push(this.§7F§);
                     if(!_loc4_)
                     {
                        §§push(§ p§.§]!E§);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr52:
                           §§push(§ p§.§]!E§);
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           addr72:
                           §§pop().y = §§pop() * §§pop();
                           if(!(_loc3_ || param1))
                           {
                              loop5:
                              while(!_loc4_)
                              {
                                 §§push(this.§`e§());
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop().GetPosition());
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop2;
                                 }
                                 §§push(this.§6_§);
                                 if(_loc3_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       §§goto(addr52);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop5;
                                       }
                                       addr101:
                                    }
                                 }
                                 §§goto(addr72);
                              }
                              §§goto(addr126);
                           }
                           if(!(_loc3_ || param2))
                           {
                              continue loop0;
                           }
                           if(_loc3_)
                           {
                              return;
                           }
                           §§goto(addr123);
                        }
                     }
                     §§goto(addr101);
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §5m§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(!_loc6_)
         {
            §§push(this.§!]§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr465:
                  while(true)
                  {
                     §§push(true);
                     addr466:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           this.§!]§ = false;
                           addr459:
                           while(!_loc6_)
                           {
                           }
                        }
                     }
                  }
                  addr465:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr443:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr444:
                              while(true)
                              {
                              }
                           }
                        }
                        addr442:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(true);
                                 addr426:
                                 while(!(_loc6_ && _loc3_))
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr442);
                                       }
                                    }
                                    §§goto(addr443);
                                 }
                                 continue loop2;
                              }
                              addr425:
                           }
                           while(true)
                           {
                              §§push(this.updateScreamingFrameAnimations(param2));
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(true);
                                       loop14:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          loop15:
                                          while(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.updateBlinkingFrameAnimations(param2));
                                                loop17:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(!(_loc6_ && param2))
                                                      {
                                                         §§push(true);
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr402:
                                                            while(true)
                                                            {
                                                               if(_loc6_ && param1)
                                                               {
                                                                  §§goto(addr465);
                                                               }
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                      }
                                                      continue loop15;
                                                      addr393:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      loop22:
                                                      while(!(_loc6_ && _loc3_))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop23:
                                                            while(_loc5_ || this)
                                                            {
                                                               §§push(this.§5d§);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§pop().§8P§();
                                                                  while(true)
                                                                  {
                                                                     addr329:
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§8C§);
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() > 1);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§5d§);
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                §§pop().§;t§(param2);
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§4f§);
                                                                                                   if(_loc6_ && param2)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc6_ && param2)
                                                                                                   {
                                                                                                      addr340:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                      addr340:
                                                                                                   }
                                                                                                   if(_loc6_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         this.§!!&§ = this.§9!§;
                                                                                                         loop37:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  this.§7F§ = this.§,!Q§;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§6_§ = this.§8>§;
                                                                                                                     loop39:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                           {
                                                                                                                              loop40:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§8!2§);
                                                                                                                                 loop41:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = Math.round(this.§7F§);
                                                                                                                                    loop42:
                                                                                                                                    while(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§8!2§);
                                                                                                                                       loop43:
                                                                                                                                       while(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          §§pop().y = Math.round(this.§6_§);
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr99:
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         break loop40;
                                                                                                                                                      }
                                                                                                                                                      if(_loc5_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§8!2§);
                                                                                                                                                         if(!(_loc5_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop43;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§!!&§);
                                                                                                                                                         if(_loc5_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / 180);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr50:
                                                                                                                                                               §§push(§§pop() * Math.PI);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr53);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr50);
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                   addr266:
                                                                                                                                                   loop32:
                                                                                                                                                   while(_loc5_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§5d§);
                                                                                                                                                      while(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§9!'§.blurY = _loc4_;
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         continue loop35;
                                                                                                                                                      }
                                                                                                                                                      while(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§9!'§.blurX = _loc4_;
                                                                                                                                                         §§goto(addr99);
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      while(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop().§9!'§));
                                                                                                                                                         break loop36;
                                                                                                                                                      }
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(4);
                                                                                                                                                      §§push(this.§5d§.§9!'§.blurX - 4);
                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(param2);
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / 20);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                                continue loop36;
                                                                                                                                             }
                                                                                                                                             addr196:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§3!<§(param1);
                                                                                                                                             }
                                                                                                                                             §§pop().rotation = §§pop();
                                                                                                                                          }
                                                                                                                                          while(_loc6_);
                                                                                                                                          
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop39;
                                                                                                                                          }
                                                                                                                                          continue loop42;
                                                                                                                                       }
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                    addr312:
                                                                                                                                    while(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       if(!(_loc6_ && param2))
                                                                                                                                       {
                                                                                                                                          §§goto(addr237);
                                                                                                                                          §§push(this.§5d§);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr393);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 addr201:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr253);
                                                                                                                              }
                                                                                                                              addr364:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr425);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§goto(addr201);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr444);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr223);
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                      §§goto(addr196);
                                                                                                   }
                                                                                                   §§goto(addr443);
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    addr264:
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr426);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr459);
                                       }
                                    }
                                 }
                                 §§goto(addr388);
                              }
                           }
                           while(!(_loc6_ && this))
                           {
                              §§goto(addr264);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr465);
      }
      
      public function §0!P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§`e§().GetPosition().x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§`e§().GetPosition().y);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§#B§ = this.§9!§;
            loop0:
            while(true)
            {
               this.§=!]§ = this.§,!Q§;
               loop1:
               while(true)
               {
                  this.§=8§ = this.§8>§;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§`e§().GetAngle());
                     if(_loc4_)
                     {
                        §§push(180);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() * (§§pop() / Math.PI));
                           if(_loc4_)
                           {
                              addr145:
                              §§push(§§pop() % 360);
                           }
                           §§pop().§9!§ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 §§push(§§pop() / § p§.§]!E§);
                              }
                              §§pop().§,!Q§ = §§pop();
                              addr122:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(_loc2_);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop() / § p§.§]!E§);
                                 }
                                 §§pop().§8>§ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.final);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().§^!@§();
                                       addr91:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop1;
                                          }
                                          continue loop5;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr145);
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §3!<§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(1e-9);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     while(true)
                     {
                        §§push(§!6§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1);
                        if(!(_loc3_ && param2))
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                        addr943:
                        while(true)
                        {
                        }
                     }
                     addr919:
                  }
                  while(true)
                  {
                     §§push(param2);
                     while(true)
                     {
                        §§push(0);
                        addr905:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§1A§.§^!I§.mLevelEngine.§-!]§);
                                 addr911:
                                 while(true)
                                 {
                                    §§push(1000);
                                    addr912:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr913:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr914:
                                          while(true)
                                          {
                                             param2 = §§pop();
                                             addr915:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr906:
                           }
                           addr886:
                           while(true)
                           {
                              §§push(param1);
                              addr888:
                              while(true)
                              {
                                 §§push(-1);
                                 addr889:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    addr898:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr899:
                                       while(_loc4_)
                                       {
                                          §§push(this.§,!Q§);
                                          continue loop0;
                                       }
                                       §§goto(addr943);
                                    }
                                 }
                              }
                           }
                        }
                        loop76:
                        while(_loc4_ || param2)
                        {
                           §§push(180);
                           loop77:
                           for(; !_loc3_; if(!(_loc4_ || param1))
                           {
                              continue;
                           },§§goto(addr94))
                           {
                              if(!_loc3_)
                              {
                                 §§push(§§pop() > §§pop());
                                 loop78:
                                 while(true)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       addr450:
                                       if(_loc4_ || param2)
                                       {
                                          loop79:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.§#B§);
                                                loop80:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§9!§);
                                                      loop81:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         loop82:
                                                         while(_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            loop83:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop84:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              loop85:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§9!§);
                                                                                 if(!(_loc3_ && param2))
                                                                                 {
                                                                                    addr293:
                                                                                    if(!(_loc3_ && param2))
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(this.§#B§);
                                                                                          loop86:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   loop87:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(180);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     loop89:
                                                                                                                     for(; !_loc3_; if(_loc4_ || param1)
                                                                                                                     {
                                                                                                                        continue loop84;
                                                                                                                     })
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           loop90:
                                                                                                                           while(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§#B§);
                                                                                                                              loop91:
                                                                                                                              for(; _loc4_; if(_loc4_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop80;
                                                                                                                                 }
                                                                                                                                 continue loop87;
                                                                                                                              })
                                                                                                                              {
                                                                                                                                 §§push(this.§9!§);
                                                                                                                                 loop92:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                    {
                                                                                                                                       addr210:
                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop89;
                                                                                                                                             }
                                                                                                                                             addr268:
                                                                                                                                             addr268:
                                                                                                                                             loop95:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr269:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop85;
                                                                                                                                                   }
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr469:
                                                                                                                                                      if(!(_loc3_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§9!§);
                                                                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                     if(_loc4_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§#B§);
                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 360);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - this.§9!§);
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr523:
                                                                                                                                                                                 addr534:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr532:
                                                                                                                                                                                    §§push(§§pop() / param2);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§!!&§ = §§pop() + §§pop();
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr25);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr861);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr532);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr523);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr532);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr534);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr915);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr689);
                                                                                                                                                         }
                                                                                                                                                         while(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr581);
                                                                                                                                                            §§push(this.§#B§);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                            addr773:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               addr774:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  addr775:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     break loop78;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr667:
                                                                                                                                                         addr790:
                                                                                                                                                      }
                                                                                                                                                      break loop84;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc3_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§9!§);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop91;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr38:
                                                                                                                                                               if(!(_loc4_ || param2))
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop92;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr888);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  addr673:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     addr674:
                                                                                                                                                                     addr849:
                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        while(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§#B§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§9!§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    addr657:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       break loop83;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr656:
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              addr545:
                                                                                                                                                                              if(_loc3_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§9!§);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    break loop89;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr556:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr914);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr898);
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           this.§!!&§ = this.§9!§;
                                                                                                                                                                           addr25:
                                                                                                                                                                           return;
                                                                                                                                                                           addr689:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr906);
                                                                                                                                                                     }
                                                                                                                                                                     while(!(_loc3_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§=!]§);
                                                                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - this.§,!Q§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr835:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§>!$§ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§,!Q§);
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + this.§>!$§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§7F§ = §§pop();
                                                                                                                                                                                             while(_loc4_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr781:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§8>§);
                                                                                                                                                                                                      addr784:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§=8§);
                                                                                                                                                                                                         break loop86;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!(_loc3_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop77;
                                                                                                                                                                                                   addr581:
                                                                                                                                                                                                   while(!(_loc3_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§9!§);
                                                                                                                                                                                                      break loop92;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr899);
                                                                                                                                                                                             addr878:
                                                                                                                                                                                             addr801:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§>!$§ = 0;
                                                                                                                                                                                                addr861:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§7F§ = this.§,!Q§;
                                                                                                                                                                                                   addr844:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr858:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr781);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr836:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr835);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr858);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr877:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§goto(addr878);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr672:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr581);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr919);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§^!G§ = 0;
                                                                                                                                                      addr780:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§6_§ = this.§8>§;
                                                                                                                                                         addr770:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr690:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§9!§);
                                                                                                                                                               break loop85;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr581);
                                                                                                                                                   continue loop95;
                                                                                                                                                }
                                                                                                                                                continue loop87;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             addr696:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr697:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         addr699:
                                                                                                                                                         while(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr672);
                                                                                                                                                               §§push(param1);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr801);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr780);
                                                                                                                                                      }
                                                                                                                                                      addr698:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr676);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr695:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(180);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr600:
                                                                                                                                                while(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this.§#B§);
                                                                                                                                                   break loop87;
                                                                                                                                                }
                                                                                                                                                addr601:
                                                                                                                                                addr714:
                                                                                                                                                addr764:
                                                                                                                                                if(!(_loc3_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§9!§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§#B§);
                                                                                                                                                         if(!(_loc3_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - this.§9!§);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr635:
                                                                                                                                                               addr636:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param2);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§!!&§ = §§pop() + §§pop();
                                                                                                                                                               if(_loc4_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr25);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr678);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr635);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr636);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr690);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   §§goto(addr601);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§8>§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + this.§^!G§);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§6_§ = §§pop();
                                                                                                                                                   §§goto(addr714);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr599:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          addr94:
                                                                                                                                          if(!(_loc4_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                             {
                                                                                                                                                addr116:
                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§9!§);
                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§#B§);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + 360);
                                                                                                                                                                        if(_loc4_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr155:
                                                                                                                                                                           §§push(§§pop() - this.§9!§);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr171:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr169:
                                                                                                                                                                                 §§push(§§pop() / param2);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§!!&§ = §§pop() + §§pop();
                                                                                                                                                                              if(!(_loc3_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc4_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop90;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr25);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr378:
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr25);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr635);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr523);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr25);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr269);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr169);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr155);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr169);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr171);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr844);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr171);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr25);
                                                                                                                                                      §§goto(addr116);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr770);
                                                                                                                                                   addr123:
                                                                                                                                                }
                                                                                                                                                while(_loc4_ || this)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr667);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr876:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr877);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr856);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr875:
                                                                                                                                                addr659:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr268);
                                                                                                                                             }
                                                                                                                                             §§goto(addr269);
                                                                                                                                          }
                                                                                                                                          §§goto(addr912);
                                                                                                                                       }
                                                                                                                                       §§goto(addr774);
                                                                                                                                    }
                                                                                                                                    §§goto(addr784);
                                                                                                                                    §§goto(addr210);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr875);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr911);
                                                                                                                           }
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§9!§);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#B§);
                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - this.§9!§);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr377:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc3_ && param2))
                                                                                                                                             {
                                                                                                                                                addr375:
                                                                                                                                                §§push(§§pop() / param2);
                                                                                                                                             }
                                                                                                                                             §§pop().§!!&§ = §§pop() + §§pop();
                                                                                                                                             §§goto(addr378);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr375);
                                                                                                                                 }
                                                                                                                                 §§goto(addr377);
                                                                                                                              }
                                                                                                                              §§goto(addr836);
                                                                                                                           }
                                                                                                                           §§goto(addr601);
                                                                                                                           addr338:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr790);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop71:
                                                                                                                           while(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 continue loop79;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop84;
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr657);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 break loop71;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr789);
                                                                                                                              }
                                                                                                                              §§goto(addr775);
                                                                                                                           }
                                                                                                                           addr562:
                                                                                                                        }
                                                                                                                        §§goto(addr698);
                                                                                                                     }
                                                                                                                     §§goto(addr600);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr673);
                                                                                                            }
                                                                                                            §§goto(addr889);
                                                                                                            addr324:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop76;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                      §§goto(addr593);
                                                                                                   }
                                                                                                   §§goto(addr652);
                                                                                                   addr314:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             addr429:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop76;
                                                                                             }
                                                                                             if(!(_loc4_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop81;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr68);
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§goto(addr656);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr787);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr429);
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    addr427:
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr695);
                                                                              }
                                                                           }
                                                                           §§goto(addr565);
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop82;
                                                                           }
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              continue loop83;
                                                                           }
                                                                           §§goto(addr696);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§goto(addr427);
                                                                              §§push(this.§#B§);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr699);
                                                                           }
                                                                           §§goto(addr469);
                                                                        }
                                                                     }
                                                                     §§goto(addr338);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr562);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr659);
                                                               }
                                                               §§goto(addr599);
                                                            }
                                                         }
                                                         continue loop78;
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr773);
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(180);
                                                   if(!_loc3_)
                                                   {
                                                      continue loop77;
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr913);
                                             }
                                             §§goto(addr469);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr674);
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this);
                                       §§push(param1);
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this.§=8§);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(§§pop() - this.§8>§);
                                             if(!(_loc3_ && param2))
                                             {
                                                addr753:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr762:
                                                   §§push(§§pop() / param2);
                                                }
                                                §§pop().§^!G§ = §§pop();
                                                §§goto(addr764);
                                             }
                                             §§goto(addr762);
                                          }
                                          §§goto(addr753);
                                       }
                                       §§goto(addr762);
                                    }
                                    §§goto(addr777);
                                    §§goto(addr450);
                                 }
                              }
                              else
                              {
                                 §§goto(addr905);
                              }
                              §§goto(addr886);
                           }
                           while(true)
                           {
                              §§goto(addr849);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr808);
      }
      
      public function get §`x§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§4f§)
            {
            }
         }
         return null;
      }
      
      public function §2!N§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§=J§);
            if(_loc1_ || _loc2_)
            {
               §§push(§=?§.§&H§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§pop();
                           addr78:
                           return this.§=J§ == §=?§.§6M§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §[a§() : Boolean
      {
         return this.§=J§ == §=?§.§!!"§;
      }
      
      public function §4!Y§() : Boolean
      {
         return this.§=J§ == §=?§.§<P§;
      }
      
      public function §9W§() : Boolean
      {
         return this.§=J§ == §=?§.§6M§;
      }
      
      public function §2!!§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§=J§ == §=?§.§7![§;
      }
      
      public function isGround() : Boolean
      {
         return this.§=J§ == §=?§.§[b§;
      }
      
      public function §[n§() : Boolean
      {
         return this.§=J§ == §=?§.§=K§;
      }
      
      public function § ! §() : Boolean
      {
         return this.§=J§ == §=?§.§<![§;
      }
      
      public function §#!A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§>p§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               addr97:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 §§push(true);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           return §§pop();
                        }
                     }
                     addr81:
                     return §§pop();
                     addr69:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr95:
         }
         while(true)
         {
            §§push(this.§>p§);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() == "POWERUP_BOMB");
               if(_loc1_)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr97);
                  }
                  §§goto(addr69);
               }
               §§goto(addr81);
            }
            else
            {
               §§goto(addr95);
            }
         }
      }
      
      public function §6!O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[a§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§[n§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr117:
                                 while(_loc1_)
                                 {
                                 }
                                 continue loop0;
                                 addr95:
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 §§pop();
                                 if(_loc1_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§#!$§);
                                       if(_loc1_ || _loc2_)
                                       {
                                          addr34:
                                          if(!(_loc2_ && this))
                                          {
                                             addr42:
                                             §§push(!§§pop());
                                             if(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   loop11:
                                                   while(_loc1_ || _loc1_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop12:
                                                      while(true)
                                                      {
                                                         addr62:
                                                         addr121:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               return §§pop();
                                                               addr81:
                                                               addr125:
                                                            }
                                                            else
                                                            {
                                                               addr46:
                                                            }
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(_loc2_ && this)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  §§goto(addr95);
                                                               }
                                                               addr124:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  break loop14;
                                                               }
                                                            }
                                                            while(_loc1_ || _loc2_)
                                                            {
                                                               §§push(this.§ ! §());
                                                               continue loop11;
                                                            }
                                                            continue loop4;
                                                            §§goto(addr34);
                                                         }
                                                         while(_loc1_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§goto(addr124);
                                                            §§goto(addr62);
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr46);
                                             }
                                             §§goto(addr81);
                                          }
                                          §§goto(addr62);
                                       }
                                       §§goto(addr42);
                                    }
                                    addr112:
                                 }
                                 §§goto(addr125);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr121);
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §&L§() : Number
      {
         return Number(Math.sqrt(this.§`e§().GetLinearVelocity().x * this.§`e§().GetLinearVelocity().x + this.§`e§().GetLinearVelocity().y * this.§`e§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(_loc10_)
         {
            §§push(this.§4!Y§());
            while(!§§pop())
            {
               while(true)
               {
                  §§push(this.§1A§);
                  while(true)
                  {
                     §§push(§§pop().§!R§());
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§#g§);
                              while(true)
                              {
                                 §§push(0);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr720:
                                                while(_loc10_)
                                                {
                                                   §§push(param6);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             addr719:
                                          }
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(this.§#g§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               addr611:
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(param1);
                                                                  loop58:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#g§);
                                                                     loop59:
                                                                     while(true)
                                                                     {
                                                                        addr618:
                                                                        if(§§pop() >= §§pop() / 2)
                                                                        {
                                                                           addr619:
                                                                           if(!_loc9_)
                                                                           {
                                                                              this.§0!5§(§"B§.§!!E§);
                                                                              addr625:
                                                                              if(_loc10_ || param3)
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    addr584:
                                                                                    §§push(this.§2!N§());
                                                                                    do
                                                                                    {
                                                                                       addr589:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr597:
                                                                                             §§pop();
                                                                                             addr598:
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                addr548:
                                                                                                §§push(this.§+_§);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr552:
                                                                                                   loop81:
                                                                                                   for(; !(_loc10_ || param1); while(true)
                                                                                                   {
                                                                                                      continue loop81;
                                                                                                      addr711:
                                                                                                   })
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(30);
                                                                                                         loop83:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_ && param1)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               while(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  §§push(12);
                                                                                                                  while(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param2))
                                                                                                                        {
                                                                                                                           this.§0!5§(§"B§.§>!W§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop81;
                                                                                                                           }
                                                                                                                           addr691:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr720);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr654:
                                                                                                                  §§push(param1);
                                                                                                                  loop74:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(3);
                                                                                                                     addr657:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop83;
                                                                                                                        }
                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                        {
                                                                                                                           continue loop81;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§0!5§(§"B§.§!!E§);
                                                                                                                           addr664:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 continue loop81;
                                                                                                                              }
                                                                                                                              §§goto(addr680);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop74;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr747:
                                                                                                               return §§pop();
                                                                                                               addr671:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§push(this.§ !G§);
                                                                                                if(!(_loc9_ && param2))
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                }
                                                                                                continue loop59;
                                                                                                continue;
                                                                                                return §§pop();
                                                                                             }
                                                                                             addr728:
                                                                                             §§goto(addr740);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    while(!(_loc10_ || param2));
                                                                                    
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr571:
                                                                                       §§push(this);
                                                                                       §§push(this.§ !G§);
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       §§pop().§+_§ = §§pop();
                                                                                    }
                                                                                    §§push(this.§+_§);
                                                                                    continue loop58;
                                                                                 }
                                                                                 this.§0!5§(§"B§.§!G§);
                                                                              }
                                                                              §§goto(addr711);
                                                                           }
                                                                           §§goto(addr664);
                                                                        }
                                                                        §§goto(addr584);
                                                                     }
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     addr740:
                                                                     return this.§+_§;
                                                                  }
                                                                  §§goto(addr656);
                                                               }
                                                               else
                                                               {
                                                                  addr697:
                                                                  §§push(param1);
                                                               }
                                                               §§goto(addr698);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr505:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#g§);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr523:
                                                                              while(_loc10_)
                                                                              {
                                                                                 param1 = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              §§goto(addr671);
                                                                           }
                                                                           addr522:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr618);
                                                                        }
                                                                        §§goto(addr654);
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               addr503:
                                                            }
                                                            §§goto(addr552);
                                                         }
                                                      }
                                                   }
                                                   addr606:
                                                }
                                                §§goto(addr697);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr728);
                     }
                  }
               }
            }
            §§goto(addr747);
            §§push(this.§+_§);
         }
         §§goto(addr480);
      }
      
      public function §0!5§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §[g§.§,D§(param1,this.§0o§.§7=§);
         }
      }
      
      public function §+S§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§0o§.material.§ v§(param1));
         if(_loc2_)
         {
            return §§pop() * this.§8C§;
         }
      }
      
      public function §>R§(param1:String) : Number
      {
         return this.§0o§.material.§>1§(param1);
      }
      
      public function §,X§() : String
      {
         return this.§0o§.material.mName;
      }
      
      public function §1!G§() : Number
      {
         return this.§0o§.§#!,§();
      }
      
      public function §`K§() : int
      {
         return this.§0o§.§2_§();
      }
      
      public function §;]§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§`e§().IsAwake());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
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
                              §§push(this.§2!N§());
                              loop5:
                              for(; !_loc3_; if(_loc3_ && _loc1_)
                              {
                                 continue;
                              },§§goto(addr73))
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr186:
                                             while(_loc2_ || _loc3_)
                                             {
                                                §§push(this.§+_§ == this.§ !G§);
                                                while(!_loc3_)
                                                {
                                                }
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          addr185:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop12:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr176:
                                                   while(true)
                                                   {
                                                      §§push(Math.abs(this.§`e§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                      addr132:
                                                      while(!(_loc2_ || _loc3_))
                                                      {
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(!_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr73:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop18:
                                                               for(; _loc2_; §§push(Math.abs(this.§`e§().§[H§()) > b2Settings.b2_angularSleepTolerance * _loc1_),if(_loc3_)
                                                               {
                                                                  continue;
                                                               })
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(_loc2_)
                                                                        {
                                                                           §§push(Math.abs(this.§`e§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr132);
                                                                        }
                                                                        §§goto(addr176);
                                                                        addr161:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr185);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §>!<§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§`e§().IsAwake());
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr46:
                     §§push(true);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr70);
               }
               §§push(this.§;Q§());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(!§§pop());
               }
            }
            addr70:
            return §§pop();
         }
         §§goto(addr46);
      }
      
      protected function §;Q§() : Boolean
      {
         return this.final.§;Q§();
      }
      
      public function §!!3§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8C§ = param1;
            do
            {
               if(this.§8C§ <= 1)
               {
                  §§push(this.§5d§);
                  if(_loc3_)
                  {
                     §§pop().§9!'§ = null;
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(_loc3_ || param1)
                     {
                        §§goto(addr20);
                     }
                     addr63:
                     §§push(this.§5d§);
                  }
                  §§pop().§-§();
                  continue;
               }
               §§goto(addr63);
            }
            while(_loc2_);
            
         }
         addr20:
      }
      
      public function §>!+§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc4_)
         {
            §§push(this.§0o§.§4!?§());
            loop0:
            while(true)
            {
               if(§§pop() == §9!,§.§;a§)
               {
                  if(_loc4_)
                  {
                     §§push(this.§5d§.mW);
                     while(true)
                     {
                        §§push(this.§5d§.mH);
                        addr206:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr217:
                           while(true)
                           {
                              §§push(§ p§.§]!E§);
                              addr219:
                              while(true)
                              {
                                 §§push(§ p§.§]!E§);
                                 addr221:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr222:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr223:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr224:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr203:
                  }
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       break;
                                    }
                                    addr167:
                                    while(true)
                                    {
                                       §§push(this.§[O§.§ i§());
                                       loop23:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc3_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop17:
                                                while(!_loc3_)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(param1)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                         addr160:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         addr55:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§#![§);
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     §§push(this.§#![§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr82:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr91:
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ || this))
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr159:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr217);
                                                                                          }
                                                                                       }
                                                                                       addr144:
                                                                                    }
                                                                                    §§goto(addr160);
                                                                                 }
                                                                                 §§goto(addr159);
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           addr90:
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr144);
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr206);
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                     addr134:
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr82);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr132:
                                                      while(true)
                                                      {
                                                         §§goto(addr134);
                                                         continue loop24;
                                                      }
                                                   }
                                                }
                                                §§goto(addr223);
                                                addr181:
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr181);
                                       }
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr55);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr91);
                     }
                     return §§pop();
                  }
               }
               else
               {
                  §§push(this.§`e§().GetMass());
               }
               §§goto(addr167);
            }
         }
         §§goto(addr131);
      }
      
      public function §!C§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_ || _loc3_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(_loc1_);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(2);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() * Math.min(10,this.§5d§.§6j§ - 1));
                        if(!(_loc3_ && this))
                        {
                           addr79:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           addr96:
                           _loc1_ = §§pop();
                           return _loc1_;
                        }
                     }
                     §§goto(addr96);
                  }
               }
               §§goto(addr79);
            }
         }
         §§goto(addr96);
      }
      
      public function §5!W§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§`e§().GetLinearVelocity().x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`e§().GetLinearVelocity().y);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && this))
         {
            §§push(_loc2_);
            if(!(_loc6_ && param1))
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
               }
               addr151:
            }
            loop1:
            while(true)
            {
               §§push(Number(§§pop()));
               loop2:
               while(true)
               {
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        if(_loc6_ && _loc3_)
                        {
                           continue loop2;
                        }
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              addr120:
                              §§push(Number(§§pop()));
                           }
                           if(_loc6_)
                           {
                              break;
                           }
                           _loc3_ = §§pop();
                           loop4:
                           while(!(_loc6_ && _loc2_))
                           {
                              while(true)
                              {
                                 this.§`e§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           continue;
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr120);
                  }
                  continue loop1;
               }
            }
         }
         §§goto(addr131);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§do§) : void
      {
      }
      
      public function addDamageParticles(param1:§do§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!S§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.§`e§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc6_)
         {
            §§push(param2.x * param1);
            if(_loc6_ || param3)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!_loc5_)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc6_ || param1)
            {
               §§push(param2.y * param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         do
         {
            this.§`e§().§;!1§(_loc4_);
         }
         while(!_loc6_);
         
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc6_ && param1))
         {
            if(param2)
            {
               while(true)
               {
                  §§push(this.§?%§());
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(360);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§push(360);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(Number(0));
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc6_ && param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() % §§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    _loc5_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr125);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr233:
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr233);
                                                                     }
                                                                     addr221:
                                                                  }
                                                                  addr125:
                                                                  §§goto(addr293);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            continue loop7;
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
                  break;
               }
               addr293:
               loop15:
               while(true)
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && param2))
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              §§push(param1);
                              loop16:
                              while(true)
                              {
                                 §§push(§§pop() / 2);
                                 if(_loc7_ || this)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc7_ || param1)
                                             {
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   addr182:
                                                   §§push(Number(§§pop() - §§pop()));
                                                   if(_loc7_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc7_ || param1)
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               addr29:
                                                               while(true)
                                                               {
                                                                  this.§6!G§(_loc4_);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§push(this.§?%§());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr283:
                                                                                    §§push(param1);
                                                                                    break loop16;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr279:
                                                                              }
                                                                              continue loop18;
                                                                              break loop15;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop25;
                                                      }
                                                      continue loop25;
                                                      addr186:
                                                   }
                                                   break loop15;
                                                }
                                                break;
                                             }
                                             break loop15;
                                          }
                                          continue loop14;
                                       }
                                       §§goto(addr186);
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       if(_loc7_ || param1)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop10;
                                          }
                                       }
                                       §§goto(addr283);
                                    }
                                 }
                                 break;
                                 addr73:
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(§§pop() - _loc5_);
                                    if(!(_loc6_ && param1))
                                    {
                                       if(!(_loc7_ || param2))
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc7_ || param1)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§goto(addr117);
                                                }
                                                break loop15;
                                             }
                                             continue loop5;
                                          }
                                          continue loop23;
                                       }
                                       §§goto(addr283);
                                    }
                                    break;
                                 }
                              }
                              addr284:
                              §§push(§§pop() + §§pop());
                              if(_loc7_ || param1)
                              {
                                 break loop0;
                              }
                              break;
                           }
                           continue loop1;
                        }
                        continue loop13;
                     }
                     continue loop24;
                  }
                  §§goto(addr182);
                  continue loop25;
               }
               var _loc3_:* = §§pop();
               if(_loc7_ || this)
               {
                  §§push(Math.round(_loc3_ / 22.5) * 22.5);
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
               do
               {
                  this.§6!G§(_loc3_);
               }
               while(_loc6_);
               
               return;
               §§push(Number(§§pop()));
            }
            §§goto(addr279);
         }
         §§goto(addr221);
      }
      
      public function §%b§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§]p§(this.§`e§().GetAngle()));
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(360);
                  if(_loc3_ || _loc2_)
                  {
                     addr124:
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop1:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop2:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(§?!b§(_loc2_));
                              if(!_loc4_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              addr93:
                              if(_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 do
                                 {
                                    this.§`e§().§@o§(_loc2_);
                                 }
                                 while(_loc4_ && this);
                                 
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    return;
                                    addr71:
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr124);
            }
         }
         §§goto(addr71);
      }
      
      public function §3`§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && _loc3_))
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§`e§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && param2))
         {
            §§push(§§pop() - param2.x);
            if(_loc15_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop() - param2.y);
            if(!_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc15_ || param2)
         {
            §§push(_loc4_);
            if(!(_loc14_ && _loc3_))
            {
               §§push(0);
               if(!(_loc14_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc14_ && param2))
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && param1))
                        {
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr118);
                  }
                  addr110:
                  §§pop();
                  if(!_loc14_)
                  {
                     §§push(_loc5_);
                     if(!_loc14_)
                     {
                        addr118:
                        if(§§pop() == 0)
                        {
                           if(_loc15_)
                           {
                              §§goto(addr121);
                           }
                           else
                           {
                              addr122:
                              §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                           }
                        }
                        §§goto(addr122);
                     }
                     var _loc6_:* = §§pop();
                     §§push(_loc4_);
                     if(_loc15_)
                     {
                        §§push(§§pop() / _loc5_);
                        if(!_loc14_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc7_:* = §§pop();
                     §§push(Math.atan(_loc7_) * 180);
                     if(!(_loc14_ && param1))
                     {
                        §§push(§§pop() / Math.PI);
                        if(_loc15_)
                        {
                           addr169:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        if(!(_loc14_ && param1))
                        {
                           §§push(_loc5_);
                           if(_loc15_)
                           {
                              §§push(0);
                              if(_loc15_ || param1)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(_loc8_);
                                       if(!_loc14_)
                                       {
                                          addr201:
                                          §§push(§§pop() + 180);
                                          if(_loc15_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc15_)
                                             {
                                                addr212:
                                                _loc8_ = §§pop();
                                                §§push(_loc8_);
                                                if(_loc15_)
                                                {
                                                   addr216:
                                                   §§push(param1);
                                                   if(_loc15_ || param2)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc14_)
                                                      {
                                                         addr228:
                                                         §§push(Number(§§pop()));
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * Math.PI);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() / 180);
                                                         if(!_loc14_)
                                                         {
                                                            addr241:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(Math.sin(_loc10_) * _loc6_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      §§push(Math.cos(_loc10_) * _loc6_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                      if(_loc15_)
                                                      {
                                                         this.§`e§().§;!1§(_loc13_);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr241);
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr169);
                  }
                  addr121:
                  return;
               }
            }
            §§goto(addr118);
         }
         §§goto(addr122);
      }
   }
}
