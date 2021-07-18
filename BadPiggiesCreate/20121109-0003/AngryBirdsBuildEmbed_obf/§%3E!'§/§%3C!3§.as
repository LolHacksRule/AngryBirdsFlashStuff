package §>!'§
{
   import § !r§.§`![§;
   import § !t§.b2Body;
   import § !t§.b2BodyDef;
   import § !t§.b2FilterData;
   import § !t§.b2Fixture;
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §#b§.b2PolygonShape;
   import §-!`§.Sprite;
   import §1?§.§+!§;
   import §<!<§.§ !p§;
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import §?!6§.§"!0§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   import §?!6§.§]!@§;
   import §?!6§.§`4§;
   import §?s§.b2Settings;
   import flash.geom.Point;
   
   public class §<!3§
   {
      
      public static const §4!Q§:uint;
      
      public static const §[l§:uint;
      
      public static const §,!p§:uint;
      
      public static const §,Q§:uint;
      
      public static const §30§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§4!Q§));
            §§push(1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§4!Q§ = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§push(§§findproperty(§[l§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§[l§ = §§pop();
               if(_loc2_ || §<!3§)
               {
                  addr62:
                  §§push(§§findproperty(§,!p§));
                  §§push(1);
                  if(_loc2_ || §<!3§)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§,!p§ = §§pop();
                  if(!_loc1_)
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr100);
               }
               addr86:
               §§push(§§findproperty(§,Q§));
               §§push(1);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() << 4);
               }
               §§pop().§,Q§ = §§pop();
               if(!_loc1_)
               {
                  addr100:
                  §30§ = true;
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      private var §<!g§:int;
      
      private var §-o§:int;
      
      public var §>p§:String;
      
      public var §&!j§:int;
      
      private var §2h§:§]!@§;
      
      private var §7f§:§'!Y§;
      
      private var §&4§:b2World;
      
      private var §4!%§:b2Fixture;
      
      private var §^[§:b2Body;
      
      private var §7!b§:b2Vec2;
      
      public var §!!>§:Number;
      
      public var §1!s§:Number;
      
      private var §3z§:Number;
      
      private var §8B§:Boolean = false;
      
      private var § t§:Number;
      
      private var §0t§:Number;
      
      private var §4v§:Number;
      
      private var §2!h§:Number;
      
      private var §;8§:Number;
      
      private var §+!^§:Number;
      
      public var §^3§:Number = 1;
      
      private var §02§:Boolean = false;
      
      public var §,!R§:Number = 0;
      
      public var §'!f§:Number = 0;
      
      protected var §[W§:Boolean = false;
      
      public var §0!E§:§6!N§;
      
      private var §>E§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §;i§:Number = 0;
      
      private var §7P§:Number = 1.0;
      
      private var §>r§:Boolean = false;
      
      private var §[v§:Boolean = true;
      
      public function §<!3§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         super();
         this.§>p§ = param6;
         this.§2h§ = §1!!§.§#P§(param6);
         if(_loc16_)
         {
            this.§7f§ = param1;
            this.§>E§ = param2;
            if(_loc16_ || param3)
            {
               this.§7P§ = param10;
               this.§>r§ = param11;
               addr50:
               this.§<!g§ = param5;
               this.§&!j§ = this.§2h§.§&!j§;
               this.§-o§ = this.§2h§.§36§();
               if(_loc16_)
               {
                  this.§0!E§ = new §6!N§(this,param2,param4);
                  §§push(this.§0!E§);
                  if(!(_loc17_ && param2))
                  {
                     if(!§§pop().§3!F§(param1.§-n§.§@!o§))
                     {
                        §§push(this.§0!E§);
                        if(!(_loc17_ && param3))
                        {
                           addr95:
                           §§push(this.§-o§);
                           if(_loc16_)
                           {
                              §§pop().§-!,§(§§pop(),this.§2h§.§'!0§(),this.§2h§.§`!C§() / §7E§.§8!'§,this.§2h§.§@!H§() / §7E§.§8!'§);
                              addr117:
                              §§push(this.§0!E§);
                              §§push(this.§-o§);
                           }
                           §§pop().§in §(§§pop() == §"!0§.§3I§);
                           this.§&4§ = param3;
                           var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                           this.§^[§ = this.§&4§.§ i§(_loc12_);
                           if(_loc16_ || param2)
                           {
                              this.§^[§.§[!X§(this);
                              §§push(this.§-o§);
                              if(_loc16_ || param2)
                              {
                                 §§push(§"!0§.§'5§);
                                 if(_loc16_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc17_)
                                       {
                                          §§push(b2PolygonShape);
                                          §§push(this.§2h§.shape.§4!L§);
                                          if(_loc16_)
                                          {
                                             §§push(param10);
                                             if(!_loc17_)
                                             {
                                                addr176:
                                                §§push(§§pop() * §§pop());
                                                §§push(this.§2h§.shape.§"!C§);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() * param10);
                                                }
                                             }
                                             _loc14_ = §§pop().§4J§(§§pop(),§§pop());
                                             if(!(_loc17_ && param1))
                                             {
                                                this.§4!%§ = this.§^[§.CreateFixture2(_loc14_,this.§2h§.§?W§());
                                                if(!(_loc17_ && param1))
                                                {
                                                   addr271:
                                                   §§push(this.§4!%§);
                                                   if(!(_loc17_ && param2))
                                                   {
                                                      §§push(this.§2h§);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop().§4!'§());
                                                         if(_loc16_)
                                                         {
                                                            §§pop().§3R§(§§pop());
                                                            if(_loc16_ || param3)
                                                            {
                                                               addr300:
                                                               this.§4!%§.§<p§(this.§2h§.§ U§());
                                                            }
                                                            var _loc13_:b2FilterData = new b2FilterData();
                                                            if(_loc16_ || param3)
                                                            {
                                                               §§push(this.§;L§());
                                                               if(!_loc17_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc13_.§]!J§ = §4!Q§;
                                                                     if(!_loc17_)
                                                                     {
                                                                        addr322:
                                                                        §§push(_loc13_);
                                                                        §§push(65535);
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(§§pop() & ~§[l§);
                                                                        }
                                                                        §§pop().§#$§ = §§pop();
                                                                        if(_loc16_)
                                                                        {
                                                                           addr392:
                                                                           this.§4!%§.§1!i§(_loc13_);
                                                                           this.§3z§ = this.§2h§.§?!l§();
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(this.§2h§);
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(§§pop().§1!s§);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          this.§!!>§ = this.§1!s§ = this.§2h§.§1!s§;
                                                                                          if(!(_loc17_ && param3))
                                                                                          {
                                                                                             addr469:
                                                                                             if(this.§2h§.§&!j§ == §]!@§.§!!3§)
                                                                                             {
                                                                                                this.§>E§.visible = false;
                                                                                                addr502:
                                                                                                if(this.isTexture())
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr507:
                                                                                                      if(param9 != 0)
                                                                                                      {
                                                                                                         this.§?!1§(param9);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                                §§goto(addr507);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.§0!E§);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§pop().setDamagedFrame();
                                                                                                   if(!(_loc17_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr502);
                                                                                                   }
                                                                                                   §§goto(addr507);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§!!>§ = this.§1!s§ = Math.round(this.§'J§(true) * this.§2h§.§2!A§());
                                                                                          addr450:
                                                                                          §§push(this.§!!>§);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                addr457:
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      this.§!!>§ = this.§1!s§ = 1;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr507);
                                                                                    }
                                                                                    §§goto(addr457);
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                           }
                                                                           §§goto(addr469);
                                                                        }
                                                                        §§goto(addr450);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr374:
                                                                        _loc13_.§]!J§ = §[l§;
                                                                        §§push(_loc13_);
                                                                        §§push(65535);
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           §§push(§§pop() & ~§4!Q§);
                                                                        }
                                                                        §§pop().§#$§ = §§pop();
                                                                        if(_loc16_)
                                                                        {
                                                                           §§goto(addr392);
                                                                        }
                                                                     }
                                                                     addr513:
                                                                     this.§=!_§();
                                                                     this.§[!o§(0,1);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr523:
                                                                        this.§0!E§.§&u§(this.§2h§.shape);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§push(this.§>p§);
                                                                  if(!(_loc17_ && this))
                                                                  {
                                                                     §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        addr352:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              addr361:
                                                                              §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr366:
                                                                                 §§push(this.§>p§.toUpperCase() == "MISC_FOOD_EGG");
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr371:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§goto(addr374);
                                                                                       }
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 }
                                                                                 §§goto(addr502);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr502);
                                                                        }
                                                                        §§goto(addr371);
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                                  §§goto(addr366);
                                                                  §§goto(addr502);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr300);
                                                   addr210:
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§-o§);
                                       if(!(_loc17_ && param3))
                                       {
                                          addr220:
                                          §§push(§"!0§.§3I§);
                                          if(!(_loc17_ && param2))
                                          {
                                             addr229:
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc17_ && this))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc16_)
                                                   {
                                                      §§pop();
                                                      addr246:
                                                      §§push(this.§-o§ == §"!0§.§`C§);
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                this.§4!%§ = this.§^[§.CreateFixture2(this.§2h§.shape.§8!8§(param10),this.§2h§.§?W§());
                                             }
                                             §§goto(addr271);
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr271);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr50);
      }
      
      public static function §1a§(param1:int, param2:§@T§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2 == null)
            {
               if(_loc6_ || §<!3§)
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§#"§[param1]);
         if(_loc6_ || param3)
         {
            if(§§pop().length > 0)
            {
               if(_loc6_)
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc6_ || §<!3§)
                        {
                           §§push(param2.§>t§);
                           if(_loc6_ || param1)
                           {
                              addr91:
                              §§push(§§pop());
                           }
                           param3 = §§pop();
                           if(_loc5_ && param3)
                           {
                           }
                        }
                        §§goto(addr104);
                     }
                     §+!§.§&!b§(_loc4_,param3);
                  }
                  §§goto(addr91);
               }
            }
            addr104:
            return;
         }
         §§goto(addr91);
      }
      
      public static function §8!&§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(180);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr48);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr48:
         §§push(§§pop() - §§pop());
         if(_loc2_ || _loc2_)
         {
            §§push(§§pop() % 360);
         }
         return §§pop();
      }
      
      public static function §9!<§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         return §§pop();
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function get front() : Boolean
      {
         return this.§>r§;
      }
      
      public function get §1!M§() : Number
      {
         return this.§^[§.GetPosition().x;
      }
      
      public function get §7"§() : Number
      {
         return this.§^[§.GetPosition().y;
      }
      
      public function get §9U§() : §]!@§
      {
         return this.§2h§;
      }
      
      public function get §7T§() : Boolean
      {
         return this.§3z§ >= 0;
      }
      
      protected function get container() : §'!Y§
      {
         return this.§7f§;
      }
      
      public function get §[U§() : Boolean
      {
         return this.§[v§;
      }
      
      public function set §[U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[v§ = param1;
         }
      }
      
      public function set §?!A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8B§ = param1;
         }
      }
      
      public function get §3!6§() : Boolean
      {
         return this.§02§;
      }
      
      public function set §3!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§02§ = param1;
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
      
      public function §>!e§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4!%§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().§1!i§(param1);
         }
         addr49:
         if(!(_loc3_ && this))
         {
            §§push(this.§4!%§);
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc4_)
         {
            §§push(_loc3_.position);
            if(!(_loc5_ && param2))
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§pop().x = §§pop();
                  if(!(_loc5_ && this))
                  {
                     addr60:
                     _loc3_.position.y = param2;
                     if(_loc4_)
                     {
                        _loc3_.type = this.§2h§.§2<§();
                        if(_loc4_ || param2)
                        {
                           _loc3_.§[_§ = true;
                           if(_loc4_)
                           {
                              addr90:
                              _loc3_.active = true;
                           }
                           _loc3_.§5@§ = true;
                           §§goto(addr96);
                        }
                        addr96:
                        _loc3_.§<!A§ = 1;
                        if(_loc4_)
                        {
                           _loc3_.§@x§ = false;
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr90);
                  }
                  addr104:
                  return _loc3_;
               }
            }
            §§goto(addr60);
         }
         §§goto(addr96);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§&4§);
         if(_loc1_)
         {
            if(§§pop())
            {
               if(!(_loc2_ && this))
               {
                  addr30:
                  this.§&4§.§[!F§(this.getBody());
                  this.§&4§ = null;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr53:
                     this.§0!E§.dispose();
                  }
                  §§push(this.§>E§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || _loc1_)
                        {
                           addr85:
                           this.§>E§.dispose();
                           this.§>E§ = null;
                           addr89:
                           this.§4!%§ = null;
                           if(!(_loc2_ && this))
                           {
                              this.§7!b§ = null;
                           }
                        }
                        this.§2h§ = null;
                        return;
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr53);
         }
         §§goto(addr30);
      }
      
      public function §?!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.getBody());
            §§push(360);
            §§push(param1);
            if(_loc2_ || this)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§]<§(§§pop());
         }
      }
      
      public function §;x§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.getBody().GetAngle());
         if(!_loc1_)
         {
            §§push(180);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || this)
               {
               }
               §§goto(addr71);
            }
            §§push(§§pop() % §§pop());
         }
         addr71:
         §§push(§§pop() / Math.PI);
         if(_loc2_ || _loc1_)
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop() % 360);
         }
         return §§pop();
      }
      
      public function §`w§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.getBody().SetLinearVelocity(param1);
            if(_loc5_)
            {
               addr50:
               §§push(param2);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr56);
                     }
                  }
               }
               §§goto(addr60);
            }
            addr56:
            this.§'!U§();
            if(!_loc4_)
            {
               addr60:
               if(param3)
               {
                  if(!(_loc4_ && this))
                  {
                     this.§9P§();
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§4!%§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §§push(this.getBody());
            if(_loc6_)
            {
               §§push(§§pop().GetPosition());
               if(_loc6_)
               {
                  §§push(§§pop().x);
                  if(!(_loc5_ && param2))
                  {
                     §§push(param3);
                     if(!(_loc5_ && param3))
                     {
                        §§push(§§pop() >= §§pop());
                        §§push(§§pop() >= §§pop());
                        if(_loc6_ || param3)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 addr60:
                                 §§push(this.getBody());
                                 if(_loc6_)
                                 {
                                    addr74:
                                    §§push(§§pop().GetPosition());
                                    if(!(_loc5_ && param2))
                                    {
                                       addr82:
                                       §§push(§§pop().x);
                                       if(!_loc5_)
                                       {
                                          §§push(param4);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             if(!_loc5_)
                                             {
                                                addr91:
                                                §§push(§§pop());
                                                if(_loc6_ || param1)
                                                {
                                                   addr99:
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr102:
                                                         §§pop();
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            §§push(this.getBody());
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               addr129:
                                                               §§push(§§pop().GetPosition());
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr153);
                                                                     }
                                                                     addr153:
                                                                     return §§pop() >= §§pop() && param2;
                                                                     §§push(§§pop() <= §§pop());
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                   }
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr153);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr151);
               }
               §§goto(addr82);
            }
            §§goto(addr74);
         }
         §§goto(addr60);
      }
      
      public function §'!S§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!b§ = param1;
         }
      }
      
      public function §2!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§7!b§)
            {
               if(_loc1_)
               {
                  this.§`w§(this.§7!b§,false);
                  if(_loc1_ || this)
                  {
                     addr45:
                     this.§7!b§ = null;
                  }
               }
               §§goto(addr45);
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §'!U§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr27:
                  §§push(this.getBody());
                  if(_loc2_ || _loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr39:
                     §§push(param1.x);
                     if(_loc2_ || this)
                     {
                        §§push(0);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr83:
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       addr90:
                                       addr89:
                                       addr88:
                                       if(param1.y == 0)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(this.getBody());
                                             if(!(_loc3_ && this))
                                             {
                                                addr112:
                                                §§pop().SetAngularVelocity(0);
                                                if(_loc2_ || param1)
                                                {
                                                   addr131:
                                                   return;
                                                   addr121:
                                                }
                                             }
                                          }
                                          §§goto(addr131);
                                       }
                                       else
                                       {
                                          §§push(this.getBody());
                                       }
                                       §§pop().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                                    }
                                    §§goto(addr131);
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr112);
               }
               §§goto(addr121);
            }
            §§goto(addr39);
         }
         §§goto(addr27);
      }
      
      public function §9P§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!param1)
            {
               addr46:
               param1 = this.getBody().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               this.§?!1§(_loc2_);
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §>!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.getBody().SetAngularVelocity(param1);
         }
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§4!%§);
            if(!(_loc1_ && this))
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(this.§4!%§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return §§pop().GetBody();
         }
         addr46:
         return null;
      }
      
      public function §'=§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1 != -9999)
            {
               if(_loc3_)
               {
                  this.mX = param1;
                  if(!(_loc4_ && param2))
                  {
                     this.mY = param2;
                     if(!(_loc4_ && param2))
                     {
                        addr53:
                        §§push(this.getBody());
                        if(_loc3_)
                        {
                           §§push(§§pop().GetPosition());
                           if(_loc3_ || this)
                           {
                              §§push(this.mX);
                              if(!(_loc4_ && param2))
                              {
                                 §§push(§7E§.§8!'§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       §§goto(addr96);
                                    }
                                 }
                                 §§goto(addr111);
                              }
                              addr96:
                              §§pop().x = §§pop();
                              if(_loc3_ || param1)
                              {
                                 addr107:
                                 addr106:
                                 addr104:
                                 §§push(this.getBody().GetPosition());
                                 §§push(this.mY);
                                 if(_loc3_)
                                 {
                                    addr111:
                                    §§push(§§pop() * §7E§.§8!'§);
                                 }
                                 §§pop().y = §§pop();
                                 §§goto(addr115);
                              }
                              addr115:
                              return;
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr53);
      }
      
      public function §[!o§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(!(_loc6_ && this))
         {
            if(this.§[W§)
            {
               _loc3_ = true;
               if(_loc5_ || param1)
               {
                  addr39:
                  this.§[W§ = false;
                  addr42:
                  §§push(this.updateSpecialAnimation(param2));
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        _loc3_ = true;
                        if(_loc5_)
                        {
                           addr57:
                           §§push(this.updateFlyingFrameAnimations(param2));
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 §§push(true);
                                 if(_loc5_ || param1)
                                 {
                                    addr71:
                                    _loc3_ = §§pop();
                                    addr72:
                                    if(this.updateScreamingFrameAnimations(param2))
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          addr83:
                                          §§push(true);
                                          if(!(_loc6_ && param2))
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc5_)
                                             {
                                                addr94:
                                                §§push(this.updateBlinkingFrameAnimations(param2));
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(true);
                                                         if(!_loc6_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr113:
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§push(this.§0!E§);
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        §§pop().§]T§();
                                                                        addr132:
                                                                        §§push(this.§^3§);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr148:
                                                                           §§push(§§pop() > 1);
                                                                           if(§§pop() > 1)
                                                                           {
                                                                              addr150:
                                                                              §§pop();
                                                                              §§push(this.§0!E§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(Boolean(§§pop().§4!3§));
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr159:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(4);
                                                                                          §§push(this.§0!E§.§4!3§.blurX - 4);
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() / 20);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr194:
                                                                                                §§push(§§pop() % 28);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                addr205:
                                                                                                _loc4_ = §§pop();
                                                                                                §§push(this.§0!E§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§pop().§4!3§.blurX = _loc4_;
                                                                                                   addr213:
                                                                                                   §§push(this.§0!E§);
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      addr222:
                                                                                                      §§pop().§4!3§.blurY = _loc4_;
                                                                                                      addr227:
                                                                                                      this.§0!E§.§2!g§(param2);
                                                                                                      if(§30§)
                                                                                                      {
                                                                                                         this.§6l§(param1);
                                                                                                         addr247:
                                                                                                         §§push(this.§>E§);
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            §§pop().x = Math.round(this.mX);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr273:
                                                                                                               §§push(this.§>E§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§pop().y = Math.round(this.mY);
                                                                                                                  addr284:
                                                                                                                  §§push(this.§>E§);
                                                                                                                  §§push(this.§;i§);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / 180);
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr297:
                                                                                                                        §§push(§§pop() * Math.PI);
                                                                                                                     }
                                                                                                                     §§pop().rotation = §§pop();
                                                                                                                     §§goto(addr301);
                                                                                                                  }
                                                                                                                  §§goto(addr297);
                                                                                                               }
                                                                                                               §§goto(addr284);
                                                                                                            }
                                                                                                            addr301:
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr284);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§;i§ = this.§4v§;
                                                                                                         addr239:
                                                                                                         this.mX = this.§ t§;
                                                                                                         this.mY = this.§0t§;
                                                                                                         §§goto(addr247);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr227);
                                                                                                }
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                             §§goto(addr205);
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                           §§goto(addr159);
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     §§goto(addr222);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr148);
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr71);
               }
               §§goto(addr83);
            }
            §§goto(addr42);
         }
         §§goto(addr39);
      }
      
      public function §=!_§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.getBody().GetPosition().x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.getBody().GetPosition().y);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            this.§+!^§ = this.§4v§;
            if(!_loc4_)
            {
               this.§2!h§ = this.§ t§;
               if(_loc3_)
               {
                  this.§;8§ = this.§0t§;
                  §§push(this);
                  §§push(this.getBody().GetAngle());
                  if(!_loc4_)
                  {
                     §§push(180);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§goto(addr107);
                     }
                     §§push(§§pop() % §§pop());
                  }
                  §§goto(addr107);
               }
               addr107:
               §§push(§§pop() * (§§pop() / Math.PI));
               if(!(_loc4_ && _loc3_))
               {
                  §§push(360);
               }
               §§pop().§4v§ = §§pop();
               §§push(this);
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(§§pop() / §7E§.§8!'§);
               }
               §§pop().§ t§ = §§pop();
               if(!_loc4_)
               {
                  addr118:
                  §§push(this);
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() / §7E§.§8!'§);
                  }
                  §§pop().§0t§ = §§pop();
               }
               §§goto(addr126);
            }
            addr126:
            return;
         }
         §§goto(addr118);
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
      
      public function §6l§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(1e-9);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(§`![§);
                  §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                     if(!(_loc3_ && param2))
                     {
                        §§push(§§pop() + " overriding to 0");
                     }
                  }
                  §§pop().log(§§pop());
                  if(!(_loc3_ && this))
                  {
                     addr52:
                     §§push(param2);
                     if(!_loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§7f§.§-n§.§[!U§.§6!"§);
                              §§push(1000);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    param2 = §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr84:
                                       §§push(param1);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr93:
                                          §§push(§§pop() * -1);
                                          if(_loc4_ || param1)
                                          {
                                             param1 = §§pop();
                                             §§push(this.§ t§);
                                             if(!_loc3_)
                                             {
                                                addr107:
                                                §§push(this.§2!h§);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(§§pop() == §§pop()))
                                                   {
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         §§pop();
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            §§push(param1);
                                                            §§push(0);
                                                            if(_loc4_)
                                                            {
                                                               addr139:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     this.§,!R§ = 0;
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        this.mX = this.§ t§;
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr219:
                                                                           §§push(this.§0t§ == this.§;8§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    addr231:
                                                                                    §§push(param1);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr235:
                                                                                       §§push(§§pop() == 0);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr238:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             this.§'!f§ = 0;
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr249:
                                                                                                this.mY = this.§0t§;
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr303:
                                                                                                   §§push(this.§4v§);
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§+!^§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr325:
                                                                                                                     §§pop();
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr336:
                                                                                                                           §§push(§§pop() == 0);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              addr340:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    this.§;i§ = this.§4v§;
                                                                                                                                    addr348:
                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr369:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr556:
                                                                                                                                    §§push(this.§4v§);
                                                                                                                                    §§push(this.§+!^§);
                                                                                                                                    if(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       addr570:
                                                                                                                                       if(§§pop() - §§pop() <= 180)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§4v§);
                                                                                                                                             if(!(_loc3_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(param1);
                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§+!^§);
                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§4v§);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr616:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc4_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr614:
                                                                                                                                                            §§push(§§pop() / param2);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§;i§ = §§pop() + §§pop();
                                                                                                                                                         return;
                                                                                                                                                         addr617:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr614);
                                                                                                                                             }
                                                                                                                                             §§goto(addr616);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr664:
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§4v§);
                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(param1);
                                                                                                                                                if(_loc4_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§+!^§);
                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + 360);
                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - this.§4v§);
                                                                                                                                                         if(_loc4_ || param2)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr731:
                                                                                                                                                         §§pop().§;i§ = §§pop() + §§pop() / §§pop();
                                                                                                                                                         addr729:
                                                                                                                                                         §§goto(addr616);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc4_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr728:
                                                                                                                                                         §§goto(addr729);
                                                                                                                                                         §§push(param2);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr729);
                                                                                                                                                }
                                                                                                                                                §§goto(addr728);
                                                                                                                                             }
                                                                                                                                             §§goto(addr731);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(this.§+!^§);
                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                          {
                                                                                                                                             addr627:
                                                                                                                                             §§push(this.§4v§);
                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                             {
                                                                                                                                                addr638:
                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   addr639:
                                                                                                                                                   §§pop();
                                                                                                                                                   if(_loc4_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr647:
                                                                                                                                                      §§push(this.§4v§);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr654:
                                                                                                                                                         if(§§pop() - this.§+!^§ > 180)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr616);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr654);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr664);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr654);
                                                                                                                                       }
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    §§goto(addr654);
                                                                                                                                 }
                                                                                                                                 §§goto(addr616);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§+!^§ > this.§4v§);
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    addr382:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr388:
                                                                                                                                             §§pop();
                                                                                                                                             §§push(this.§+!^§);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§4v§);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr405:
                                                                                                                                                      §§push(180);
                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         if(!(_loc3_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr421:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr422:
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§4v§);
                                                                                                                                                               if(!(_loc3_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§+!^§);
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - this.§4v§);
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr454:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§;i§ = §§pop() + §§pop();
                                                                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr616);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr664);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr454);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§+!^§);
                                                                                                                                                               if(!(_loc3_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr475:
                                                                                                                                                                  §§push(§§pop() > this.§4v§);
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr478:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(this.§+!^§);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr487:
                                                                                                                                                                           §§push(§§pop() - this.§4v§);
                                                                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr495:
                                                                                                                                                                              §§push(180);
                                                                                                                                                                              if(_loc4_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr504:
                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(this.§4v§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§+!^§);
                                                                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - 360);
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr526:
                                                                                                                                                                                                §§push(§§pop() - this.§4v§);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr536:
                                                                                                                                                                                                   addr537:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§;i§ = §§pop() + §§pop();
                                                                                                                                                                                                   §§goto(addr616);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr536);
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr526);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr536);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr537);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr543:
                                                                                                                                                                                    §§push(this.§+!^§ < this.§4v§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr554:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr555:
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§goto(addr556);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr570);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr638);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr570);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr654);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr556);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr570);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr504);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr570);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr654);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr555);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr504);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr654);
                                                                                                                                                }
                                                                                                                                                §§goto(addr475);
                                                                                                                                             }
                                                                                                                                             §§goto(addr495);
                                                                                                                                          }
                                                                                                                                          §§goto(addr478);
                                                                                                                                       }
                                                                                                                                       §§goto(addr421);
                                                                                                                                    }
                                                                                                                                    §§goto(addr554);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr639);
                                                                                                                           }
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                        §§goto(addr495);
                                                                                                                     }
                                                                                                                     §§goto(addr556);
                                                                                                                  }
                                                                                                                  §§goto(addr382);
                                                                                                               }
                                                                                                               §§goto(addr340);
                                                                                                            }
                                                                                                            §§goto(addr638);
                                                                                                         }
                                                                                                         §§goto(addr388);
                                                                                                      }
                                                                                                      §§goto(addr543);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                §§goto(addr536);
                                                                                             }
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(param1);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(this.§;8§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() - this.§0t§);
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc4_ || param2)
                                                                                                      {
                                                                                                         addr283:
                                                                                                         §§push(§§pop() / param2);
                                                                                                      }
                                                                                                      §§pop().§'!f§ = §§pop();
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr287:
                                                                                                         §§push(this);
                                                                                                         §§push(this.§0t§);
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() + this.§'!f§);
                                                                                                         }
                                                                                                         §§pop().mY = §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr303);
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      §§goto(addr348);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    §§goto(addr543);
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                        §§goto(addr617);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this);
                                                                  §§push(param1);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(this.§2!h§);
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        §§push(§§pop() - this.§ t§);
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc3_ && param2))
                                                                           {
                                                                              addr201:
                                                                              §§push(§§pop() / param2);
                                                                           }
                                                                           §§pop().§,!R§ = §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§ t§);
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + this.§,!R§);
                                                                              }
                                                                              §§pop().mX = §§pop();
                                                                              §§goto(addr219);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr422);
                                                      }
                                                      §§goto(addr421);
                                                   }
                                                   §§goto(addr139);
                                                }
                                             }
                                             §§goto(addr570);
                                          }
                                          §§goto(addr475);
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr647);
                                 }
                                 §§goto(addr627);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr405);
                  }
                  §§goto(addr616);
               }
               §§goto(addr52);
            }
            §§goto(addr487);
         }
         §§goto(addr627);
      }
      
      public function get §9!f§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§30§)
            {
            }
         }
         return null;
      }
      
      public function §;L§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§&!j§);
            if(!(_loc2_ && this))
            {
               §§push(§]!@§.§`<§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           addr73:
                           §§pop();
                           §§push(this.§&!j§ == §]!@§.§6!<§);
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §%P§() : Boolean
      {
         return this.§&!j§ == §]!@§.§]4§;
      }
      
      public function §='§() : Boolean
      {
         return this.§&!j§ == §]!@§.§>K§;
      }
      
      public function §4!t§() : Boolean
      {
         return this.§&!j§ == §]!@§.§6!<§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&!j§ == §]!@§.§0>§;
      }
      
      public function isGround() : Boolean
      {
         return this.§&!j§ == §]!@§.§!!3§;
      }
      
      public function §;!Z§() : Boolean
      {
         return this.§&!j§ == §]!@§.§&l§;
      }
      
      public function §`T§() : Boolean
      {
         return this.§&!j§ == §]!@§.§6!r§;
      }
      
      public function §`x§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§>p§);
            if(!(_loc2_ && _loc1_))
            {
               §§push("MISC_EXPLOSIVE_TNT");
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_ || _loc1_)
                        {
                           §§pop();
                           if(!(_loc2_ && this))
                           {
                              addr83:
                              §§push(this.§>p§ == "POWERUP_BOMB");
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr91:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(true);
                                       if(_loc1_ || this)
                                       {
                                          §§goto(addr107);
                                       }
                                    }
                                    else
                                    {
                                       addr108:
                                       §§push(false);
                                    }
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr108);
                        }
                        return §§pop();
                     }
                     §§goto(addr91);
                  }
                  addr107:
                  return §§pop();
               }
            }
            §§goto(addr83);
         }
         §§goto(addr108);
      }
      
      public function §'c§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(Boolean(this.§%P§()));
            if(_loc1_ || this)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(_loc1_)
                     {
                        §§push(this.§;!Z§());
                        if(_loc1_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr79);
                  }
                  addr70:
                  §§push(Boolean(§§pop()));
                  §§push(Boolean(§§pop()));
                  if(_loc1_)
                  {
                     addr73:
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(_loc1_)
                           {
                              addr79:
                              §§push(this.§`T§());
                              if(_loc1_ || _loc1_)
                              {
                                 addr88:
                                 §§push(Boolean(§§pop()));
                                 if(!_loc2_)
                                 {
                                    §§goto(addr91);
                                 }
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr73);
            }
            addr91:
            if(§§pop())
            {
               addr93:
               §§pop();
               §§push(this.§3!6§);
               if(!_loc2_)
               {
                  addr98:
                  §§push(!§§pop());
               }
            }
            return §§pop();
         }
         §§goto(addr79);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §^![§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(this.§='§())
         {
            if(!_loc9_)
            {
               §§push(this.§!!>§);
               if(_loc10_)
               {
                  return §§pop();
               }
               §§goto(addr157);
            }
            else
            {
               addr230:
               §§push(this);
               §§push(this.§1!s§);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() - 1);
               }
               §§pop().§!!>§ = §§pop();
               if(!_loc9_)
               {
                  §§goto(addr244);
               }
               else
               {
                  §§goto(addr504);
               }
            }
         }
         else
         {
            §§push(this.§7f§);
            if(_loc10_ || param3)
            {
               if(!§§pop().§=!C§())
               {
                  §§push(this.§!!>§);
                  if(_loc10_ || this)
                  {
                     return §§pop();
                  }
                  addr123:
                  §§push(12);
                  if(_loc10_)
                  {
                     if(§§pop() > §§pop())
                     {
                        this.§97§(§@T§.§"!=§);
                        if(_loc10_)
                        {
                           addr155:
                           addr157:
                           return §§pop();
                           §§push(this.§!!>§);
                        }
                        else
                        {
                           addr342:
                           §§push(this.§7f§.§-n§);
                           §§push(_loc8_);
                           §§push(§ !p§.§>F§);
                           if(!(_loc9_ && this))
                           {
                              §§push(this.§!!>§ > param1);
                              if(_loc10_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§pop();
                                       addr371:
                                       §§push(param3);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              §§pop().addScore(§§pop(),§§pop(),§§pop(),this.getBody().GetPosition().x,this.getBody().GetPosition().y,§!r§.§&M§(this.§>p§));
                              if(_loc10_)
                              {
                                 addr395:
                                 §§push(Boolean(param5));
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc9_ && param2))
                                    {
                                       addr407:
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             addr410:
                                             §§pop();
                                             §§push(Boolean(this.§8B§));
                                             if(_loc10_)
                                             {
                                                §§goto(addr416);
                                             }
                                             §§goto(addr444);
                                          }
                                          §§goto(addr446);
                                       }
                                       addr416:
                                       if(!§§pop())
                                       {
                                          §§push(this);
                                          §§push(this.§!!>§);
                                          if(!(_loc9_ && param3))
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§!!>§ = §§pop();
                                       }
                                       §§push(this.§!!>§);
                                       if(!_loc9_)
                                       {
                                          §§push(1);
                                          if(_loc10_ || this)
                                          {
                                             addr444:
                                             if(§§pop() < §§pop() && this.§;L§())
                                             {
                                                this.§!!>§ = 1;
                                                if(_loc10_)
                                                {
                                                   §§goto(addr456);
                                                }
                                                §§goto(addr462);
                                             }
                                             addr456:
                                             §§push(this.§!!>§);
                                             if(_loc10_)
                                             {
                                                addr461:
                                                if(§§pop() < 1)
                                                {
                                                   addr462:
                                                   this.§!!>§ = 0;
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr472:
                                                      §<!3§.§1a§(§@T§.§9A§,this.§2h§.§1!B§,"ChannelDestroyed");
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§goto(addr518);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   this.§97§(§@T§.§"!=§);
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr504);
                                                   }
                                                }
                                             }
                                             §§goto(addr504);
                                          }
                                          §§goto(addr461);
                                       }
                                       §§goto(addr504);
                                    }
                                 }
                                 §§goto(addr444);
                              }
                              §§goto(addr518);
                           }
                           §§goto(addr371);
                        }
                     }
                     else
                     {
                        addr135:
                        §§push(param1);
                        §§push(3);
                        if(_loc10_ || param1)
                        {
                           addr143:
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc9_ && this))
                              {
                                 this.§97§(§@T§.§0!o§);
                              }
                              else
                              {
                                 §§goto(addr244);
                              }
                           }
                           §§goto(addr155);
                        }
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr461);
               }
               else
               {
                  §§push(this.§3z§);
                  if(!(_loc9_ && param1))
                  {
                     §§push(0);
                     if(_loc10_)
                     {
                        §§push(§§pop() < §§pop());
                        §§push(§§pop() < §§pop());
                        if(_loc10_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc9_ && param2))
                              {
                                 §§pop();
                                 if(_loc10_ || param2)
                                 {
                                    §§push(param6);
                                    if(_loc10_ || param2)
                                    {
                                       addr95:
                                       if(!§§pop())
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             §§push(param1);
                                             if(_loc10_)
                                             {
                                                §§push(30);
                                                if(_loc10_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      this.§97§(§@T§.§9A§);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(_loc10_ || param2)
                                                      {
                                                         §§goto(addr123);
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr461);
                                             }
                                             §§goto(addr123);
                                          }
                                          else
                                          {
                                             addr310:
                                             §§push(int(Math.min(this.§!!>§,int(param1))));
                                             if(_loc10_)
                                             {
                                                _loc7_ = §§pop();
                                                §§push(§7E§.§5X§.getValue());
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(§§pop() * _loc7_);
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   §§goto(addr461);
                                                }
                                             }
                                             _loc8_ = §§pop();
                                          }
                                          §§goto(addr342);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(_loc10_ || this)
                                          {
                                             §§push(this.§3z§);
                                             if(_loc10_)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(this.§3z§);
                                                         if(_loc10_)
                                                         {
                                                            addr180:
                                                            §§push(§§pop() / 2);
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  this.§97§(§@T§.§0!o§);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     addr201:
                                                                     §§push(Boolean(this.§;L§()));
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr209);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr444);
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   §§goto(addr462);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    §§goto(addr410);
                                 }
                                 §§goto(addr518);
                              }
                              §§goto(addr446);
                           }
                           §§goto(addr95);
                        }
                        addr209:
                        if(§§pop())
                        {
                           §§pop();
                           if(!_loc9_)
                           {
                              addr213:
                              §§push(this.§!!>§);
                              if(_loc10_)
                              {
                                 addr217:
                                 §§push(this.§1!s§);
                                 if(_loc10_ || param3)
                                 {
                                    §§goto(addr227);
                                 }
                                 else
                                 {
                                    addr262:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc9_)
                                       {
                                          addr268:
                                          param1 = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§push(Boolean(param2));
                                             §§push(Boolean(param2));
                                             if(!(_loc9_ && param1))
                                             {
                                                addr281:
                                                if(§§pop())
                                                {
                                                   if(_loc10_ || param2)
                                                   {
                                                      §§pop();
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(Boolean(this.§'c§()));
                                                         if(_loc10_ || param3)
                                                         {
                                                            addr307:
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr518);
                                                            }
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr446);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr407);
                                          }
                                          §§goto(addr504);
                                       }
                                    }
                                    §§goto(addr461);
                                 }
                              }
                              else
                              {
                                 addr260:
                                 §§goto(addr262);
                                 §§push(this.§3z§);
                              }
                              §§goto(addr262);
                           }
                           else
                           {
                              addr257:
                              §§push(param1);
                              if(_loc10_)
                              {
                                 §§goto(addr260);
                              }
                              §§goto(addr268);
                           }
                        }
                        addr227:
                        if(§§pop() == §§pop())
                        {
                           if(_loc10_)
                           {
                              §§goto(addr230);
                           }
                           else
                           {
                              §§goto(addr472);
                           }
                        }
                        addr244:
                        return this.§!!>§;
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr268);
               }
               addr504:
               this.addDamageParticles(this.§7f§.§-n§.particles,param1);
               if(_loc10_ || param1)
               {
                  addr518:
                  this.§0!E§.setDamagedFrame();
               }
               return this.§!!>§;
            }
            §§goto(addr342);
         }
         §§goto(addr518);
      }
      
      public function §97§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §<!3§.§1a§(param1,this.§2h§.§1!B§);
         }
      }
      
      public function §!&§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§2h§.material.§-!?§(param1));
         if(_loc2_ || _loc3_)
         {
            §§push(§§pop() * this.§^3§);
         }
         return §§pop();
      }
      
      public function §-p§(param1:String) : Number
      {
         return this.§2h§.material.§+v§(param1);
      }
      
      public function §^!a§() : String
      {
         return this.§2h§.material.mName;
      }
      
      public function §1L§() : Number
      {
         return this.§2h§.§2!A§();
      }
      
      public function §9Z§() : int
      {
         return this.§2h§.§2]§();
      }
      
      public function §8l§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(this.getBody().IsAwake()));
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§;L§());
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(this.§!!>§ == this.§1!s§);
                                       if(_loc3_)
                                       {
                                          addr90:
                                          §§push(§§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr98:
                                             if(!§§pop())
                                             {
                                                if(_loc2_ && this)
                                                {
                                                }
                                                §§goto(addr184);
                                             }
                                             addr127:
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         addr136:
                                                         §§push(Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr164:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      addr174:
                                                      addr184:
                                                      return §§pop();
                                                      §§push(Math.abs(this.getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                       §§pop();
                                       if(!_loc2_)
                                       {
                                          addr109:
                                          §§push(Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§goto(addr127);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr98);
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr184);
               }
            }
            §§goto(addr164);
         }
         §§goto(addr109);
      }
      
      public function §^!%§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.getBody().IsAwake());
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(_loc2_)
         {
            §§push(Math.abs(this.getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           addr83:
                           addr84:
                           §§push(Math.abs(this.getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(Math.abs(this.getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_)
                           {
                              §§pop();
                              if(_loc3_)
                              {
                              }
                              §§goto(addr103);
                           }
                           addr100:
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§push(Math.abs(this.getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                        if(!_loc2_)
                        {
                        }
                        addr106:
                        return false;
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr83);
               }
               §§goto(addr84);
            }
            §§goto(addr83);
         }
         addr103:
         return true;
      }
      
      public function §^!E§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^3§ = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.§^3§ > 1)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr64:
                     §§push(this.§0!E§);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().§-!Q§();
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr79:
                        §§pop().§4!3§ = null;
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(this.§0!E§);
               }
               §§goto(addr79);
            }
            §§goto(addr64);
         }
         addr81:
      }
      
      public function §'J§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(this.§2h§.§2<§() == §`4§.§4A§)
         {
            §§push(this.§0!E§.mW * this.§0!E§.mH);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§7E§.§8!'§);
               §§push(§7E§.§8!'§);
               if(_loc3_)
               {
                  §§push(§§pop() * (§§pop() * §§pop()));
                  if(!_loc4_)
                  {
                     _loc2_ = Number(§§pop());
                     if(!(_loc4_ && this))
                     {
                        addr158:
                        return _loc2_;
                        addr157:
                     }
                     else
                     {
                        addr91:
                        if(param1)
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && this))
                              {
                                 §§push(Number(§§pop() * this.§7n§()));
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr114:
                                    _loc2_ = §§pop();
                                    if(_loc3_)
                                    {
                                       addr117:
                                       §§push(_loc2_);
                                       §§push(this.§7P§);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr139:
                                          §§push(§§pop() * this.§7P§);
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc3_ || this)
                                       {
                                          addr148:
                                          §§push(Number(§§pop()));
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr156:
                                             _loc2_ = §§pop();
                                             §§goto(addr157);
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr157);
                                 }
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr148);
               }
               §§goto(addr139);
            }
            §§goto(addr156);
         }
         else
         {
            §§push(this.getBody().GetMass());
            if(!_loc4_)
            {
               §§push(this.§4!%§.§3!r§());
               if(_loc3_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc3_ || this)
                  {
                     addr88:
                     _loc2_ = Number(§§pop());
                     if(!_loc4_)
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr114);
               }
               §§goto(addr117);
            }
            §§goto(addr88);
         }
      }
      
      public function §7n§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(2);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_ || this)
                     {
                        addr76:
                        §§push(§§pop() * Math.min(10,this.§0!E§.§2F§ - 1));
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(10);
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc3_)
                           {
                              addr82:
                              _loc1_ = §§pop();
                              §§push(_loc1_);
                           }
                           return §§pop();
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr76);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr76);
            }
         }
         §§goto(addr82);
      }
      
      public function § !>§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.getBody().GetLinearVelocity().x);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.getBody().GetLinearVelocity().y);
         if(_loc6_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc6_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               §§push(_loc5_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_)
                     {
                        addr103:
                        _loc2_ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || param1)
                           {
                              addr125:
                              §§push(§§pop() * _loc5_);
                              if(_loc6_)
                              {
                                 §§goto(addr129);
                              }
                              addr129:
                              _loc3_ = Number(§§pop());
                              §§goto(addr128);
                           }
                           addr128:
                           if(_loc7_ && this)
                           {
                           }
                           return;
                        }
                        this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr125);
            }
            §§goto(addr103);
         }
         §§goto(addr129);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§<!r§) : void
      {
      }
      
      public function addDamageParticles(param1:§<!r§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §0!?§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc6_)
         {
            §§push(param2.x * param1);
            if(_loc6_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!(_loc5_ && this))
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc6_ || param1)
            {
               §§push(param2.y * param1);
               if(_loc6_ || param3)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(_loc6_)
            {
               addr91:
               this.getBody().§&!%§(_loc4_);
            }
            return;
         }
         §§goto(addr91);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(param2)
         {
            §§push(Number(this.§;x§()));
            if(!(_loc6_ && param1))
            {
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc6_ && this))
                  {
                     §§push(360);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc6_ && this))
                        {
                           §§push(360);
                           if(_loc5_ || param2)
                           {
                              §§push(Number(§§pop() % §§pop()));
                              if(_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 addr67:
                                 §§push(Number(0));
                                 if(!(_loc6_ && param2))
                                 {
                                    _loc4_ = §§pop();
                                    addr79:
                                    if(param1 != 0)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc6_)
                                          {
                                             addr95:
                                             §§push(param1);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(Number(§§pop() % §§pop()));
                                                if(!_loc6_)
                                                {
                                                   _loc4_ = §§pop();
                                                   if(_loc5_ || this)
                                                   {
                                                      addr115:
                                                      addr116:
                                                      §§push(_loc4_);
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() / 2);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr132);
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            else
                                                            {
                                                               addr145:
                                                               §§push(_loc3_);
                                                               §§push(param1);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr150);
                                                                  §§push(§§pop() - _loc4_);
                                                               }
                                                               §§goto(addr150);
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      addr141:
                                                      _loc3_ = Number(§§pop() - §§pop());
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr79);
                  }
                  addr132:
                  §§push(_loc3_);
                  §§push(_loc4_);
                  if(_loc6_ && _loc3_)
                  {
                     addr150:
                     §§push(§§pop() + §§pop());
                     if(_loc5_ || param1)
                     {
                        addr168:
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     §§goto(addr170);
                  }
                  addr170:
                  this.§?!1§(_loc3_);
                  if(!(_loc6_ && param2))
                  {
                     addr180:
                     §§push(this);
                     §§push(this.§;x§());
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§?!1§(§§pop());
                  }
                  return;
               }
               §§goto(addr67);
            }
            §§goto(addr168);
         }
         §§goto(addr180);
      }
      
      public function §9p§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§8!&§(this.getBody().GetAngle()));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(360);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        addr61:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(!(_loc3_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           §§goto(addr104);
                        }
                        _loc2_ = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           this.getBody().§]<§(_loc2_);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr91);
         }
         addr104:
         if(!_loc3_)
         {
            §§push(§9!<§(_loc2_));
            if(!_loc3_)
            {
               addr91:
               §§push(Number(§§pop()));
            }
         }
      }
      
      public function § !-§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.getBody().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc15_ || this)
         {
            §§push(§§pop() - param2.x);
            if(_loc15_ || _loc3_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc15_ || param2)
            {
               §§push(§§pop() - param2.y);
               if(_loc15_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc14_ && this))
               {
                  §§push(_loc4_);
                  if(!(_loc14_ && this))
                  {
                     §§push(0);
                     if(_loc15_ || _loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc15_)
                        {
                           if(§§pop())
                           {
                              if(!_loc14_)
                              {
                                 §§pop();
                                 if(!_loc14_)
                                 {
                                    addr98:
                                    §§push(_loc5_);
                                    if(!_loc14_)
                                    {
                                       addr103:
                                       if(§§pop() == 0)
                                       {
                                          if(_loc15_)
                                          {
                                             return;
                                          }
                                          addr107:
                                          §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                       }
                                       §§goto(addr107);
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(_loc4_);
                                    if(!(_loc14_ && _loc3_))
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
                                       if(!(_loc14_ && param2))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(_loc5_);
                                       if(!_loc14_)
                                       {
                                          §§push(0);
                                          if(!_loc14_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc14_)
                                                {
                                                   addr184:
                                                   _loc8_ += 180;
                                                }
                                             }
                                             §§push(_loc8_);
                                             if(!_loc14_)
                                             {
                                                §§goto(addr190);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr184);
                                       }
                                       addr190:
                                       §§push(param1);
                                       if(_loc15_)
                                       {
                                          addr195:
                                          §§push(Number(§§pop() + §§pop()));
                                          §§push(Number(§§pop() + §§pop()));
                                       }
                                       var _loc9_:* = §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop() * Math.PI);
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(§§pop() / 180);
                                             if(_loc14_ && param2)
                                             {
                                             }
                                             §§goto(addr219);
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       addr219:
                                       var _loc10_:* = §§pop();
                                       §§push(Math.sin(_loc10_) * _loc6_);
                                       if(_loc15_ || param1)
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
                                       if(!_loc14_)
                                       {
                                          this.getBody().§&!%§(_loc13_);
                                       }
                                       return;
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr107);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr98);
            }
            §§goto(addr63);
         }
         §§goto(addr47);
      }
   }
}
