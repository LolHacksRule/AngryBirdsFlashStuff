package §3p§
{
   import §#!"§.b2PolygonShape;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §2!H§.LevelMain;
   import §2!H§.ScoreCollector;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemMaterial;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import §]=§.b2Body;
   import §]=§.b2BodyDef;
   import §]=§.b2FilterData;
   import §]=§.b2Fixture;
   import §]=§.b2World;
   import flash.geom.Point;
   
   public class LevelObject
   {
      
      public static const §?H§:uint;
      
      public static const §[c§:uint;
      
      public static const §[=§:uint;
      
      public static const §?+§:uint;
      
      public static const §&!@§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§findproperty(§?H§));
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() << 1);
            }
            §§pop().§?H§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§[c§));
               §§push(1);
               if(!_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§[c§ = §§pop();
            }
            addr110:
         }
         while(true)
         {
            §§push(§§findproperty(§[=§));
            §§push(1);
            if(_loc1_ || LevelObject)
            {
               §§push(§§pop() << 3);
            }
            §§pop().§[=§ = §§pop();
            for(; _loc1_ || LevelObject; §§push(§§findproperty(§?+§)),§§push(1),if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() << 4);
            },§§pop().§?+§ = §§pop(),do
            {
               §&!@§ = true;
            }
            while(_loc2_);
            ,if(!_loc2_)
            {
               return;
            })
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr110);
            }
         }
      }
      
      private var §6G§:String;
      
      private var §1!B§:int;
      
      private var §1A§:int;
      
      public var §#>§:String;
      
      public var §17§:int;
      
      private var §<! §:§5s§;
      
      private var §'K§:LevelObjectManager;
      
      private var mWorld:b2World;
      
      protected var §!!<§:String = "";
      
      protected var §0!§:int = 1;
      
      private var §5!5§:b2Fixture;
      
      private var final:b2Body;
      
      private var §0!"§:b2Vec2;
      
      public var §0o§:Number;
      
      public var §]!3§:Number;
      
      private var §<g§:Number;
      
      private var §3J§:Boolean = false;
      
      private var §#L§:Number;
      
      private var §0!X§:Number;
      
      private var §-y§:Number;
      
      private var §0!M§:Number;
      
      private var §[P§:Number;
      
      private var §&!?§:Number;
      
      public var §[t§:Number = 1;
      
      private var §0S§:Boolean = false;
      
      public var §&!<§:Number = 0;
      
      public var §2! §:Number = 0;
      
      protected var §"]§:Boolean = false;
      
      public var §7!O§:LevelObjectRenderer;
      
      private var §'6§:Sprite;
      
      private var §`!%§:Number = 0;
      
      private var §else§:Number = 0;
      
      private var §1!8§:Number = 0;
      
      private var §7!H§:Number = 1.0;
      
      private var §]G§:Boolean = false;
      
      private var §;!g§:Vector.<Vector.<Number>>;
      
      private var §&!2§:int = 10;
      
      private var §'P§:Boolean = true;
      
      public function LevelObject(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!_loc16_)
         {
            this.§;!g§ = new Vector.<Vector.<Number>>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§#>§ = param6;
                  continue loop0;
                  addr169:
                  if(!(_loc17_ || param2))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§7!O§ = new LevelObjectRenderer(this,param2,param4);
                     loop15:
                     while(true)
                     {
                        §§push(this.§7!O§);
                        while(true)
                        {
                           §§push(§§pop().§?E§(param1.§"!>§.animationManager));
                           if(_loc17_ || param1)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    addr97:
                                    if(_loc17_ || param2)
                                    {
                                       addr104:
                                       if(_loc17_ || param3)
                                       {
                                          §§push(this.§7!O§);
                                          loop18:
                                          while(true)
                                          {
                                             §§push(this.§1A§);
                                             addr115:
                                             while(true)
                                             {
                                                §§pop().§,!=§(§§pop(),this.§<! §.§<!I§(),this.§<! §.§"?§() / LevelMain.§8N§,this.§<! §.§'i§() / LevelMain.§8N§);
                                                addr134:
                                                while(true)
                                                {
                                                   continue loop18;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                    break;
                                 }
                                 continue loop15;
                              }
                              while(true)
                              {
                                 if(_loc17_)
                                 {
                                    this.§;!g§[1] = new Vector.<Number>();
                                    §§goto(addr188);
                                 }
                                 break;
                                 §§goto(addr97);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr40);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public static function §=I§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param2 == null)
            {
               if(_loc5_ || param1)
               {
                  return;
               }
            }
         }
         var _loc4_:String = param2.§,]§[param1];
         if(!_loc6_)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(_loc5_ || param3)
                  {
                     §§push(param3);
                     if(_loc5_ || LevelObject)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§push(param2.§9!M§);
                              if(!(_loc6_ && param1))
                              {
                                 addr113:
                                 param3 = §§pop();
                                 while(true)
                                 {
                                 }
                                 addr114:
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr114);
                        }
                        while(true)
                        {
                           SoundEngine.§1h§(_loc4_,param3);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  §§goto(addr113);
               }
               return;
            }
         }
         §§goto(addr113);
      }
      
      public static function §1!'§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(180);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§goto(addr51);
               }
            }
            §§goto(addr57);
         }
         addr51:
         §§push(§§pop() / Math.PI);
         if(!_loc3_)
         {
            addr57:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc2_ || _loc3_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §%j§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!_loc3_)
            {
               addr44:
               return Number(§§pop());
            }
         }
         §§goto(addr44);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function get front() : Boolean
      {
         return this.§]G§;
      }
      
      public function get §8!=§() : Number
      {
         return this.final.GetPosition().x;
      }
      
      public function get §?4§() : Number
      {
         return this.final.GetPosition().y;
      }
      
      public function get §8!&§() : §5s§
      {
         return this.§<! §;
      }
      
      public function get §9!-§() : Boolean
      {
         return this.§<g§ >= 0;
      }
      
      protected function get container() : LevelObjectManager
      {
         return this.§'K§;
      }
      
      public function get §#!S§() : Boolean
      {
         return this.§'P§;
      }
      
      public function set §#!S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'P§ = param1;
         }
      }
      
      public function set §;!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§3J§ = param1;
         }
      }
      
      public function set §@!i§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!2§ = param1;
         }
      }
      
      public function get §@!i§() : uint
      {
         return this.§&!2§;
      }
      
      public function get §@!Y§() : Boolean
      {
         return this.§0S§;
      }
      
      public function set §@!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§0S§ = param1;
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
         return this.§6G§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6G§ = param1;
         }
      }
      
      public function §2!L§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5!5§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().§7!]§(param1);
         }
         addr46:
         if(!_loc3_)
         {
            §§push(this.§5!5§);
         }
      }
      
      protected function §%!`§(param1:String) : int
      {
         return §0'§.§%!`§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc5_ && this))
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr132:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc3_.§=!8§ = 1;
            §§goto(addr44);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(!(_loc2_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.mWorld);
                        addr154:
                        while(true)
                        {
                           §§pop().§<s§(this.§9f§());
                           addr158:
                           while(true)
                           {
                              this.mWorld = null;
                              addr140:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr152:
                  }
                  while(true)
                  {
                     this.§7!O§.dispose();
                     loop3:
                     while(true)
                     {
                        §§push(this.§'6§);
                        if(_loc1_ || _loc2_)
                        {
                           continue loop0;
                        }
                        loop10:
                        while(true)
                        {
                           §§pop().dispose();
                           loop9:
                           while(true)
                           {
                              this.§'6§ = null;
                              addr86:
                              addr88:
                              while(_loc2_)
                              {
                                 while(_loc1_ || this)
                                 {
                                    §§push(this.§'6§);
                                    continue loop10;
                                 }
                                 continue loop3;
                              }
                              while(true)
                              {
                                 this.§5!5§ = null;
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop9;
                                    }
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       this.§0!"§ = null;
                                       loop7:
                                       for(; _loc1_; while(true)
                                       {
                                          this.§<! § = null;
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue loop7;
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             break;
                                          }
                                          §§goto(addr152);
                                       },return)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr158);
                                          }
                                          else
                                          {
                                             §§goto(addr86);
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr140);
                                 }
                                 continue loop9;
                                 §§goto(addr88);
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr57);
      }
      
      public function §;V§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9f§());
            §§push(360);
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc3_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§,&§(§§pop());
         }
      }
      
      public function §=Y§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§9f§().GetAngle());
         if(_loc1_)
         {
            §§push(180);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr69:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §4g§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§9f§().SetLinearVelocity(param1);
            while(true)
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§3!K§();
                  }
               }
               if(_loc5_ && param3)
               {
                  continue;
               }
               this.§,!'§();
               §§goto(addr62);
            }
         }
         §§goto(addr71);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5!5§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(this.§9f§());
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
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc6_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop18:
                                                   while(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§9f§());
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop().GetPosition());
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     loop22:
                                                                     while(!_loc5_)
                                                                     {
                                                                        §§push(param1);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc5_ && param3))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break loop21;
                                                                                          }
                                                                                          §§goto(addr75);
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue loop6;
                                                                                    addr130:
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        loop20:
                                                                        while(!(_loc5_ && this))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(this.§9f§());
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              §§push(§§pop().GetPosition());
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                           continue loop18;
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(param2);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc5_ && this)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc6_ || param3))
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop18;
                                                                                       }
                                                                                       addr203:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       break loop20;
                                                                                    }
                                                                                    addr164:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr108);
                                                                              }
                                                                              addr75:
                                                                           }
                                                                           continue loop2;
                                                                           return §§pop();
                                                                        }
                                                                        addr108:
                                                                        while(true)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                     }
                                                                     addr162:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§9f§());
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr203);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      public function §2!&§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§0!"§ = param1;
         }
      }
      
      public function §!!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§0!"§)
            {
               do
               {
                  this.§4g§(this.§0!"§,false);
                  do
                  {
                     this.§0!"§ = null;
                  }
                  while(!_loc1_);
                  
               }
               while(!(_loc1_ || this));
               
               addr66:
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §3!K§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(!param1);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§9f§());
                     if(!_loc3_)
                     {
                        param1 = §§pop().GetLinearVelocity();
                        addr42:
                        §§push(param1.x);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                                 addr92:
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    addr141:
                                    §§push(param1.y == 0);
                                    if(!_loc3_)
                                    {
                                       addr140:
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr151:
                                          this.§9f§().§<O§(0);
                                       }
                                       addr96:
                                       return;
                                       addr154:
                                    }
                                    else
                                    {
                                       §§push(this.§9f§());
                                       if(_loc2_ || param1)
                                       {
                                          §§pop().§<O§(Math.atan2(param1.x,param1.y));
                                          if(_loc3_)
                                          {
                                             §§goto(addr154);
                                          }
                                          §§goto(addr96);
                                       }
                                       else
                                       {
                                          §§goto(addr151);
                                       }
                                    }
                                    §§goto(addr151);
                                    addr95:
                                 }
                                 §§goto(addr151);
                              }
                              §§push(§§pop());
                              if(!(_loc3_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr92);
                                 }
                                 §§goto(addr140);
                              }
                           }
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr95);
               }
               §§goto(addr42);
            }
            §§goto(addr92);
         }
         §§goto(addr151);
      }
      
      public function §,!'§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!param1)
            {
               param1 = this.§9f§().GetLinearVelocity();
               addr22:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && param1))
            {
               this.§;V§(_loc2_);
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function §5!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9f§().§<O§(param1);
         }
      }
      
      public function §9f§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§5!5§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§5!5§.GetBody();
      }
      
      public function § z§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1 != -9999)
            {
               if(_loc4_ || param2)
               {
                  addr121:
                  this.§`!%§ = param1;
               }
               while(true)
               {
                  this.§else§ = param2;
                  addr110:
                  while(true)
                  {
                     addr74:
                     if(_loc4_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
               addr124:
            }
            loop2:
            while(true)
            {
               §§push(this.§9f§());
               loop3:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr96:
                  while(true)
                  {
                     §§push(this.§`!%§);
                     addr98:
                     while(true)
                     {
                        §§push(LevelMain.§8N§);
                        addr101:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr102:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr103:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr124);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §8?§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Number = NaN;
         §§push(false);
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§"]§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     addr487:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr488:
                        while(true)
                        {
                           this.§"]§ = false;
                           addr479:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr483:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop6:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr472:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr473:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr474:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr471:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        continue loop6;
                     }
                  }
               }
            }
         }
         §§goto(addr160);
      }
      
      public function §[!`§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§9f§().GetPosition().x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§9f§().GetPosition().y);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§&!?§ = this.§-y§;
            loop0:
            while(true)
            {
               this.§0!M§ = this.§#L§;
               addr154:
               while(true)
               {
                  this.§[P§ = this.§0!X§;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() / LevelMain.§8N§);
            }
            §§pop().§#L§ = §§pop();
            for(; _loc4_; §§push(this),§§push(_loc2_),if(!_loc3_)
            {
               §§push(§§pop() / LevelMain.§8N§);
            },§§pop().§0!X§ = §§pop(),if(!(_loc3_ && _loc1_))
            {
               return;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr154);
            }
            §§goto(addr118);
         }
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
      
      public function §9C§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
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
                     loop2:
                     while(true)
                     {
                        §§push(Log);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + param1);
                           if(!(_loc3_ && this))
                           {
                              addr1041:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr995:
                              while(true)
                              {
                                 §§push(param2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§'K§.§"!>§.mLevelEngine.§[6§);
                                             addr1004:
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr1005:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr1006:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr1017:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         addr1018:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr999:
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(-1);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop17:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this.§#L§);
                                                         loop19:
                                                         for(; _loc4_; if(!(_loc4_ || param1))
                                                         {
                                                            continue;
                                                         },if(!_loc3_)
                                                         {
                                                            §§push(180);
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr97);
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr97);
                                                                  }
                                                                  while(_loc4_)
                                                                  {
                                                                     §§goto(addr662);
                                                                     §§push(§§pop() <= §§pop());
                                                                  }
                                                                  §§goto(addr770);
                                                                  addr659:
                                                               }
                                                               §§goto(addr515);
                                                            }
                                                            §§goto(addr288);
                                                         },§§goto(addr1004))
                                                         {
                                                            §§push(this.§0!M§);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr959:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          addr960:
                                                                                          while(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr36:
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(this.§&!?§);
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr59:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   addr66:
                                                                                                   if(!(_loc3_ && param2))
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      loop86:
                                                                                                      while(!(_loc3_ && this))
                                                                                                      {
                                                                                                         §§push(this.§-y§);
                                                                                                         loop87:
                                                                                                         while(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            loop88:
                                                                                                            while(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               if(!(_loc4_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               §§push(180);
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  loop90:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           addr748:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 loop92:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr527:
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(this.§-y§);
                                                                                                                                          if(!(_loc3_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§&!?§);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - 360);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§-y§);
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr561:
                                                                                                                                                      §§pop().§1!8§ = §§pop() + §§pop() / §§pop();
                                                                                                                                                      addr560:
                                                                                                                                                      if(!(_loc3_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr576:
                                                                                                                                                            if(_loc3_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               loop51:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop52:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§-y§);
                                                                                                                                                                     addr796:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§&!?§);
                                                                                                                                                                        addr798:
                                                                                                                                                                        loop54:
                                                                                                                                                                        while(_loc4_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           loop55:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              addr809:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 loop57:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    while(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             addr815:
                                                                                                                                                                                             addr970:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         addr770:
                                                                                                                                                                                                         while(!(_loc3_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            while(_loc4_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr787:
                                                                                                                                                                                                                  while(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§&!?§);
                                                                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§-y§);
                                                                                                                                                                                                                        break loop87;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1017);
                                                                                                                                                                                                                     while(_loc4_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        while(!(_loc3_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr679:
                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                 §§push(this.§-y§);
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§&!?§);
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - this.§-y§);
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr711:
                                                                                                                                                                                                                                             addr701:
                                                                                                                                                                                                                                             addr712:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§1!8§ = §§pop() + §§pop();
                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr25);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr711);
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr701);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr711);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr712);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§&!?§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§-y§);
                                                                                                                                                                                                                                    addr591:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       addr592:
                                                                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc3_ && param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr606:
                                                                                                                                                                                                                                             while(!(_loc3_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop90;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop92;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr194:
                                                                                                                                                                                                                                    if(_loc4_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§-y§);
                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop90;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr759:
                                                                                                                                                                                                                           addr955:
                                                                                                                                                                                                                           while(!(_loc3_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§&!?§);
                                                                                                                                                                                                                              break loop86;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr890:
                                                                                                                                                                                                                              loop36:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§0!X§);
                                                                                                                                                                                                                                 addr893:
                                                                                                                                                                                                                                 addr919:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§[P§);
                                                                                                                                                                                                                                    break loop54;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr759);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr788:
                                                                                                                                                                                                                  addr792:
                                                                                                                                                                                                                  this.§1!8§ = this.§-y§;
                                                                                                                                                                                                                  §§goto(addr25);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§2! § = 0;
                                                                                                                                                                                                                     addr889:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§else§ = this.§0!X§;
                                                                                                                                                                                                                        addr874:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr886:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§[P§);
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - this.§0!X§);
                                                                                                                                                                                                                        if(!(_loc3_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr862:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr866:
                                                                                                                                                                                                                              §§push(§§pop() / param2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§2! § = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                              §§push(this.§0!X§);
                                                                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + this.§2! §);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§else§ = §§pop();
                                                                                                                                                                                                                              continue loop51;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr868:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr866);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr862);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr866);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr778);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr778:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr769:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr903:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                   break loop88;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§&!<§ = 0;
                                                                                                                                                                                                addr973:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§`!%§ = this.§#L§;
                                                                                                                                                                                                   §§goto(addr955);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr300:
                                                                                                                                                                                             if(!(_loc4_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc3_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr960);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr814:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr786);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr901:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§goto(addr903);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr902:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr884:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr885);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           addr896:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              addr897:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                              }
                                                                                                                                                                              continue loop26;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr25);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr788);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr759);
                                                                                                                                                      addr560:
                                                                                                                                                      addr559:
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param2);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr560);
                                                                                                                                                }
                                                                                                                                                §§goto(addr559);
                                                                                                                                             }
                                                                                                                                             §§goto(addr560);
                                                                                                                                          }
                                                                                                                                          §§goto(addr561);
                                                                                                                                       }
                                                                                                                                       §§goto(addr711);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr394);
                                                                                                                                       §§push(this.§&!?§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr893);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              addr435:
                                                                                                                              while(!(_loc3_ && param2))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ && param2))
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§-y§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§&!?§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr285);
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr405);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr591);
                                                                                                                                                            addr280:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr66);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr769);
                                                                                                                                                      addr276:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr973);
                                                                                                                                                }
                                                                                                                                                §§goto(addr919);
                                                                                                                                             }
                                                                                                                                             §§goto(addr886);
                                                                                                                                          }
                                                                                                                                          §§goto(addr889);
                                                                                                                                       }
                                                                                                                                       §§goto(addr874);
                                                                                                                                    }
                                                                                                                                    §§goto(addr527);
                                                                                                                                 }
                                                                                                                                 §§goto(addr711);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr677);
                                                                                                                                 }
                                                                                                                                 §§goto(addr758);
                                                                                                                                 addr248:
                                                                                                                                 if(!(_loc4_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             addr121:
                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§-y§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1);
                                                                                                                                                      if(_loc4_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§&!?§);
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + 360);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - this.§-y§);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr166);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr166:
                                                                                                                                                            addr156:
                                                                                                                                                            addr167:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc4_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(param2);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§1!8§ = §§pop() + §§pop();
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr170:
                                                                                                                                                               if(!(_loc3_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr25);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr999);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr324);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr25);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr361);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr261);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr156);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr166);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr167);
                                                                                                                                                }
                                                                                                                                                §§goto(addr679);
                                                                                                                                             }
                                                                                                                                             while(!(_loc3_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(this.§&!?§);
                                                                                                                                                continue loop86;
                                                                                                                                                §§goto(addr121);
                                                                                                                                             }
                                                                                                                                             §§goto(addr792);
                                                                                                                                             addr626:
                                                                                                                                          }
                                                                                                                                          §§goto(addr166);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                    addr117:
                                                                                                                                 }
                                                                                                                                 loop111:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§-y§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr36);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr721);
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                      addr649:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr59);
                                                                                                                                                }
                                                                                                                                                break loop111;
                                                                                                                                             }
                                                                                                                                             §§goto(addr561);
                                                                                                                                          }
                                                                                                                                          §§goto(addr443);
                                                                                                                                       }
                                                                                                                                       continue loop86;
                                                                                                                                       addr261:
                                                                                                                                    }
                                                                                                                                    §§goto(addr315);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1018);
                                                                                                                                 §§goto(addr25);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr748:
                                                                                                                        }
                                                                                                                        §§goto(addr778);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     loop110:
                                                                                                                     while(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr221:
                                                                                                                        if(!(_loc3_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && param2))
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ || param2))
                                                                                                                                 {
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 addr246:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr248);
                                                                                                                                 }
                                                                                                                                 §§goto(addr424);
                                                                                                                              }
                                                                                                                              §§goto(addr425);
                                                                                                                           }
                                                                                                                           §§goto(addr246);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr884);
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr221);
                                                                                                                        }
                                                                                                                        §§goto(addr896);
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr110:
                                                                                                                                 if(_loc4_ || param1)
                                                                                                                                 {
                                                                                                                                    §§goto(addr117);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(param1);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§0!M§);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - this.§#L§);
                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                             {
                                                                                                                                                addr946:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                }
                                                                                                                                                §§pop().§&!<§ = §§pop();
                                                                                                                                                §§goto(addr947);
                                                                                                                                             }
                                                                                                                                             §§goto(addr946);
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr946);
                                                                                                                                    }
                                                                                                                                    §§goto(addr970);
                                                                                                                                    §§goto(addr110);
                                                                                                                                 }
                                                                                                                                 addr969:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr662);
                                                                                                                              }
                                                                                                                              §§goto(addr787);
                                                                                                                           }
                                                                                                                           §§goto(addr298);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 continue loop110;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr170);
                                                                                                                           addr211:
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr626);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr897);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr809);
                                                                                                                  }
                                                                                                                  §§goto(addr670);
                                                                                                               }
                                                                                                               while(!_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr881);
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                               }
                                                                                                               §§goto(addr959);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr878);
                                                                                                               §§goto(addr486);
                                                                                                            }
                                                                                                            addr486:
                                                                                                         }
                                                                                                         while(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr748);
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr902);
                                                                                                            }
                                                                                                            §§goto(addr748);
                                                                                                         }
                                                                                                         §§goto(addr798);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§push(this.§-y§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr649);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr474);
                                                                                                      }
                                                                                                      addr474:
                                                                                                      §§goto(addr796);
                                                                                                   }
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                                §§goto(addr192);
                                                                                             }
                                                                                             §§goto(addr648);
                                                                                          }
                                                                                          §§goto(addr483);
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr969);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1006);
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
                        §§goto(addr1041);
                     }
                  }
                  §§goto(addr995);
               }
            }
         }
         §§goto(addr949);
      }
      
      public function get §`H§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§&!@§)
            {
            }
         }
         return null;
      }
      
      public function §'W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§17§);
            if(_loc2_)
            {
               §§push(§5s§.§-"§);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop());
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              §§pop();
                              addr92:
                              addr89:
                              addr87:
                              §§push(this.§17§ == §5s§.§3!h§);
                              if(_loc1_ && _loc2_)
                              {
                              }
                           }
                        }
                        §§goto(addr101);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  addr101:
                  return §§pop();
               }
               §§goto(addr92);
            }
            §§goto(addr89);
         }
         §§goto(addr87);
      }
      
      public function §"!7§() : Boolean
      {
         return this.§17§ == §5s§.§4!T§;
      }
      
      public function §?O§() : Boolean
      {
         return this.§17§ == §5s§.§2!I§;
      }
      
      public function §3g§() : Boolean
      {
         return this.§17§ == §5s§.§3!h§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§17§ == §5s§.§`!J§;
      }
      
      public function isGround() : Boolean
      {
         return this.§17§ == §5s§.§#z§;
      }
      
      public function §9!&§() : Boolean
      {
         return this.§17§ == §5s§.§"!W§;
      }
      
      public function §8r§() : Boolean
      {
         return this.§17§ == §5s§.§'!W§;
      }
      
      public function §#!B§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§#>§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr106:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr107:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop());
                        if(_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_ || this)
                                 {
                                    addr98:
                                    §§push(true);
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§push(false);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    return §§pop();
                                 }
                                 continue loop2;
                              }
                              addr72:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop3;
                                 }
                                 addr120:
                                 addr120:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §`O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§"!7§());
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr140:
                           while(true)
                           {
                              §§pop();
                              addr141:
                              while(true)
                              {
                                 §§push(this.§9!&§());
                                 addr117:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr118:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           addr140:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       addr129:
                                       while(!_loc2_)
                                       {
                                          §§push(this.§8r§());
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop6;
                                             }
                                             if(!_loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                §§goto(addr140);
                                             }
                                             addr66:
                                             if(_loc1_ || _loc2_)
                                             {
                                                §§goto(addr73);
                                             }
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc1_)
                                                {
                                                   §§push(this.§@!Y§);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr66);
                                                }
                                                break;
                                             }
                                             §§goto(addr129);
                                             addr100:
                                          }
                                          addr73:
                                       }
                                       continue loop5;
                                       return §§pop();
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr140);
         }
         §§goto(addr141);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §5!c§() : Number
      {
         return Number(Math.sqrt(this.§9f§().GetLinearVelocity().x * this.§9f§().GetLinearVelocity().x + this.§9f§().GetLinearVelocity().y * this.§9f§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!(_loc9_ && param1))
         {
            §§push(this.§?O§());
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§'K§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§+!]§());
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop4:
                        while(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§<g§);
                              loop6:
                              while(true)
                              {
                                 §§push(0);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr791:
                                                      while(true)
                                                      {
                                                         §§push(param6);
                                                         addr749:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc9_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            addr753:
                                                            do
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                            }
                                                            while(_loc10_);
                                                            
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(this.§<g§);
                                                               if(!(_loc9_ && param3))
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           addr679:
                                                                           §§push(param1);
                                                                           §§push(this.§<g§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     addr686:
                                                                     this.§@r§(LevelItemSoundResource.§10§);
                                                                     addr692:
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc10_ || param3)
                                                                        {
                                                                           §§goto(addr642);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(this.§<g§);
                                                                           if(!(_loc9_ && param2))
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              loop21:
                                                                              for(; !(_loc9_ && param1); while(_loc10_ || param3)
                                                                              {
                                                                                 §§goto(addr511);
                                                                                 §§push(int(§§pop()));
                                                                                 §§goto(addr34);
                                                                              })
                                                                              {
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop22:
                                                                                    for(; _loc10_; if(!(_loc10_ || param1))
                                                                                    {
                                                                                       continue;
                                                                                    },if(!_loc10_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    },§§goto(addr152))
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop27:
                                                                                                               while(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop28:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§`O§());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           loop30:
                                                                                                                           while(_loc10_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop32:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(Math.min(this.§0o§,int(param1))));
                                                                                                                                       loop33:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          loop34:
                                                                                                                                          while(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(LevelMain.§!!R§.getValue());
                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc7_);
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             addr511:
                                                                                                                                             while(_loc10_)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                loop37:
                                                                                                                                                while(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§'K§);
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().§"!>§);
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      §§push(ScoreCollector.§!!T§);
                                                                                                                                                      if(!(_loc9_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§0o§ > param1);
                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr454:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§push(param3);
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        addr458:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§9f§().GetPosition().x,this.§9f§().GetPosition().y,§0'§.§'>§(this.§#>§));
                                                                                                                                                               loop38:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ && param3)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop17;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_ && param3)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param5);
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           loop41:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!(_loc9_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              loop42:
                                                                                                                                                                              for(; _loc10_; §§push(§§pop()),if(!(_loc9_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                              },if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              },if(_loc9_ && param3)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop11;
                                                                                                                                                                              },if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr298);
                                                                                                                                                                              },§§goto(addr218))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop47:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop65:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                loop49:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§0o§);
                                                                                                                                                                                                   loop50:
                                                                                                                                                                                                   while(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ && param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr800);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr277:
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop42;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr753);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop52:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc9_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        loop53:
                                                                                                                                                                                                                        while(_loc10_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§'W§());
                                                                                                                                                                                                                              if(_loc10_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc10_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                                                                 addr331:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr138:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§0o§);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this.§0o§);
                                                                                                                                                                                                                                       addr78:
                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc10_ || this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr738:
                                                                                                                                                                                                                                             if(§§pop() <= 12)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr711:
                                                                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             this.§@r§(LevelItemSoundResource.§@m§);
                                                                                                                                                                                                                                             addr702:
                                                                                                                                                                                                                                             return this.§0o§;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr679);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr712:
                                                                                                                                                                                                                                    if(_loc9_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop38;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr702);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc10_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop38;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop53;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr702);
                                                                                                                                                                                                                        addr780:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(_loc10_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop4;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§3J§);
                                                                                                                                                                                                                                 continue loop40;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr653);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr642:
                                                                                                                                                                                                                        §§push(Boolean(this.§'W§()));
                                                                                                                                                                                                                        §§push(Boolean(this.§'W§()));
                                                                                                                                                                                                                        if(_loc10_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr653:
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           §§push(this.§0o§);
                                                                                                                                                                                                                           §§push(this.§]!3§);
                                                                                                                                                                                                                           if(_loc10_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr625:
                                                                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr642);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop18;
                                                                                                                                                                                                                           addr654:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr630:
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§]!3§);
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§0o§ = §§pop();
                                                                                                                                                                                                                           addr638:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr601:
                                                                                                                                                                                                                        return this.§0o§;
                                                                                                                                                                                                                        addr383:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr298:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr277);
                                                                                                                                                                                                         addr152:
                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                         if(!(_loc10_ || param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§@r§(LevelItemSoundResource.§@m§);
                                                                                                                                                                                                                     continue loop28;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop63:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc9_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop65;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§0o§ = 0;
                                                                                                                                                                                                                     loop64:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop37;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc9_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              LevelObject.§=I§(LevelItemSoundResource.§5!,§,this.§<! §.§,!9§,"ChannelDestroyed");
                                                                                                                                                                                                                              loop62:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop64;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop63;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop61:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§7!O§.setDamagedFrame();
                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc10_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop61;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                          addr88:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc10_ || param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop62;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr234);
                                                                                                                                                                                                                                       §§goto(addr638);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr137:
                                                                                                                                                                                                                                    §§goto(addr405);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr351:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr193:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr654);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr405);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr763:
                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr738);
                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr712);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr738);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr712);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr625);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr251:
                                                                                                                                                                                             }
                                                                                                                                                                                             else if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr740);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr630);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§0o§);
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - param1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§0o§ = §§pop();
                                                                                                                                                                                          §§goto(addr351);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr251);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr383);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop26;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop30;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  this.§@r§(LevelItemSoundResource.§10§);
                                                                                                                                                                  addr733:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr740);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr458);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr454);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr686);
                                                                                                                                                }
                                                                                                                                                §§goto(addr692);
                                                                                                                                             }
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          this.§@r§(LevelItemSoundResource.§5!,§);
                                                                                                                                          §§goto(addr780);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr352);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr749);
                                                                                                               }
                                                                                                               §§goto(addr642);
                                                                                                            }
                                                                                                            §§goto(addr525);
                                                                                                         }
                                                                                                         addr556:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr556);
                                                                                                }
                                                                                                §§goto(addr642);
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr762);
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§goto(addr653);
                                                                              }
                                                                              §§goto(addr601);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr711);
                                                                     }
                                                                  }
                                                                  §§goto(addr653);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr807);
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§goto(addr686);
                                                         }
                                                         §§goto(addr642);
                                                      }
                                                   }
                                                   §§goto(addr759);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr800:
                        return §§pop();
                     }
                  }
               }
            }
            addr807:
            return §§pop();
            §§push(this.§0o§);
         }
         §§goto(addr313);
      }
      
      public function §@r§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            LevelObject.§=I§(param1,this.§<! §.§,!9§);
         }
      }
      
      public function §;!'§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<! §.material.override(param1));
         if(_loc3_)
         {
            return §§pop() * this.§[t§;
         }
      }
      
      public function §3v§(param1:String) : Number
      {
         return this.§<! §.material.§`2§(param1);
      }
      
      public function §8k§() : String
      {
         return this.§<! §.material.mName;
      }
      
      public function §^[§() : Number
      {
         return this.§<! §.§[!S§();
      }
      
      public function § ! §() : int
      {
         return this.§<! §.§[f§();
      }
      
      public function §]@§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(30);
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(this.§9f§().IsAwake());
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
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
                              §§push(this.§'W§());
                              loop5:
                              for(; !_loc2_; if(_loc2_ && _loc2_)
                              {
                                 continue;
                              },§§pop(),§§goto(addr189))
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop7:
                                    for(; _loc3_; if(!(_loc3_ || _loc1_))
                                    {
                                       continue;
                                    },if(!§§pop())
                                    {
                                       §§goto(addr131);
                                    })
                                    {
                                       if(§§pop())
                                       {
                                          continue loop0;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop14:
                                                while(_loc3_ || _loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr218:
                                                         addr131:
                                                         while(true)
                                                         {
                                                            §§push(Math.abs(this.§9f§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                            if(_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            continue loop12;
                                                         }
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Math.abs(this.§9f§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break loop22;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               addr141:
                                                            }
                                                            else
                                                            {
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     while(!_loc2_)
                                                                     {
                                                                        §§push(this.§0o§ == this.§]!3§);
                                                                        continue loop11;
                                                                     }
                                                                     continue loop4;
                                                                     addr255:
                                                                  }
                                                                  §§push(Math.abs(this.§9f§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop11;
                                                                                    addr179:
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              addr178:
                                                                           }
                                                                        }
                                                                        if(!(_loc3_ || _loc1_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§goto(addr218);
                                                               addr189:
                                                            }
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      addr168:
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      public function §&E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§9f§().IsAwake());
            if(!(_loc1_ && _loc1_))
            {
               §§push(!§§pop());
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        §§push(true);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§goto(addr78);
                        }
                        else
                        {
                           addr88:
                           return !§§pop();
                        }
                     }
                     else
                     {
                        addr79:
                        §§push(this.isMoving());
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr88);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr79);
               }
            }
            addr78:
            return §§pop();
         }
         §§goto(addr79);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>!?§();
         }
         §§push(5);
         if(_loc2_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Math.abs(this.§0j§(this.§;!g§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr194:
                              loop11:
                              while(true)
                              {
                                 §§push(Math.abs(this.§0j§(this.§;!g§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                                 if(_loc2_)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(Math.abs(this.§0j§(this.§;!g§[2])) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc3_ && _loc1_)
                                                {
                                                   addr119:
                                                   return false;
                                                }
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr119);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         §§push(true);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                      addr100:
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop7;
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                    §§goto(addr100);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                  }
               }
            }
         }
         §§goto(addr194);
      }
      
      private function §0j§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               if(§§pop() >= param1.length)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && param1))
                     {
                        if(_loc5_ || _loc2_)
                        {
                           addr70:
                           §§push(§§pop() / param1.length);
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr108:
                           §§push(Number(§§pop() + param1[_loc3_]));
                        }
                        _loc2_ = §§pop();
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc5_ || _loc2_)
                           {
                           }
                           addr103:
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr103);
                        §§push(int(§§pop()));
                        addr114:
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr114);
               }
               else
               {
                  §§push(_loc2_);
               }
               §§goto(addr108);
            }
            §§goto(addr103);
         }
         return §§pop();
      }
      
      private function §>!?§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!g§[0].push(this.§9f§().GetLinearVelocity().x);
         }
         while(true)
         {
            while(true)
            {
               this.§;!g§[1].push(this.§9f§().GetLinearVelocity().y);
               do
               {
                  this.§;!g§[2].push(this.§9f§().GetAngularVelocity());
               }
               while(!_loc3_);
               
               if(_loc3_ || this)
               {
                  if(true)
                  {
                     var _loc1_:* = uint(0);
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           if(§§pop() >= 3)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 addr121:
                                 this.§;!g§[_loc1_].shift();
                              }
                           }
                           else if(this.§;!g§[_loc1_].length > this.§&!2§)
                           {
                              §§goto(addr121);
                           }
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(uint(§§pop() + 1));
                           }
                        }
                        _loc1_ = §§pop();
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function §;!4§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§[t§ = param1;
            loop0:
            while(true)
            {
               if(this.§[t§ <= 1)
               {
                  §§push(this.§7!O§);
                  if(!_loc2_)
                  {
                     §§pop().§'Y§ = null;
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        §§goto(addr35);
                     }
                     else
                     {
                        addr68:
                     }
                     while(true)
                     {
                        §§push(this.§7!O§);
                     }
                  }
                  while(true)
                  {
                     §§pop().§;!!§();
                     continue loop0;
                  }
               }
            }
            addr35:
            return;
         }
         §§goto(addr68);
      }
      
      public function §%W§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc4_)
         {
            §§push(this.§<! §.§>t§());
            loop0:
            while(true)
            {
               if(§§pop() != LevelItemMaterial.§!!&§)
               {
                  §§push(this.§9f§().GetMass());
                  loop1:
                  while(true)
                  {
                     §§push(this.§5!5§.§]!&§());
                     loop2:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(§§pop() / §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop4:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    _loc2_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(param1)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   §§push(_loc2_);
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                             addr45:
                                             loop18:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc4_)
                                                {
                                                   §§push(this.§7!H§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§7!H§);
                                                         if(!_loc4_)
                                                         {
                                                            addr65:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr76:
                                                               if(_loc3_)
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr35:
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              addr205:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr206:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    break loop14;
                                                                                 }
                                                                                 §§goto(addr35);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(!_loc4_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§7!O§.mH);
                                                                                 break loop18;
                                                                              }
                                                                              addr138:
                                                                              addr191:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           continue loop5;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr76);
                                                                     §§goto(addr76);
                                                                  }
                                                                  addr22:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr22);
                                                               }
                                                            }
                                                            §§goto(addr76);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr204:
                                                            while(true)
                                                            {
                                                               §§goto(addr205);
                                                            }
                                                         }
                                                         addr203:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         addr135:
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr65);
                                                }
                                                §§goto(addr76);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr195:
                                                while(true)
                                                {
                                                   §§push(LevelMain.§8N§);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr203);
                                                      §§push(LevelMain.§8N§);
                                                   }
                                                   §§goto(addr204);
                                                }
                                             }
                                          }
                                          addr180:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr188:
                                       }
                                       §§goto(addr191);
                                    }
                                 }
                                 §§goto(addr195);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr204);
                     }
                  }
               }
               §§goto(addr188);
            }
         }
         §§goto(addr180);
      }
      
      public function §7`§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(2);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc2_ && _loc2_))
                     {
                        addr64:
                        §§push(§§pop() * Math.min(10,this.§7!O§.§]N§ - 1));
                        if(!_loc2_)
                        {
                           addr77:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        addr81:
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           addr85:
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr64);
            }
            §§goto(addr81);
         }
         §§goto(addr85);
      }
      
      public function §2A§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§9f§().GetLinearVelocity().x);
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§9f§().GetLinearVelocity().y);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && this))
         {
            §§push(_loc2_);
            if(_loc7_ || _loc2_)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr169:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr123:
                  §§push(_loc5_);
                  if(!(_loc7_ || this))
                  {
                     continue;
                  }
                  addr150:
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
                  if(_loc7_ || _loc3_)
                  {
                     _loc3_ = §§pop();
                     do
                     {
                        this.§9f§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                     }
                     while(!(_loc7_ || this));
                     
                     if(_loc6_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              if(!(_loc7_ || _loc2_))
                              {
                                 break;
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr169);
                        addr171:
                     }
                     return;
                     addr111:
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr171);
                  }
                  addr170:
               }
            }
            §§goto(addr170);
         }
         §§goto(addr111);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:LevelParticleManager) : void
      {
      }
      
      public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §@!C§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§9f§().GetPosition();
         if(_loc5_)
         {
            §§push(_loc4_);
            §§push(_loc4_.x);
            if(!_loc6_)
            {
               §§push(param2.x * param1);
               if(!_loc6_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().x = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc4_.y);
               if(_loc5_ || param3)
               {
                  §§push(param2.y * param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().y = §§pop();
               do
               {
                  if(!(_loc6_ && param3))
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(this.§9f§().§4Q§(_loc4_), !(_loc5_ || param3));
               
               §§goto(addr51);
            }
         }
         addr51:
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§=Y§());
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!(_loc7_ && param2))
                           {
                              if(_loc7_ && this)
                              {
                                 break;
                              }
                              §§push(360);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop5:
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
                                          addr248:
                                          loop8:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                loop10:
                                                while(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      continue loop0;
                                                      addr190:
                                                      if(_loc7_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc6_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(§§pop() != §§pop())
                                                            {
                                                               while(!_loc7_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr174:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() % §§pop());
                                                                        addr175:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr176:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue;
                                                               addr170:
                                                            }
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                        loop20:
                                                                        while(§§pop() >= §§pop())
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!(_loc6_ || param1))
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§push(param1);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() - _loc5_);
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             addr72:
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(_loc7_ && param1)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   addr97:
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§;V§(_loc4_);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           §§push(this.§=Y§());
                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(param1);
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           var _loc3_:* = Number(§§pop());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                                                                              if(!(_loc7_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              _loc3_ = §§pop();
                                                                                                                           }
                                                                                                                           addr36:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr270:
                                                                                                                           addr271:
                                                                                                                           addr257:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                        do
                                                                                                                        {
                                                                                                                           this.§;V§(_loc3_);
                                                                                                                        }
                                                                                                                        while(!_loc6_);
                                                                                                                        
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr140:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc7_ && param2)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§goto(addr36);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr170);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                             §§goto(addr97);
                                                                                          }
                                                                                          break loop19;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr135:
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      §§goto(addr140);
                                                                                                   }
                                                                                                   §§goto(addr173);
                                                                                                }
                                                                                                §§goto(addr175);
                                                                                             }
                                                                                             addr134:
                                                                                          }
                                                                                          §§goto(addr174);
                                                                                       }
                                                                                       addr126:
                                                                                    }
                                                                                    §§goto(addr72);
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                              §§goto(addr135);
                                                                           }
                                                                           §§goto(addr97);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§goto(addr126);
                                                                              §§push(_loc5_);
                                                                           }
                                                                           §§goto(addr135);
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr270);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr257);
         }
         §§goto(addr200);
      }
      
      public function §1!X§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§1!'§(this.§9f§().GetAngle()));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(360);
                  if(_loc3_ || _loc3_)
                  {
                     addr120:
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop1:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(§%j§(_loc2_));
                              if(!(_loc4_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              addr75:
                              if(!(_loc4_ && param1))
                              {
                                 _loc2_ = §§pop();
                                 do
                                 {
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 while(this.§9f§().§,&§(_loc2_), !(_loc3_ || _loc2_));
                                 
                                 return;
                                 addr45:
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     addr121:
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr120);
            }
            §§goto(addr121);
         }
         §§goto(addr45);
      }
      
      public function §2!S§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§9f§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc14_ || this)
         {
            §§push(§§pop() - param2.y);
            if(_loc14_ || _loc3_)
            {
               addr58:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc15_)
            {
               §§push(_loc4_);
               if(_loc14_)
               {
                  §§push(0);
                  if(!(_loc15_ && this))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc14_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc15_ && param2))
                        {
                           addr84:
                           §§push(§§pop());
                           if(!_loc15_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(_loc14_)
                              {
                                 §§pop();
                                 if(!_loc15_)
                                 {
                                    addr94:
                                    §§push(_loc5_);
                                    if(_loc14_)
                                    {
                                       addr98:
                                       §§push(§§pop() == 0);
                                       if(!(_loc15_ && this))
                                       {
                                          addr107:
                                          addr106:
                                          if(§§pop())
                                          {
                                             if(_loc14_)
                                             {
                                                §§goto(addr110);
                                             }
                                          }
                                          §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                       }
                                       §§goto(addr107);
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(_loc4_);
                                    if(_loc14_ || _loc3_)
                                    {
                                       §§push(§§pop() / _loc5_);
                                       if(!_loc15_)
                                       {
                                          addr145:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(Math.atan(_loc7_) * 180);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() / Math.PI);
                                          if(!(_loc15_ && param2))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc15_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc14_ || this)
                                          {
                                             §§push(0);
                                             if(_loc14_ || _loc3_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      addr189:
                                                      §§push(_loc8_);
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         addr198:
                                                         §§push(§§pop() + 180);
                                                         if(!_loc15_)
                                                         {
                                                            addr201:
                                                            §§push(Number(§§pop()));
                                                            if(_loc15_)
                                                            {
                                                            }
                                                            addr218:
                                                            var _loc9_:Number = §§pop();
                                                            §§goto(addr217);
                                                         }
                                                         _loc8_ = §§pop();
                                                         addr205:
                                                         §§push(_loc8_);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop() + param1);
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               addr217:
                                                               §§push(_loc9_);
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  §§push(§§pop() * Math.PI);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               addr233:
                                                               §§push(§§pop() / 180);
                                                               if(!_loc15_)
                                                               {
                                                                  addr237:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(Math.sin(_loc10_) * _loc6_);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(Math.cos(_loc10_) * _loc6_);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                               if(_loc14_ || _loc3_)
                                                               {
                                                                  this.§9f§().§4Q§(_loc13_);
                                                               }
                                                               return;
                                                            }
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr145);
                                 }
                                 addr110:
                                 return;
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr94);
         }
         §§goto(addr58);
      }
   }
}
