package §6!!§
{
   import §!!0§.SoundEngine;
   import §#!,§.Sprite;
   import §+!g§.b2Settings;
   import §0!3§.b2PolygonShape;
   import §<u§.Log;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2BodyDef;
   import §>!L§.b2FilterData;
   import §>!L§.b2Fixture;
   import §>!L§.b2World;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.LevelMain;
   import §]!@§.ScoreCollector;
   import flash.geom.Point;
   import §package§.§2Y§;
   import §package§.LevelItemManager;
   import §package§.LevelItemMaterial;
   import §package§.LevelItemShape;
   import §package§.LevelItemSoundResource;
   
   public class LevelObject
   {
      
      public static const §%!>§:uint;
      
      public static const §5!$§:uint;
      
      public static const §,t§:uint;
      
      public static const §8o§:uint;
      
      public static const §7L§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§§findproperty(§%!>§));
            §§push(1);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() << 1);
            }
            §§pop().§%!>§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§5!$§));
               §§push(1);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§5!$§ = §§pop();
               loop1:
               for(; _loc1_ || _loc1_; if(_loc2_ && _loc1_)
               {
                  continue;
               },§§goto(addr41))
               {
                  §§push(§§findproperty(§,t§));
                  §§push(1);
                  if(_loc1_ || LevelObject)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§,t§ = §§pop();
                  while(true)
                  {
                     §§push(§§findproperty(§8o§));
                     §§push(1);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§8o§ = §§pop();
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           §7L§ = true;
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      private var §^k§:String;
      
      private var §]!S§:int;
      
      private var §1!]§:int;
      
      public var § I§:String;
      
      public var §4o§:int;
      
      private var §@!i§:§2Y§;
      
      private var §2$§:LevelObjectManager;
      
      private var mWorld:b2World;
      
      protected var §@J§:String = "";
      
      protected var §#c§:int = 1;
      
      private var §73§:b2Fixture;
      
      private var §6!X§:b2Body;
      
      private var §7U§:b2Vec2;
      
      public var §3W§:Number;
      
      public var §>!"§:Number;
      
      private var §-!M§:Number;
      
      private var §88§:Boolean = false;
      
      private var §2b§:Number;
      
      private var §+!]§:Number;
      
      private var §`!3§:Number;
      
      private var §<!3§:Number;
      
      private var §@4§:Number;
      
      private var §;!2§:Number;
      
      public var §?!9§:Number = 1;
      
      private var §2!E§:Boolean = false;
      
      public var §0#§:Number = 0;
      
      public var §-!I§:Number = 0;
      
      protected var §[c§:Boolean = false;
      
      public var §`!P§:LevelObjectRenderer;
      
      private var §"!,§:Sprite;
      
      private var §1X§:Number = 0;
      
      private var §`J§:Number = 0;
      
      private var §&Z§:Number = 0;
      
      private var §?C§:Number = 1.0;
      
      private var §9z§:Boolean = false;
      
      private var §"V§:Vector.<Vector.<Number>>;
      
      private var §6!3§:int = 10;
      
      private var § null§:Boolean = true;
      
      public function LevelObject(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc16_ && this))
         {
            this.§"V§ = new Vector.<Vector.<Number>>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§ I§ = param6;
                  loop2:
                  while(true)
                  {
                     this.§@!i§ = LevelItemManager.§-`§(param6);
                     addr259:
                     while(true)
                     {
                        this.§2$§ = param1;
                        continue loop2;
                     }
                  }
               }
               if(!(_loc17_ || param1))
               {
                  continue;
               }
               §§goto(addr86);
            }
         }
         while(true)
         {
            this.§9z§ = param11;
            §§goto(addr225);
         }
      }
      
      public static function §1!2§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(param2 == null)
            {
               if(_loc5_ || param2)
               {
                  return;
               }
            }
         }
         var _loc4_:String = param2.§,^§[param1];
         if(_loc5_ || LevelObject)
         {
            §§push(_loc4_);
            if(_loc5_ || param3)
            {
               if(§§pop().length > 0)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param3);
                     if(!(_loc6_ && param1))
                     {
                        if(§§pop().length <= 0)
                        {
                           while(true)
                           {
                              §§push(param2.§?!g§);
                              if(!_loc6_)
                              {
                                 addr128:
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    param3 = §§pop();
                                    addr129:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr128:
                              }
                              §§goto(addr128);
                           }
                           addr123:
                        }
                        while(true)
                        {
                           SoundEngine.§[!D§(_loc4_,param3);
                           if(!(_loc6_ && param2))
                           {
                              if(_loc5_ || param1)
                              {
                                 if(_loc5_ || param3)
                                 {
                                    §§goto(addr48);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr123);
                           }
                           break;
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr128);
                  }
                  addr112:
               }
               addr48:
               return;
            }
            §§goto(addr128);
         }
         §§goto(addr112);
      }
      
      public static function §'r§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(180);
            if(_loc2_ || LevelObject)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc3_ && LevelObject))
                  {
                     addr63:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(_loc2_ || param1)
               {
                  return §§pop() % 360;
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function §`!;§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!_loc4_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_ || LevelObject)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function get front() : Boolean
      {
         return this.§9z§;
      }
      
      public function get §'l§() : Number
      {
         return this.§6!X§.GetPosition().x;
      }
      
      public function get §>z§() : Number
      {
         return this.§6!X§.GetPosition().y;
      }
      
      public function get §0[§() : §2Y§
      {
         return this.§@!i§;
      }
      
      public function get §9!]§() : Boolean
      {
         return this.§-!M§ >= 0;
      }
      
      protected function get container() : LevelObjectManager
      {
         return this.§2$§;
      }
      
      public function get §3!S§() : Boolean
      {
         return this.§ null§;
      }
      
      public function set §3!S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ null§ = param1;
         }
      }
      
      public function set §4!i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§88§ = param1;
         }
      }
      
      public function set §+!8§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!3§ = param1;
         }
      }
      
      public function get §+!8§() : uint
      {
         return this.§6!3§;
      }
      
      public function get §`!f§() : Boolean
      {
         return this.§2!E§;
      }
      
      public function set §`!f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!E§ = param1;
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
         return this.§^k§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^k§ = param1;
         }
      }
      
      public function §=a§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§73§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr48:
                     this.§73§.§^B§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function § do§(param1:String) : int
      {
         return § !_§.§ do§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_ || param1)
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr143:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(_loc1_ || _loc1_)
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
                           §§pop().§=!]§(this.§@!'§());
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
                     this.§`!P§.dispose();
                     loop3:
                     while(true)
                     {
                        §§push(this.§"!,§);
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        loop7:
                        while(true)
                        {
                           §§pop().dispose();
                           loop8:
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 this.§"!,§ = null;
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§73§ = null;
                                          loop6:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      this.§7U§ = null;
                                                      for(; _loc1_; this.§@!i§ = null,if(_loc2_ && _loc1_)
                                                      {
                                                         continue;
                                                      },addr34:,if(_loc1_ || _loc1_)
                                                      {
                                                         break loop13;
                                                      },addr108:,while(true)
                                                      {
                                                         continue loop7;
                                                         §§goto(addr34);
                                                      })
                                                      {
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!(_loc2_ && this))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      continue loop6;
                                                   }
                                                   return;
                                                   addr86:
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                          continue loop9;
                                       }
                                       addr63:
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr158);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr86);
      }
      
      public function §'g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§@!'§());
            §§push(360);
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_ || param1)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§,!&§(§§pop());
         }
      }
      
      public function § %§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§@!'§().GetAngle());
         if(!(_loc2_ && _loc1_))
         {
            §§push(180);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr76);
            }
            §§push(§§pop() % §§pop());
         }
         addr76:
         §§push(§§pop() / Math.PI);
         if(!(_loc2_ && this))
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(_loc1_ || _loc1_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §'x§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§@!'§().SetLinearVelocity(param1);
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc4_ || param3)
                  {
                     this.§>!=§();
                  }
                  loop2:
                  while(true)
                  {
                     continue loop1;
                     addr70:
                     while(true)
                     {
                        if(_loc4_ || param2)
                        {
                           addr19:
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc5_ && param1)
               {
                  continue;
               }
               while(true)
               {
                  this.§4!9§();
                  §§goto(addr70);
               }
               addr57:
            }
         }
         §§goto(addr57);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§73§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(this.§@!'§());
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
                              if(_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§@!'§());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop().GetPosition());
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   loop12:
                                                   while(_loc6_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      while(!(_loc5_ && this))
                                                      {
                                                         addr136:
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§pop();
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(_loc5_ && param2)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(this.§@!'§());
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(§§pop().GetPosition());
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  if(_loc5_ && param3)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(param2);
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr136);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr200:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§@!'§());
                                                                                                               addr91:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().GetPosition());
                                                                                                                  addr92:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ && param3)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        §§push(param1);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              break loop20;
                                                                                                                           }
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr199:
                                                                                                      }
                                                                                                      §§goto(addr200);
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr117:
                                                                                                   addr134:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr197:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             addr198:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr199);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr117);
                                                                                       }
                                                                                       §§goto(addr198);
                                                                                    }
                                                                                    §§goto(addr84);
                                                                                 }
                                                                                 §§goto(addr82);
                                                                              }
                                                                              §§goto(addr134);
                                                                           }
                                                                           addr82:
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        continue loop12;
                                                                        if(_loc6_)
                                                                        {
                                                                           addr84:
                                                                           return §§pop();
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr113);
                                                                  }
                                                                  §§goto(addr110);
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr197);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr200);
      }
      
      public function §&!d§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7U§ = param1;
         }
      }
      
      public function §4a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§7U§)
            {
               do
               {
                  this.§'x§(this.§7U§,false);
                  do
                  {
                     this.§7U§ = null;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_ && _loc1_);
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §>!=§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(!param1);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(this.§@!'§());
                     if(!_loc2_)
                     {
                        param1 = §§pop().GetLinearVelocity();
                        addr38:
                        §§push(param1.x);
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             addr123:
                                             §§push(param1.y == 0);
                                             if(_loc3_ || _loc2_)
                                             {
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                    addr132:
                                    §§goto(addr131);
                                 }
                              }
                              addr131:
                              if(!§§pop())
                              {
                                 §§push(this.§@!'§());
                                 if(!_loc2_)
                                 {
                                    addr93:
                                    §§pop().§%#§(Math.atan2(param1.x,param1.y));
                                    if(_loc2_ && _loc3_)
                                    {
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       addr119:
                                    }
                                 }
                              }
                              §§goto(addr140);
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr140);
               }
               §§goto(addr38);
            }
            §§goto(addr132);
         }
         addr140:
         if(_loc3_)
         {
            §§push(this.§@!'§());
         }
      }
      
      public function §4!9§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               param1 = this.§@!'§().GetLinearVelocity();
               addr21:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc4_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               this.§'g§(_loc2_);
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function §!!g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!'§().§%#§(param1);
         }
      }
      
      public function §@!'§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§73§);
            if(_loc2_ || this)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§push(this.§73§);
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
      
      public function § T§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param1 != -9999)
            {
               if(!(_loc3_ && this))
               {
                  this.§1X§ = param1;
               }
               while(true)
               {
                  this.§`J§ = param2;
                  addr105:
                  while(true)
                  {
                  }
               }
               addr119:
            }
            loop2:
            while(true)
            {
               §§push(this.§@!'§());
               loop3:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr91:
                  while(true)
                  {
                     §§push(this.§1X§);
                     addr93:
                     while(true)
                     {
                        §§push(LevelMain.§@!d§);
                        addr96:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr97:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr98:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr119);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §<&§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         §§push(false);
         if(_loc6_ || param2)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(this.§[c§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr502:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr503:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr504:
                           while(true)
                           {
                              this.§[c§ = false;
                              addr497:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                  }
                  addr501:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop7:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr490:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr491:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr492:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr489:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        if(_loc6_ || param2)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    continue loop0;
                                 }
                                 addr461:
                              }
                              else
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(this.updateScreamingFrameAnimations(param2));
                                    loop16:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             §§push(true);
                                             loop18:
                                             while(true)
                                             {
                                                if(_loc5_ && param2)
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr434:
                                                   while(!(_loc5_ && this))
                                                   {
                                                   }
                                                   addr192:
                                                   §§goto(addr492);
                                                   if(_loc5_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop46:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               this.§<k§(param1);
                                                               loop47:
                                                               while(true)
                                                               {
                                                                  loop48:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"!,§);
                                                                     loop49:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = Math.round(this.§1X§);
                                                                        loop50:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr129:
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(this.§"!,§);
                                                                                       while(_loc6_ || param2)
                                                                                       {
                                                                                          §§pop().y = Math.round(this.§`J§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§"!,§);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(this.§&Z§);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(§§pop() / 180);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() * Math.PI);
                                                                                                }
                                                                                             }
                                                                                             §§pop().rotation = §§pop();
                                                                                             if(_loc5_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop50;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr75:
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr504);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§goto(addr501);
                                                                                                         }
                                                                                                         addr481:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr434);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§`!P§);
                                                                                                      loop38:
                                                                                                      while(!_loc5_)
                                                                                                      {
                                                                                                         §§pop().§+Q§.blurX = _loc4_;
                                                                                                         loop39:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               §§push(this.§`!P§);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ || param2))
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  §§push(this.§`!P§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§@!2§();
                                                                                                                     addr380:
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              break loop29;
                                                                                                                           }
                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§?!9§);
                                                                                                                                 loop33:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > 1);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       loop34:
                                                                                                                                       while(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc6_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr346:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      break loop31;
                                                                                                                                                   }
                                                                                                                                                   §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§`!P§);
                                                                                                                                                      break loop38;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr480:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      §§goto(addr481);
                                                                                                                                                   }
                                                                                                                                                   addr480:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr346:
                                                                                                                                          }
                                                                                                                                          loop35:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§`!P§);
                                                                                                                                                   if(_loc5_ && param2)
                                                                                                                                                   {
                                                                                                                                                      while(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§+Q§.blurY = _loc4_;
                                                                                                                                                         break loop49;
                                                                                                                                                      }
                                                                                                                                                      continue loop38;
                                                                                                                                                      addr231:
                                                                                                                                                   }
                                                                                                                                                   §§pop().§;q§(param2);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§7L§);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop34;
                                                                                                                                                            }
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               while(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     break loop50;
                                                                                                                                                                  }
                                                                                                                                                                  loop27:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     break loop34;
                                                                                                                                                                     addr416:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop16;
                                                                                                                                                               addr401:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr192);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr346);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop35;
                                                                                                                                                      }
                                                                                                                                                      addr405:
                                                                                                                                                      while(!(_loc5_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         while(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            §§goto(addr416);
                                                                                                                                                         }
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr502);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr214:
                                                                                                                                             }
                                                                                                                                             addr274:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(4);
                                                                                                                                                §§push(this.§`!P§.§+Q§.blurX - 4);
                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / 20);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc5_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop33;
                                                                                                                                             }
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          §§goto(addr413);
                                                                                                                                          §§goto(addr329);
                                                                                                                                       }
                                                                                                                                       addr329:
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    §§goto(addr346);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr321:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr489);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr416);
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  continue loop39;
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                               addr369:
                                                                                                            }
                                                                                                            §§goto(addr231);
                                                                                                         }
                                                                                                      }
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr270);
                                                                                                         §§push(Boolean(§§pop().§+Q§));
                                                                                                      }
                                                                                                      §§goto(addr378);
                                                                                                      §§goto(addr75);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr416);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   continue loop48;
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             addr146:
                                                                                          }
                                                                                       }
                                                                                       continue loop49;
                                                                                    }
                                                                                    §§goto(addr380);
                                                                                 }
                                                                                 break loop49;
                                                                              }
                                                                              continue loop47;
                                                                           }
                                                                           addr159:
                                                                           addr174:
                                                                           while(_loc6_ || param1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§`J§ = this.§+!]§;
                                                                                 §§goto(addr146);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop46;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    this.§1X§ = this.§2b§;
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr405);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr214);
                                                                        §§goto(addr129);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr497);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                   }
                                                   this.§&Z§ = this.§`!3§;
                                                   §§goto(addr174);
                                                }
                                             }
                                             §§goto(addr491);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr401);
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr480);
                        §§goto(addr502);
                     }
                     §§goto(addr503);
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      public function §`!Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§@!'§().GetPosition().x);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§@!'§().GetPosition().y);
         if(_loc3_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            this.§;!2§ = this.§`!3§;
            loop0:
            while(true)
            {
               this.§<!3§ = this.§2b§;
               loop1:
               while(true)
               {
                  this.§@4§ = this.§+!]§;
                  while(_loc3_)
                  {
                     §§push(this);
                     §§push(this.§@!'§().GetAngle());
                     if(!(_loc4_ && this))
                     {
                        §§push(180);
                        if(!_loc4_)
                        {
                           addr151:
                           §§push(§§pop() * (§§pop() / Math.PI));
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(360);
                           }
                           §§pop().§`!3§ = §§pop();
                           loop3:
                           while(!_loc4_)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(§§pop() / LevelMain.§@!d§);
                              }
                              §§pop().§2b§ = §§pop();
                              while(true)
                              {
                                 §§push(this);
                                 §§push(_loc2_);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop() / LevelMain.§@!d§);
                                 }
                                 §§pop().§+!]§ = §§pop();
                                 if(!_loc4_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                              return;
                           }
                           continue;
                        }
                        §§push(§§pop() % §§pop());
                     }
                     §§goto(addr151);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr111);
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
      
      public function §<k§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
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
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1);
                           if(!_loc3_)
                           {
                              addr1086:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr1041:
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§2$§.§`s§.mLevelEngine.§7!9§);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(1000);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr1071:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr1072:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         addr1073:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr306:
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() <= §§pop());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop101:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr331:
                                                               if(_loc4_ || param1)
                                                               {
                                                                  if(!(_loc3_ && param2))
                                                                  {
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           loop102:
                                                                           while(!§§pop())
                                                                           {
                                                                              §§push(this.§;!2§);
                                                                              loop103:
                                                                              for(; _loc4_; if(_loc3_ && param2)
                                                                              {
                                                                                 continue;
                                                                              },§§goto(addr62))
                                                                              {
                                                                                 addr174:
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    §§push(this.§`!3§);
                                                                                    loop104:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr195:
                                                                                             if(_loc4_ || param2)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop105:
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc4_ || param2)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr216:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr218:
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc3_ && param1))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop106:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr234:
                                                                                                                        loop107:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              addr241:
                                                                                                                              if(_loc4_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§`!3§);
                                                                                                                                    if(_loc3_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop103;
                                                                                                                                    }
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§;!2§);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop104;
                                                                                                                                       }
                                                                                                                                       addr45:
                                                                                                                                       if(_loc4_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             continue loop103;
                                                                                                                                          }
                                                                                                                                          loop91:
                                                                                                                                          while(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             loop92:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr440:
                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop93:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr468:
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     loop94:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop102;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc4_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    break loop107;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop57:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       loop58:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§&Z§ = this.§`!3§;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr805:
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop6;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr752:
                                                                                                                                                                                             §§push(this.§;!2§);
                                                                                                                                                                                             addr669:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§`!3§);
                                                                                                                                                                                                break loop104;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!(_loc3_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop74:
                                                                                                                                                                                                   for(; !§§pop(); if(_loc3_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   },§§push(Boolean(§§pop())),loop88:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr567:
                                                                                                                                                                                                         if(!(_loc3_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§;!2§);
                                                                                                                                                                                                                  while(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§`!3§);
                                                                                                                                                                                                                     continue loop91;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop12:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     param1 = §§pop();
                                                                                                                                                                                                                     loop13:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§2b§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§<!3§);
                                                                                                                                                                                                                           addr1025:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                                                                              addr1026:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 loop17:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    addr1028:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                       addr1029:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                break loop57;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1030:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1005:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1006:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      this.§0#§ = 0;
                                                                                                                                                                                                                                                      while(!(_loc3_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§1X§ = this.§2b§;
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1073);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                   addr1007:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§<!3§);
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - this.§2b§);
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr987:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr991:
                                                                                                                                                                                                                                                            §§push(§§pop() / param2);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().§0#§ = §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                            §§push(this.§2b§);
                                                                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + this.§0#§);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().§1X§ = §§pop();
                                                                                                                                                                                                                                                            addr958:
                                                                                                                                                                                                                                                            while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§+!]§);
                                                                                                                                                                                                                                                                  addr932:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr934);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr999);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                            addr940:
                                                                                                                                                                                                                                                            loop37:
                                                                                                                                                                                                                                                            while(!(_loc3_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                                                                               while(_loc4_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                     addr915:
                                                                                                                                                                                                                                                                     while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr924:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§-!I§ = 0;
                                                                                                                                                                                                                                                                                    addr928:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§`J§ = this.§+!]§;
                                                                                                                                                                                                                                                                                       addr901:
                                                                                                                                                                                                                                                                                       while(_loc4_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr925:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§@4§);
                                                                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - this.§+!]§);
                                                                                                                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr884:
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr893:
                                                                                                                                                                                                                                                                                             §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().§-!I§ = §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                                                                             §§push(this.§+!]§);
                                                                                                                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + this.§-!I§);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().§`J§ = §§pop();
                                                                                                                                                                                                                                                                                             addr857:
                                                                                                                                                                                                                                                                                             loop116:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr815:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§`!3§);
                                                                                                                                                                                                                                                                                                   addr818:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr820);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop116;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr895:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr893);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr884);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr893);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr815);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr932);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr991);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr987);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr991);
                                                                                                                                                                                                                                                §§goto(addr929);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr515:
                                                                                                                                                                                                                           if(!(_loc4_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(180);
                                                                                                                                                                                                                                 while(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr545);
                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    while(!(_loc3_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr306);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                          addr1004:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1005);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr914);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr915);
                                                                                                                                                                                                                                 addr791:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1072);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr583:
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§`!3§);
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§;!2§);
                                                                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - 360);
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - this.§`!3§);
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr616:
                                                                                                                                                                                                                                 addr617:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§&Z§ = §§pop() + §§pop();
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr25);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr928);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr857);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr616);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr617);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1012);
                                                                                                                                                                                                               addr581:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr915);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            addr827:
                                                                                                                                                                                                            addr938:
                                                                                                                                                                                                            while(!(_loc3_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                              addr774:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr776:
                                                                                                                                                                                                                                    if(!(_loc3_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1002:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1003);
                                                                                                                                                                                                                                       §§goto(addr776);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr906);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr914);
                                                                                                                                                                                                                              break loop102;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr841:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr924);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1004);
                                                                                                                                                                                                                  §§goto(addr218);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     §§goto(addr940);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr939:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr923);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr567);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr826:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            break loop88;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr768:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr195);
                                                                                                                                                                                                   },while(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§;!2§);
                                                                                                                                                                                                      while(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§`!3§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            addr658:
                                                                                                                                                                                                            while(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop5;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr818);
                                                                                                                                                                                                            break loop91;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr752);
                                                                                                                                                                                                   },§§goto(addr901),addr769:)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§;!2§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§`!3§);
                                                                                                                                                                                                         addr630:
                                                                                                                                                                                                         while(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                            loop77:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               addr634:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  break loop93;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr545:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop74;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop77;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop74;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr820:
                                                                                                                                                                                                         while(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            break loop105;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr934:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            break loop92;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr679:
                                                                                                                                                                                                   if(_loc4_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr769);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                   §§push(this.§`!3§);
                                                                                                                                                                                                   if(_loc4_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§;!2§);
                                                                                                                                                                                                         if(!(_loc3_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - this.§`!3§);
                                                                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr725:
                                                                                                                                                                                                               addr736:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc3_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr734:
                                                                                                                                                                                                                  §§push(§§pop() / param2);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§&Z§ = §§pop() + §§pop();
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc3_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr25);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr999);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr925);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr734);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr725);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr734);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr736);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr895);
                                                                                                                                                                                                while(!(_loc3_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§;!2§);
                                                                                                                                                                                                      addr494:
                                                                                                                                                                                                      addr159:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§`!3§);
                                                                                                                                                                                                         break loop91;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc3_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr25);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop93;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1030);
                                                                                                                                                                                    §§goto(addr480);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr480:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1002);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 break loop94;
                                                                                                                                                                              }
                                                                                                                                                                              addr766:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr638:
                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr641);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr581);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr827);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr768);
                                                                                                                                                                     }
                                                                                                                                                                     addr468:
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr468);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr641);
                                                                                                                                                         }
                                                                                                                                                         while(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr638);
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1029);
                                                                                                                                                         addr450:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr766);
                                                                                                                                                      §§goto(addr440);
                                                                                                                                                   }
                                                                                                                                                   addr765:
                                                                                                                                                }
                                                                                                                                                §§goto(addr545);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                break loop101;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(!(_loc3_ && param2))
                                                                                                                                          {
                                                                                                                                             if(_loc3_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr515);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr628);
                                                                                                                                                addr62:
                                                                                                                                                if(!(_loc4_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(180);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop105;
                                                                                                                                                         }
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop101;
                                                                                                                                                      }
                                                                                                                                                      continue loop106;
                                                                                                                                                   }
                                                                                                                                                   addr1037:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1038);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr285);
                                                                                                                                             }
                                                                                                                                             §§goto(addr774);
                                                                                                                                          }
                                                                                                                                          §§goto(addr657);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                break loop103;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr630);
                                                                                                                                          §§goto(addr45);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1025);
                                                                                                                                    }
                                                                                                                                    §§goto(addr431);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1031);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr407:
                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr25);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1007);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr805);
                                                                                                                              }
                                                                                                                              §§goto(addr725);
                                                                                                                           }
                                                                                                                           §§goto(addr583);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§`!3§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr267);
                                                                                                                                          §§push(this.§;!2§);
                                                                                                                                       }
                                                                                                                                       while(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1037);
                                                                                                                                          §§push(-1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1071);
                                                                                                                                       addr1034:
                                                                                                                                    }
                                                                                                                                    §§goto(addr653);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr174);
                                                                                                                              }
                                                                                                                              §§goto(addr494);
                                                                                                                              addr254:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr241);
                                                                                                                        }
                                                                                                                        §§goto(addr958);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 break loop102;
                                                                                                                              }
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§`!3§);
                                                                                                                                 if(_loc4_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(this.§;!2§);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 360);
                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - this.§`!3§);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr151:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr149:
                                                                                                                                                   §§push(§§pop() / param2);
                                                                                                                                                }
                                                                                                                                                §§pop().§&Z§ = §§pop() + §§pop();
                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr159);
                                                                                                                                                }
                                                                                                                                                §§goto(addr616);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr149);
                                                                                                                                 }
                                                                                                                                 §§goto(addr151);
                                                                                                                              }
                                                                                                                              §§goto(addr679);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr234);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr151);
                                                                                                                     }
                                                                                                                     addr25:
                                                                                                                     return;
                                                                                                                     addr94:
                                                                                                                  }
                                                                                                                  §§goto(addr616);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr938);
                                                                                                               }
                                                                                                               addr937:
                                                                                                            }
                                                                                                            §§goto(addr835);
                                                                                                         }
                                                                                                         §§goto(addr468);
                                                                                                      }
                                                                                                      §§goto(addr1028);
                                                                                                   }
                                                                                                   §§goto(addr216);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr826);
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr939);
                                                                                                }
                                                                                                addr203:
                                                                                             }
                                                                                             §§goto(addr560);
                                                                                          }
                                                                                          §§goto(addr438);
                                                                                       }
                                                                                       §§goto(addr203);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       addr755:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_ || param2)
                                                                                             {
                                                                                                §§goto(addr765);
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr836);
                                                                                       }
                                                                                       §§goto(addr1026);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr254);
                                                                              }
                                                                              while(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr285);
                                                                                 §§push(180);
                                                                              }
                                                                              §§goto(addr658);
                                                                           }
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§`!3§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!(_loc3_ && param2))
                                                                                 {
                                                                                    §§push(this.§;!2§);
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - this.§`!3§);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr395:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             addr404:
                                                                                             §§push(§§pop() / param2);
                                                                                          }
                                                                                          §§pop().§&Z§ = §§pop() + §§pop();
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                                 §§goto(addr404);
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           §§goto(addr841);
                                                                        }
                                                                        §§goto(addr1006);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr634);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr937);
                                                         }
                                                         addr329:
                                                      }
                                                      §§goto(addr755);
                                                   }
                                                   §§goto(addr329);
                                                }
                                             }
                                             §§goto(addr1071);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr1034);
                                       }
                                       while(_loc4_ || _loc3_)
                                       {
                                          §§goto(addr669);
                                          §§push(§§pop() <= §§pop());
                                          §§goto(addr292);
                                       }
                                    }
                                 }
                                 §§goto(addr1071);
                              }
                           }
                        }
                        §§goto(addr1086);
                     }
                  }
                  §§goto(addr1041);
               }
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr791);
               §§push(0);
            }
         }
         §§goto(addr884);
      }
      
      public function get §51§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!§7L§)
            {
            }
         }
         return null;
      }
      
      public function §]![§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4o§);
            if(_loc2_)
            {
               §§push(§2Y§.§6!c§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(!_loc1_)
                           {
                              addr71:
                              §§pop();
                              addr77:
                              addr74:
                              addr72:
                              §§push(this.§4o§ == §2Y§.§3F§);
                              if(!_loc2_)
                              {
                              }
                              §§goto(addr81);
                           }
                           §§push(Boolean(§§pop()));
                        }
                        addr81:
                        return §§pop();
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr77);
            }
            §§goto(addr74);
         }
         §§goto(addr72);
      }
      
      public function §;!C§() : Boolean
      {
         return this.§4o§ == §2Y§.§<%§;
      }
      
      public function §4!b§() : Boolean
      {
         return this.§4o§ == §2Y§.§5!a§;
      }
      
      public function §do §() : Boolean
      {
         return this.§4o§ == §2Y§.§3F§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4o§ == §2Y§.§-Z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§4o§ == §2Y§.§?Y§;
      }
      
      public function §9s§() : Boolean
      {
         return this.§4o§ == §2Y§.§9!0§;
      }
      
      public function §6F§() : Boolean
      {
         return this.§4o§ == §2Y§.§?N§;
      }
      
      public function §!R§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ I§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr86:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     do
                     {
                        §§push(§§pop());
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§push(false);
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                           }
                           return §§pop();
                        }
                     }
                     while(_loc2_);
                     
                     return §§pop();
                  }
                  addr100:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr85:
         }
         while(true)
         {
            §§push(this.§ I§);
            if(!_loc2_)
            {
               §§push("POWERUP_BOMB");
               if(!_loc2_)
               {
                  §§goto(addr61);
                  §§push(§§pop() == §§pop());
               }
               else
               {
                  §§goto(addr86);
               }
               §§goto(addr100);
            }
            else
            {
               §§goto(addr85);
            }
         }
      }
      
      public function §7!F§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§;!C§());
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
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop5:
                              while(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc1_)
                                       {
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(_loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§`!f§);
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc1_ || _loc2_))
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  addr145:
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr146:
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           §§push(this.§6F§());
                                                                           continue loop15;
                                                                        }
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9s§());
                                                                           addr107:
                                                                           addr160:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              break loop7;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr49);
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr103:
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr107);
                                             }
                                             while(!(_loc2_ && _loc1_))
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr160);
                                          }
                                          addr49:
                                       }
                                       continue loop5;
                                       return §§pop();
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr145);
                              }
                              continue loop3;
                              addr122:
                           }
                        }
                        §§goto(addr160);
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+l§() : Number
      {
         return Number(Math.sqrt(this.§@!'§().GetLinearVelocity().x * this.§@!'§().GetLinearVelocity().x + this.§@!'§().GetLinearVelocity().y * this.§@!'§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!_loc10_)
         {
            §§push(this.§4!b§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§2$§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§<!?§());
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§-!M§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop8:
                                          while(_loc9_ || param2)
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
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr850:
                                                            while(true)
                                                            {
                                                               §§push(param6);
                                                               addr807:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  addr808:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr849:
                                                      }
                                                      while(true)
                                                      {
                                                         loop17:
                                                         for(; !§§pop(); while(!(_loc10_ && param1))
                                                         {
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§goto(addr532);
                                                            }
                                                            §§goto(addr808);
                                                         })
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(this.§-!M§);
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           loop21:
                                                                           while(_loc9_ || param1)
                                                                           {
                                                                              if(_loc10_ && param1)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§push(this.§-!M§);
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop22:
                                                                                       for(; _loc9_; if(_loc10_ && param3)
                                                                                       {
                                                                                          continue;
                                                                                       },if(!(_loc9_ || param1))
                                                                                       {
                                                                                          continue loop21;
                                                                                       },§§push(1),if(!_loc10_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      this.§3W§ = 0;
                                                                                                   }
                                                                                                   §§goto(addr198);
                                                                                                }
                                                                                                this.§!d§(LevelItemSoundResource.§7!#§);
                                                                                                §§goto(addr120);
                                                                                             }
                                                                                             §§goto(addr790);
                                                                                          }
                                                                                          §§goto(addr777);
                                                                                       },§§goto(addr293))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop23:
                                                                                          for(; !(_loc10_ && param1); while(true)
                                                                                          {
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                if(_loc9_ || param2)
                                                                                                {
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr304);
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr334);
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                         addr293:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr812:
                                                                                                      }
                                                                                                      addr813:
                                                                                                      §§push(30);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      if(§§pop() <= §§pop())
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         break loop23;
                                                                                                      }
                                                                                                      §§goto(addr816);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop23;
                                                                                          },§§goto(addr777))
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   loop25:
                                                                                                   for(; _loc9_ || param3; while(_loc9_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr389);
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      §§goto(addr343);
                                                                                                   })
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop26:
                                                                                                            for(; _loc9_; if(_loc10_ && param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            },§§goto(addr324),§§push(Boolean(§§pop())))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(int(Math.min(this.§3W§,int(param1))));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                              }
                                                                                                                              addr545:
                                                                                                                           }
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ || param3))
                                                                                                                                 {
                                                                                                                                    addr816:
                                                                                                                                    this.§!d§(LevelItemSoundResource.§=z§);
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(LevelMain.§2!S§.getValue());
                                                                                                                                 if(!(_loc10_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc7_);
                                                                                                                                    while(!(_loc10_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(_loc9_ || param3)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr859);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr664:
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                       {
                                                                                                                                          addr676:
                                                                                                                                          §§push(§§pop() == this.§>!"§);
                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             addr684:
                                                                                                                                             addr685:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr686:
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§>!"§);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                }
                                                                                                                                                §§pop().§3W§ = §§pop();
                                                                                                                                                addr694:
                                                                                                                                                if(!(_loc9_ || param1))
                                                                                                                                                {
                                                                                                                                                   addr752:
                                                                                                                                                   §§push(param1);
                                                                                                                                                   break loop21;
                                                                                                                                                }
                                                                                                                                                if(_loc10_ && param2)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr850);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(this.§3W§);
                                                                                                                                             break loop22;
                                                                                                                                          }
                                                                                                                                          §§goto(addr849);
                                                                                                                                       }
                                                                                                                                       §§goto(addr866);
                                                                                                                                    }
                                                                                                                                    §§goto(addr770);
                                                                                                                                 }
                                                                                                                                 while(!_loc10_)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(this.§2$§);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().§`s§);
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          §§push(ScoreCollector.§"!R§);
                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(this.§3W§ > param1);
                                                                                                                                             if(_loc9_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         addr451:
                                                                                                                                                         §§pop();
                                                                                                                                                         §§push(param3);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr455:
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr455);
                                                                                                                                                   }
                                                                                                                                                   §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§@!'§().GetPosition().x,this.§@!'§().GetPosition().y,§ !_§.§5U§(this.§ I§));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr379:
                                                                                                                                                      addr80:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param5);
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc9_ || param3))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr91:
                                                                                                                                                            §§push(this.§3W§);
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr28);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop22;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop23;
                                                                                                                                                                  §§goto(addr91);
                                                                                                                                                               }
                                                                                                                                                               addr777:
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr778:
                                                                                                                                                                  this.§!d§(LevelItemSoundResource.§9!@§);
                                                                                                                                                               }
                                                                                                                                                               addr767:
                                                                                                                                                               §§push(this.§3W§);
                                                                                                                                                               addr159:
                                                                                                                                                            }
                                                                                                                                                            addr770:
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         addr712:
                                                                                                                                                         §§push(Boolean(this.§]![§()));
                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop11;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               addr728:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr729:
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr732:
                                                                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr664);
                                                                                                                                                                     §§push(this.§3W§);
                                                                                                                                                                  }
                                                                                                                                                                  this.§!d§(LevelItemSoundResource.§7!#§);
                                                                                                                                                                  §§goto(addr767);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr684);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr807);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr729);
                                                                                                                                                         addr766:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr732);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr455);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr451);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr778);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 §§goto(addr545);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr580:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       break loop30;
                                                                                                                                    }
                                                                                                                                    if(_loc9_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(this.§7!F§());
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          addr510:
                                                                                                                                          if(_loc10_ && this)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 while(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§goto(addr588);
                                                                                                                                    §§goto(addr510);
                                                                                                                                 }
                                                                                                                                 addr588:
                                                                                                                                 addr580:
                                                                                                                              }
                                                                                                                              §§goto(addr676);
                                                                                                                           }
                                                                                                                           §§goto(addr767);
                                                                                                                           addr546:
                                                                                                                        }
                                                                                                                        §§goto(addr379);
                                                                                                                     }
                                                                                                                     addr532:
                                                                                                                  }
                                                                                                                  §§goto(addr580);
                                                                                                                  addr326:
                                                                                                                  if(!(_loc9_ || param3))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop57:
                                                                                                                     while(_loc9_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§]![§());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              addr211:
                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                              {
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ || param3))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(!(_loc10_ && param3))
                                                                                                                                    {
                                                                                                                                       addr235:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop57;
                                                                                                                                       }
                                                                                                                                       addr237:
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr256:
                                                                                                                                                if(!(_loc10_ && param2))
                                                                                                                                                {
                                                                                                                                                   this.§3W§ = 1;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr857:
                                                                                                                                                         §§push(this.§3W§);
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop41:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§88§);
                                                                                                                                                         addr341:
                                                                                                                                                         while(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop25;
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop57;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr394:
                                                                                                                                                         while(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                      addr397:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr859:
                                                                                                                                                return §§pop();
                                                                                                                                                addr256:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr159);
                                                                                                                                             }
                                                                                                                                             §§goto(addr237);
                                                                                                                                          }
                                                                                                                                          addr244:
                                                                                                                                       }
                                                                                                                                       §§goto(addr685);
                                                                                                                                    }
                                                                                                                                    §§goto(addr712);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr390:
                                                                                                                                       while(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr394);
                                                                                                                                             }
                                                                                                                                             §§goto(addr351);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr728);
                                                                                                                                    }
                                                                                                                                    addr389:
                                                                                                                                 }
                                                                                                                                 §§goto(addr351);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr324:
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr326);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr393);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr393);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    §§goto(addr211);
                                                                                                                                 }
                                                                                                                                 §§goto(addr341);
                                                                                                                                 addr304:
                                                                                                                              }
                                                                                                                              §§goto(addr393);
                                                                                                                           }
                                                                                                                           §§goto(addr235);
                                                                                                                        }
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ || param2))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!(_loc9_ || param2))
                                                                                                                              {
                                                                                                                                 addr864:
                                                                                                                                 addr866:
                                                                                                                                 return §§pop();
                                                                                                                                 §§push(this.§3W§);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr378:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr378:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§3W§);
                                                                                                                              continue loop23;
                                                                                                                              §§goto(addr378);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§3W§);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - param1);
                                                                                                                           }
                                                                                                                           §§pop().§3W§ = §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr378);
                                                                                                                     }
                                                                                                                     §§goto(addr694);
                                                                                                                     addr352:
                                                                                                                     addr334:
                                                                                                                  }
                                                                                                                  §§goto(addr244);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§goto(addr729);
                                                                                                      }
                                                                                                      §§goto(addr580);
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop18;
                                                                                                addr127:
                                                                                                if(_loc10_ && param3)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      this.addDamageParticles(this.§2$§.§`s§.particles,param1);
                                                                                                      loop55:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && param2))
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         addr198:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ && this)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  break loop17;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               LevelObject.§1!2§(LevelItemSoundResource.§=z§,this.§@!i§.§%!K§,"ChannelDestroyed");
                                                                                                               addr151:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        break loop55;
                                                                                                                        addr155:
                                                                                                                     }
                                                                                                                     continue loop55;
                                                                                                                  }
                                                                                                                  §§goto(addr256);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop55;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr497);
                                                                                                   }
                                                                                                   §§goto(addr778);
                                                                                                }
                                                                                                §§goto(addr686);
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                this.§!d§(LevelItemSoundResource.§9!@§);
                                                                                                §§goto(addr766);
                                                                                             }
                                                                                             §§goto(addr732);
                                                                                          }
                                                                                          §§push(12);
                                                                                          if(_loc10_ && param2)
                                                                                          {
                                                                                             §§goto(addr813);
                                                                                          }
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             §§goto(addr732);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr776);
                                                                                             §§push(param1);
                                                                                          }
                                                                                          §§goto(addr777);
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                    addr757:
                                                                                    if(§§pop() >= §§pop() / 2)
                                                                                    {
                                                                                       §§goto(addr758);
                                                                                    }
                                                                                    §§goto(addr712);
                                                                                 }
                                                                                 §§goto(addr757);
                                                                              }
                                                                              §§goto(addr676);
                                                                           }
                                                                           §§goto(addr757);
                                                                        }
                                                                     }
                                                                     §§goto(addr752);
                                                                  }
                                                                  §§goto(addr757);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr812);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr857);
                           }
                        }
                     }
                  }
               }
               §§goto(addr864);
            }
         }
         §§goto(addr205);
      }
      
      public function §!d§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            LevelObject.§1!2§(param1,this.§@!i§.§%!K§);
         }
      }
      
      public function §8v§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@!i§.material.§<C§(param1));
         if(_loc2_)
         {
            return §§pop() * this.§?!9§;
         }
      }
      
      public function §&j§(param1:String) : Number
      {
         return this.§@!i§.material.§>;§(param1);
      }
      
      public function §6!L§() : String
      {
         return this.§@!i§.material.mName;
      }
      
      public function §^!Z§() : Number
      {
         return this.§@!i§.§1G§();
      }
      
      public function §[n§() : int
      {
         return this.§@!i§.§1!7§();
      }
      
      public function §>!%§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(30);
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            §§push(this.§@!'§().IsAwake());
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
                              loop5:
                              while(true)
                              {
                                 §§push(this.§]![§());
                                 if(!_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(!_loc2_)
                                    {
                                       §§push(§§pop());
                                       loop7:
                                       for(; _loc3_; if(!(_loc3_ || _loc2_))
                                       {
                                          continue;
                                       },§§goto(addr184),§§push(Boolean(§§pop())))
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop24:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr239:
                                                   loop25:
                                                   while(true)
                                                   {
                                                      §§push(this.§3W§ == this.§>!"§);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                         }
                                                         addr205:
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc2_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr222:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(Math.abs(this.§@!'§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                        while(!(_loc2_ && _loc3_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           while(_loc3_)
                                                                           {
                                                                              if(_loc2_ && _loc3_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 §§goto(addr73);
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop1;
                                                                        addr153:
                                                                     }
                                                                     continue loop25;
                                                                  }
                                                                  continue loop25;
                                                               }
                                                               addr221:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               addr184:
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop19:
                                                                        while(_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(Math.abs(this.§@!'§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 while(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    addr73:
                                                                                    return §§pop();
                                                                                    addr50:
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             addr64:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(Math.abs(this.§@!'§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr50);
                                                                                                   }
                                                                                                   §§goto(addr64);
                                                                                                }
                                                                                                continue loop19;
                                                                                                addr135:
                                                                                             }
                                                                                             §§goto(addr66);
                                                                                          }
                                                                                          break loop20;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr153);
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                  }
                                                                  §§goto(addr103);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr238:
                                             }
                                             §§goto(addr205);
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr238);
                              }
                           }
                        }
                        §§goto(addr73);
                     }
                  }
               }
            }
         }
         §§goto(addr239);
      }
      
      public function §5_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§@!'§().IsAwake());
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr44:
                        §§push(true);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr53);
                  }
                  §§push(this.isMoving());
                  if(!_loc2_)
                  {
                     addr52:
                     §§push(!§§pop());
                  }
               }
               addr53:
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr44);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+`§();
         }
         §§push(5);
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(Math.abs(this.§;!9§(this.§"V§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§pop();
                     }
                  }
               }
               while(_loc3_ || _loc2_)
               {
                  §§pop();
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr205);
      }
      
      private function §;!9§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         §§push(0);
         if(!(_loc5_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || this)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 §§push(§§pop() / param1.length);
                                 break;
                              }
                              addr102:
                              §§push(Number(§§pop() + param1[_loc3_]));
                           }
                           _loc2_ = §§pop();
                           addr88:
                           §§push(_loc3_ + 1);
                           if(_loc4_ || _loc3_)
                           {
                              addr97:
                              _loc3_ = int(§§pop());
                              continue;
                           }
                           §§goto(addr97);
                           addr108:
                        }
                        break;
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr102);
               }
               §§goto(addr88);
            }
            §§goto(addr97);
         }
         return §§pop();
      }
      
      private function §+`§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"V§[0].push(this.§@!'§().GetLinearVelocity().x);
         }
         loop0:
         while(true)
         {
            addr39:
            addr79:
            addr136:
            while(true)
            {
               this.§"V§[1].push(this.§@!'§().GetLinearVelocity().y);
               continue loop0;
            }
            var _loc1_:* = uint(0);
            while(true)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  if(§§pop() >= 3)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr128:
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           addr146:
                           while(true)
                           {
                              this.§"V§[_loc1_].shift();
                              §§goto(addr128);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr111:
                  }
                  else if(this.§"V§[_loc1_].length > this.§6!3§)
                  {
                     §§goto(addr146);
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                  }
               }
               while(true)
               {
                  _loc1_ = §§pop();
                  §§goto(addr111);
               }
            }
            return;
         }
      }
      
      public function §+!c§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?!9§ = param1;
         }
         do
         {
            if(this.§?!9§ <= 1)
            {
               §§push(this.§`!P§);
               if(!(_loc2_ && this))
               {
                  §§pop().§+Q§ = null;
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr25);
                  }
                  addr83:
                  §§push(this.§`!P§);
               }
               §§pop().§4!W§();
               continue;
            }
            §§goto(addr83);
         }
         while(_loc2_);
         
         addr25:
      }
      
      public function §0!"§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc4_ || _loc3_)
         {
            §§push(this.§@!i§.§#B§());
            loop0:
            while(true)
            {
               if(§§pop() != LevelItemMaterial.§>s§)
               {
                  §§push(this.§@!'§().GetMass());
                  loop1:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     loop21:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop15:
                        while(true)
                        {
                           addr28:
                           loop14:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc3_ && this))
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          while(true)
                                          {
                                             §§push(LevelMain.§@!d§);
                                             addr226:
                                             loop19:
                                             while(true)
                                             {
                                                §§push(LevelMain.§@!d§);
                                                addr229:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr230:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   continue loop19;
                                                }
                                             }
                                          }
                                          addr223:
                                       }
                                       else
                                       {
                                          loop24:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(this.§1!A§());
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            break;
                                                         }
                                                         addr219:
                                                         while(true)
                                                         {
                                                            §§push(this.§`!P§.mH);
                                                         }
                                                      }
                                                      addr162:
                                                      _loc2_ = §§pop();
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§push(this.§?C§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(this.§?C§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr85:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop14;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr162);
                                                                           }
                                                                           continue loop1;
                                                                           addr93:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr184:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop6;
                                                                                 }
                                                                                 addr194:
                                                                              }
                                                                              §§goto(addr226);
                                                                           }
                                                                           §§goto(addr230);
                                                                           §§goto(addr85);
                                                                        }
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr85);
                                                               }
                                                               break loop6;
                                                            }
                                                            break loop14;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            while(param1)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     addr136:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr219);
                                                                     }
                                                                     addr216:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr163);
                                                               }
                                                            }
                                                            §§goto(addr53);
                                                         }
                                                         addr231:
                                                         while(true)
                                                         {
                                                            continue loop21;
                                                         }
                                                      }
                                                      addr163:
                                                      addr154:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr223);
                                                   }
                                                }
                                             }
                                             §§goto(addr194);
                                          }
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr93);
                              }
                              break;
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr28);
                           }
                           §§goto(addr162);
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr216);
            }
         }
         §§goto(addr136);
      }
      
      public function §1!A§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_ || _loc3_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(_loc1_);
               if(_loc3_ || _loc1_)
               {
                  §§push(2);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() * Math.min(10,this.§`!P§.§ !S§ - 1));
                        if(_loc3_)
                        {
                           addr87:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                        }
                        §§goto(addr96);
                     }
                     _loc1_ = §§pop();
                     addr95:
                     addr96:
                     return §§pop();
                     §§push(_loc1_);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr96);
         }
         §§goto(addr95);
      }
      
      public function §&%§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§@!'§().GetLinearVelocity().x);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§@!'§().GetLinearVelocity().y);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && this))
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr139:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr138:
            }
            while(true)
            {
               _loc2_ = §§pop();
            }
            addr140:
         }
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(_loc5_);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || this)
                  {
                     if(!_loc6_)
                     {
                        addr130:
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           _loc3_ = §§pop();
                           do
                           {
                              this.§@!'§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                           }
                           while(!_loc7_);
                           
                           if(!(_loc6_ && _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr139);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr130);
               }
               else
               {
                  §§goto(addr138);
               }
            }
            §§goto(addr130);
         }
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
      
      public function §02§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§@!'§().GetPosition();
         if(_loc5_ || param3)
         {
            §§push(_loc4_);
            §§push(_loc4_.x);
            if(!_loc6_)
            {
               §§push(param2.x * param1);
               if(_loc5_ || param3)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc4_.y);
               if(!_loc6_)
               {
                  §§push(param2.y * param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().y = §§pop();
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     this.§@!'§().§"q§(_loc4_);
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§ %§());
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(360);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(360);
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       addr267:
                                       addr170:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§push(0);
                                       if(!(_loc6_ || param2))
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(param1);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() % §§pop());
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr203:
                                                            loop12:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr204:
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr105:
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() - _loc5_);
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   addr77:
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§'g§(_loc4_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc6_ || param2)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              §§push(this.§ %§());
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr281:
                                                                                                                                 §§push(§§pop() + param1);
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr290:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    break loop11;
                                                                                                                                 }
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr277:
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  addr123:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr138:
                                                                                                                                    while(!_loc7_)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 addr137:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr281);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr134:
                                                                                                                        }
                                                                                                                        §§goto(addr281);
                                                                                                                     }
                                                                                                                     §§goto(addr138);
                                                                                                                  }
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            while(!_loc7_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr43);
                                                                                                               }
                                                                                                            }
                                                                                                            addr269:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               break loop13;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                             §§goto(addr77);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr138);
                                                                                    }
                                                                                    break loop11;
                                                                                 }
                                                                                 §§goto(addr123);
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr134);
                                                                        }
                                                                        break loop13;
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                               }
                                                               addr268:
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(0));
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        break loop8;
                                                                        addr225:
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || param1))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(param1);
                                                                        if(_loc7_ && param2)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(_loc7_ && param1)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  §§goto(addr290);
                                                                  §§goto(addr105);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §§goto(addr269);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                      if(_loc6_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                   }
                                                   do
                                                   {
                                                      this.§'g§(_loc3_);
                                                   }
                                                   while(!(_loc6_ || this));
                                                   
                                                   return;
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr101);
                                    }
                                 }
                                 §§goto(addr268);
                              }
                           }
                           §§goto(addr267);
                        }
                     }
                  }
               }
            }
            §§goto(addr277);
         }
         §§goto(addr143);
      }
      
      public function § !#§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§'r§(this.§@!'§().GetAngle()));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || _loc2_)
               {
                  §§push(360);
                  if(_loc4_ || _loc2_)
                  {
                     addr131:
                     §§push(§§pop() * §§pop());
                     if(_loc4_ || _loc3_)
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
                           addr134:
                           while(true)
                           {
                              §§push(§`!;§(_loc2_));
                              if(_loc4_ || this)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr131);
            }
         }
         §§goto(addr134);
      }
      
      public function §[+§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§@!'§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop() - param2.x);
            if(!_loc14_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc15_)
            {
               §§push(§§pop() - param2.y);
               if(!(_loc14_ && param1))
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc15_)
               {
                  §§push(_loc4_);
                  if(!(_loc14_ && param2))
                  {
                     §§push(0);
                     if(_loc15_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc15_ || _loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc15_ || param2)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(_loc15_ || param2)
                                 {
                                    addr102:
                                    §§pop();
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       §§push(_loc5_);
                                       if(_loc15_)
                                       {
                                          addr114:
                                          §§push(§§pop() == 0);
                                          if(!_loc15_)
                                          {
                                          }
                                          addr118:
                                          if(§§pop())
                                          {
                                             if(_loc15_)
                                             {
                                                return;
                                             }
                                             addr133:
                                             var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                             addr122:
                                             §§push(_loc4_);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() / _loc5_);
                                                if(_loc15_ || _loc3_)
                                                {
                                                   addr146:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(Math.atan(_loc7_) * 180);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() / Math.PI);
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc8_:* = §§pop();
                                                if(!(_loc14_ && param1))
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(0);
                                                      if(_loc15_ || param2)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc15_ || param1)
                                                            {
                                                               addr210:
                                                               §§push(_loc8_);
                                                               if(_loc15_)
                                                               {
                                                                  addr214:
                                                                  §§push(§§pop() + 180);
                                                                  if(!(_loc14_ && _loc3_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        addr230:
                                                                        _loc8_ = §§pop();
                                                                        addr231:
                                                                        §§push(_loc8_);
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           §§push(§§pop() + param1);
                                                                           if(_loc14_ && _loc3_)
                                                                           {
                                                                           }
                                                                           addr249:
                                                                           var _loc9_:* = §§pop();
                                                                           §§push(_loc9_);
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              §§push(§§pop() * Math.PI);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(§§pop() / 180);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr268:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(Math.sin(_loc10_) * _loc6_);
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc11_:* = §§pop();
                                                                              §§push(Math.cos(_loc10_) * _loc6_);
                                                                              if(_loc15_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 this.§@!'§().§"q§(_loc13_);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr59);
         }
         §§goto(addr43);
      }
   }
}
