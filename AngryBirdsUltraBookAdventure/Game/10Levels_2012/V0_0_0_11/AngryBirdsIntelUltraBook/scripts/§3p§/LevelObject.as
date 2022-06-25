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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§findproperty(§?H§));
            §§push(1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() << 1);
            }
            §§pop().§?H§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§[c§));
               §§push(1);
               if(!_loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§[c§ = §§pop();
               do
               {
                  §§push(§§findproperty(§[=§));
                  §§push(1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§[=§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§?+§));
                     §§push(1);
                     if(_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§?+§ = §§pop();
                     while(true)
                     {
                        if(_loc2_ || LevelObject)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
               while(!_loc2_);
               
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
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(!_loc17_)
         {
            this.§;!g§ = new Vector.<Vector.<Number>>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§#>§ = param6;
                  while(true)
                  {
                     this.§<! § = LevelItemManager.§&!i§(param6);
                     addr278:
                     loop6:
                     for(; _loc16_ || param3; while(!(_loc17_ && param2))
                     {
                        this.§17§ = this.§<! §.§17§;
                        continue loop1;
                        loop14:
                        while(!(_loc17_ && this))
                        {
                           §§push(this.§7!O§);
                           loop15:
                           while(true)
                           {
                              §§push(§§pop().§?E§(param1.§"!>§.animationManager));
                              if(_loc16_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 addr96:
                                 while(!(_loc17_ && param1))
                                 {
                                    §§push(this.§7!O§);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(this.§1A§);
                                       addr107:
                                       while(true)
                                       {
                                          §§pop().§,!=§(§§pop(),this.§<! §.§<!I§(),this.§<! §.§"?§() / LevelMain.§8N§,this.§<! §.§'i§() / LevelMain.§8N§);
                                          addr126:
                                          while(true)
                                          {
                                             continue loop17;
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                                 addr96:
                              }
                              addr41:
                              while(true)
                              {
                                 §§push(this.§7!O§);
                                 if(_loc16_ || param2)
                                 {
                                    continue loop15;
                                 }
                                 §§goto(addr105);
                              }
                              continue loop14;
                           }
                        }
                     })
                     {
                        this.§]G§ = param11;
                        while(true)
                        {
                           this.§1!B§ = param5;
                           continue loop6;
                        }
                     }
                     while(true)
                     {
                        this.§'K§ = param1;
                        addr270:
                        while(true)
                        {
                           this.§'6§ = param2;
                        }
                     }
                  }
                  while(!(_loc17_ && param2))
                  {
                     continue loop0;
                     §§goto(addr96);
                  }
               }
            }
         }
         §§goto(addr265);
      }
      
      public static function §=I§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc4_:String = param2.§,]§[param1];
         if(!(_loc5_ && param2))
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop().length > 0)
               {
                  loop0:
                  do
                  {
                     §§push(param3);
                     if(!(_loc5_ && param3))
                     {
                        if(§§pop().length <= 0)
                        {
                           while(true)
                           {
                              §§push(param2.§9!M§);
                              if(!(_loc5_ && param3))
                              {
                                 addr114:
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    param3 = §§pop();
                                    addr115:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr114:
                              }
                              §§goto(addr114);
                              addr67:
                              if(!(_loc5_ && LevelObject))
                              {
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           SoundEngine.§1h§(_loc4_,param3);
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr67);
                        }
                        continue;
                     }
                     §§goto(addr114);
                  }
                  while(!_loc6_);
                  
               }
               return;
            }
            §§goto(addr114);
         }
         §§goto(addr115);
      }
      
      public static function §1!'§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && LevelObject))
         {
            §§push(180);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr69);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr69:
         §§push(§§pop() - §§pop());
         if(_loc2_ || LevelObject)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §%j§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_ || _loc3_)
            {
               addr68:
               return Number(§§pop());
            }
         }
         §§goto(addr68);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'P§ = param1;
         }
      }
      
      public function set §;!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3J§ = param1;
         }
      }
      
      public function set §@!i§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         if(_loc2_ || _loc3_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6G§ = param1;
         }
      }
      
      public function §2!L§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§5!5§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr48:
                     this.§5!5§.§7!]§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function §%!`§(param1:String) : int
      {
         return §0'§.§%!`§(param1);
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
               addr138:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc3_.§,!e§ = true;
            §§goto(addr69);
         }
         §§goto(addr42);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(!(_loc2_ && this))
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
                        addr129:
                        while(true)
                        {
                           §§pop().§<s§(this.§9f§());
                           addr133:
                           while(true)
                           {
                              this.mWorld = null;
                              addr115:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr127:
                  }
                  while(true)
                  {
                     this.§7!O§.dispose();
                     addr110:
                     loop6:
                     while(true)
                     {
                        §§push(this.§'6§);
                        if(_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           if(§§pop())
                           {
                              loop7:
                              for(; !(_loc2_ && this); while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr64);
                              })
                              {
                                 §§push(this.§'6§);
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr87:
                                    addr64:
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.§'6§ = null;
                                          continue loop7;
                                       }
                                       §§goto(addr133);
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    addr66:
                                    while(true)
                                    {
                                       this.§5!5§ = null;
                                       loop9:
                                       while(_loc1_)
                                       {
                                          this.§0!"§ = null;
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr87);
                                          }
                                          §§goto(addr133);
                                       }
                                       continue loop7;
                                       §§goto(addr66);
                                    }
                                 }
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr85);
                     }
                  }
               }
            }
            §§goto(addr129);
         }
         §§goto(addr110);
      }
      
      public function §;V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§9f§());
            §§push(360);
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc2_ && this))
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
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(_loc1_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc1_ || this)
                  {
                  }
                  §§goto(addr66);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr66:
         §§push(§§pop() - §§pop());
         if(_loc1_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §4g§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§9f§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(!_loc4_)
                     {
                        this.§3!K§();
                        while(true)
                        {
                           continue loop1;
                           addr49:
                           if(_loc5_)
                           {
                              this.§,!'§();
                           }
                           if(_loc5_ || param1)
                           {
                              if(!_loc4_)
                              {
                                 addr25:
                                 return;
                                 addr73:
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5!5§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
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
                              if(_loc6_ || param3)
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
                                          §§push(this.§9f§());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop().GetPosition());
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                loop11:
                                                while(!(_loc5_ && param2))
                                                {
                                                   §§push(param4);
                                                   loop12:
                                                   while(_loc6_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_ && param1)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 addr86:
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc6_ || param3)
                                                                                    {
                                                                                       addr148:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§9f§());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§push(§§pop().GetPosition());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc5_ && param1)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(param2);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                   }
                                                                                                   addr114:
                                                                                                }
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() >= §§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   addr182:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      break loop22;
                                                                                                   }
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          addr111:
                                                                                          while(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                          }
                                                                                          continue loop10;
                                                                                          §§goto(addr114);
                                                                                       }
                                                                                       addr148:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(_loc6_ || this)
                                                                                 {
                                                                                    §§push(this.§9f§());
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr168:
                                                         }
                                                         §§goto(addr182);
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr86);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr168);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public function §2!&§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!"§ = param1;
         }
      }
      
      public function §!!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§0!"§)
            {
               loop0:
               while(true)
               {
                  this.§4g§(this.§0!"§,false);
                  addr73:
                  while(true)
                  {
                     this.§0!"§ = null;
                     if(!(_loc1_ && this))
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr45);
               }
            }
            addr45:
            return;
         }
         §§goto(addr73);
      }
      
      public function §3!K§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(!param1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(this.§9f§());
                     if(!(_loc3_ && _loc2_))
                     {
                        param1 = §§pop().GetLinearVelocity();
                        addr47:
                        §§push(param1.x);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc3_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          addr102:
                                          §§pop();
                                          §§goto(addr164);
                                       }
                                       §§goto(addr160);
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§9f§());
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§pop().§<O§(Math.atan2(param1.x,param1.y));
                                          if(_loc3_ && this)
                                          {
                                             §§goto(addr164);
                                          }
                                          else
                                          {
                                             addr153:
                                          }
                                       }
                                    }
                                    §§goto(addr164);
                                    this.§9f§().§<O§(0);
                                    return;
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr47);
            }
            §§goto(addr160);
         }
         §§goto(addr153);
      }
      
      public function §,!'§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!param1)
            {
               addr37:
               param1 = this.§9f§().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc3_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               this.§;V§(_loc2_);
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §5!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
                     §§push(this.§5!5§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().GetBody();
         }
         addr50:
         return null;
      }
      
      public function § z§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != -9999)
            {
               while(true)
               {
                  this.§`!%§ = param1;
                  while(true)
                  {
                     this.§else§ = param2;
                     addr110:
                     while(!_loc3_)
                     {
                     }
                  }
                  addr98:
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  addr105:
                  §§push(this.§9f§());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop().GetPosition());
                     if(_loc4_)
                     {
                        §§push(this.§else§);
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              addr58:
                              §§push(LevelMain.§8N§);
                              if(_loc4_ || this)
                              {
                                 addr69:
                                 §§pop().y = §§pop() * §§pop();
                                 if(_loc3_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr98);
                                       }
                                       else
                                       {
                                          §§goto(addr110);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr77:
                                          while(true)
                                          {
                                             §§push(this.§`!%§);
                                             if(!_loc3_)
                                             {
                                                §§push(LevelMain.§8N§);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   break loop8;
                                                   §§goto(addr58);
                                                }
                                                addr94:
                                             }
                                             break loop8;
                                          }
                                          §§goto(addr105);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       §§goto(addr96);
                                    }
                                    addr96:
                                    addr95:
                                 }
                                 return;
                                 addr72:
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr76);
               }
            }
            while(true)
            {
               §§goto(addr76);
            }
         }
         §§goto(addr72);
      }
      
      public function §8?§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         §§push(false);
         if(_loc6_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(this.§"]§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(true);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              this.§"]§ = false;
                              loop5:
                              while(true)
                              {
                                 addr173:
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 this.§`!%§ = this.§#L§;
                                 loop45:
                                 while(!_loc5_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§else§ = this.§0!X§;
                                          loop46:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         loop53:
                                                         while(true)
                                                         {
                                                            §§push(this.§'6§);
                                                            while(true)
                                                            {
                                                               §§pop().x = Math.round(this.§`!%§);
                                                               addr115:
                                                               loop48:
                                                               while(!(_loc5_ && param1))
                                                               {
                                                                  §§push(this.§'6§);
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     §§pop().y = Math.round(this.§else§);
                                                                     addr90:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop48;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop46;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr96:
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop49;
                                                                           }
                                                                           loop17:
                                                                           while(_loc6_ || param2)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.updateScreamingFrameAnimations(param2));
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(true);
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         break loop46;
                                                                                                         loop37:
                                                                                                         for(; !(_loc5_ && param1); while(true)
                                                                                                         {
                                                                                                            if(_loc5_ && param1)
                                                                                                            {
                                                                                                               continue loop37;
                                                                                                            }
                                                                                                            if(_loc5_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            addr516:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               break loop17;
                                                                                                            }
                                                                                                         },loop36:
                                                                                                         for(; _loc6_; §§goto(addr302))
                                                                                                         {
                                                                                                            addr383:
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop37;
                                                                                                               }
                                                                                                               addr332:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr334:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(4);
                                                                                                                        §§push(this.§7!O§.§'Y§.blurX - 4);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr358:
                                                                                                                           §§push(param2);
                                                                                                                           if(!(_loc5_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 20);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr356:
                                                                                                                              §§push(§§pop() % 28);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§7!O§);
                                                                                                                                 addr286:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§'Y§.blurX = _loc4_;
                                                                                                                                    addr289:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§7!O§);
                                                                                                                                       addr263:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                          {
                                                                                                                                             §§pop().§'Y§.blurY = _loc4_;
                                                                                                                                             break loop45;
                                                                                                                                          }
                                                                                                                                          addr421:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§<3§();
                                                                                                                                             addr423:
                                                                                                                                             addr437:
                                                                                                                                             loop33:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param2))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§[t§);
                                                                                                                                                   }
                                                                                                                                                   addr366:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(true);
                                                                                                                                                      break loop33;
                                                                                                                                                   }
                                                                                                                                                   addr436:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                break loop36;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr365:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() > 1);
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              continue loop36;
                                                                                                                              §§goto(addr358);
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        §§goto(addr356);
                                                                                                                     }
                                                                                                                     addr334:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§7!O§);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§goto(addr232);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr286);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr263);
                                                                                                                     addr282:
                                                                                                                  }
                                                                                                                  §§goto(addr293);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr436);
                                                                                                               }
                                                                                                               addr409:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               §§goto(addr383);
                                                                                                            }
                                                                                                         },loop27:
                                                                                                         while(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            addr445:
                                                                                                            if(_loc5_ && _loc3_)
                                                                                                            {
                                                                                                               while(!_loc5_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(true);
                                                                                                                        addr515:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr516);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr514:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.updateFlyingFrameAnimations(param2));
                                                                                                                     break loop27;
                                                                                                                  }
                                                                                                                  §§goto(addr445);
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                               addr511:
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                         },while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               addr485:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  break loop19;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr438);
                                                                                                         },addr438:)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§7!O§);
                                                                                                               addr293:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop().§'Y§));
                                                                                                                  continue loop37;
                                                                                                                  addr232:
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     §§pop().§,!<§(param2);
                                                                                                                     break loop48;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr96);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr515);
                                                                                                }
                                                                                             }
                                                                                             break loop46;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr435);
                                                                                             §§push(this.updateBlinkingFrameAnimations(param2));
                                                                                             break loop46;
                                                                                          }
                                                                                          addr431:
                                                                                       }
                                                                                       break;
                                                                                       while(_loc6_ || param2)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr421);
                                                                                             }
                                                                                             addr419:
                                                                                          }
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       continue loop17;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr514);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr479);
                                                                           }
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     continue loop45;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(§&!@§);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.§1!8§ = this.§-y§;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr173);
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                                 addr171:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       this.§9C§(param1);
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop53;
                                                                                       }
                                                                                       addr219:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr484);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr423);
                                                                              }
                                                                              §§goto(addr453);
                                                                           }
                                                                           §§goto(addr485);
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  break;
                                                                  §§goto(addr115);
                                                               }
                                                               §§goto(addr289);
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(this.§1!8§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() / 180);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(§§pop() * Math.PI);
                                                                     }
                                                                  }
                                                                  §§pop().rotation = §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr90);
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr219);
                                             }
                                             §§goto(addr171);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr431);
                                          }
                                          addr478:
                                       }
                                       §§goto(addr419);
                                    }
                                    §§goto(addr365);
                                 }
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr478);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr511);
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§goto(addr332);
            }
         }
         §§goto(addr334);
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
         if(!_loc3_)
         {
            this.§&!?§ = this.§-y§;
         }
         while(true)
         {
            this.§0!M§ = this.§#L§;
            loop1:
            for(; !_loc3_; if(!(_loc4_ || _loc1_))
            {
               continue;
            },§§push(this),§§push(_loc1_),if(!(_loc3_ && this))
            {
               §§push(§§pop() / LevelMain.§8N§);
            },§§pop().§#L§ = §§pop(),while(_loc4_)
            {
               §§push(this);
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() / LevelMain.§8N§);
               }
               §§pop().§0!X§ = §§pop();
               if(!_loc3_)
               {
                  return;
               }
            },§§goto(addr121))
            {
               this.§[P§ = this.§0!X§;
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(this.§9f§().GetAngle());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(180);
                     if(!(_loc3_ && _loc1_))
                     {
                        addr120:
                        §§push(§§pop() * (§§pop() / Math.PI));
                        if(!_loc3_)
                        {
                           §§push(360);
                        }
                        §§pop().§-y§ = §§pop();
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        continue loop1;
                        addr121:
                     }
                     §§push(§§pop() % §§pop());
                  }
                  §§goto(addr120);
               }
            }
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
         if(_loc4_)
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
                           if(!(_loc3_ && _loc3_))
                           {
                              addr1056:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr1013:
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
                                          while(true)
                                          {
                                             §§push(this.§'K§.§"!>§.mLevelEngine.§[6§);
                                             addr1034:
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr1035:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr1036:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr1037:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         addr1038:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr1019:
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(-1);
                                             loop9:
                                             while(!(_loc3_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop11:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this.§#L§);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.§0!M§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop3;
                                                                           }
                                                                           addr990:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§&!<§ = 0;
                                                                                    }
                                                                                    addr969:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(param1);
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       §§push(this.§0!M§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() - this.§#L§);
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc3_ && param2))
                                                                                             {
                                                                                                addr951:
                                                                                                §§push(§§pop() / param2);
                                                                                             }
                                                                                             §§pop().§&!<§ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§#L§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + this.§&!<§);
                                                                                                }
                                                                                                §§pop().§`!%§ = §§pop();
                                                                                                addr899:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   if(!(_loc3_ && param2))
                                                                                                   {
                                                                                                      if(_loc3_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr972:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§`!%§ = this.§#L§;
                                                                                                         addr959:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr972:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§0!X§);
                                                                                                      addr873:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§[P§);
                                                                                                         addr875:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            addr876:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               addr877:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr878:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr959);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr951);
                                                                                 }
                                                                                 §§goto(addr972);
                                                                                 loop63:
                                                                                 while(!(_loc3_ && param2))
                                                                                 {
                                                                                    §§pop();
                                                                                    loop64:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(this.§&!?§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-y§);
                                                                                             addr594:
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr1034);
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                          addr592:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr758:
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_ && param1)
                                                                                             {
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   loop36:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr862:
                                                                                                            loop39:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        this.§2! § = 0;
                                                                                                                     }
                                                                                                                     loop41:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§else§ = this.§0!X§;
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr774:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§-y§);
                                                                                                                              loop44:
                                                                                                                              while(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§&!?§);
                                                                                                                                    loop45:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       loop46:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop47:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop48:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                loop49:
                                                                                                                                                while(_loc4_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      loop50:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         loop51:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                            loop52:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop53:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr756:
                                                                                                                                                                        loop55:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§&!?§);
                                                                                                                                                                                 continue loop10;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr758);
                                                                                                                                                                              addr231:
                                                                                                                                                                              if(!(_loc4_ || param2))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 loop97:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§-y§);
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr33:
                                                                                                                                                                                                if(!(_loc3_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc3_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr49:
                                                                                                                                                                                                   §§push(this.§&!?§);
                                                                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc3_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr73:
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(_loc3_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(180);
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop53;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop15;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr106:
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop98:
                                                                                                                                                                                                                                       while(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§-y§);
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§&!?§);
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + 360);
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr146:
                                                                                                                                                                                                                                                            §§push(§§pop() - this.§-y§);
                                                                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr162:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc4_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr160:
                                                                                                                                                                                                                                                                  §§push(§§pop() / param2);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().§1!8§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop97;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc4_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1019);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr461:
                                                                                                                                                                                                                                                                  if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                     addr773:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                  §§push(this.§-y§);
                                                                                                                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§&!?§);
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - 360);
                                                                                                                                                                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr499:
                                                                                                                                                                                                                                                                              §§push(§§pop() - this.§-y§);
                                                                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr524:
                                                                                                                                                                                                                                                                                 addr504:
                                                                                                                                                                                                                                                                                 addr525:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().§1!8§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr969);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr524);
                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr504);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr499);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr524);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr525);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr160);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr146);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr160);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr162);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr298:
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop64;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                   §§push(this.§-y§);
                                                                                                                                                                                                                                                   if(!(_loc3_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                                                                      if(!(_loc3_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§&!?§);
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - this.§-y§);
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr334:
                                                                                                                                                                                                                                                               addr345:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr343:
                                                                                                                                                                                                                                                                  §§push(§§pop() / param2);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().§1!8§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                               addr346:
                                                                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop100:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc4_ || _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break loop64;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§-y§);
                                                                                                                                                                                                                                                                              loop101:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§&!?§);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(180);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                   addr265:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop46;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                         loop106:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr289:
                                                                                                                                                                                                                                                                                                               if(_loc3_ && param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  loop69:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                     loop70:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        loop71:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr637:
                                                                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop42;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                                                                                                                              §§push(this.§-y§);
                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                                                                                                                 if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.§&!?§);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - this.§-y§);
                                                                                                                                                                                                                                                                                                                                       if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr688:
                                                                                                                                                                                                                                                                                                                                          addr678:
                                                                                                                                                                                                                                                                                                                                          addr689:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop().§1!8§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                                          break loop98;
                                                                                                                                                                                                                                                                                                                                          addr690:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr688);
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr678);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr688);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr689);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§&!?§);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(this.§-y§);
                                                                                                                                                                                                                                                                                                                                 addr536:
                                                                                                                                                                                                                                                                                                                                 addr705:
                                                                                                                                                                                                                                                                                                                                 loop73:
                                                                                                                                                                                                                                                                                                                                 while(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                    while(_loc4_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                       loop75:
                                                                                                                                                                                                                                                                                                                                       while(_loc4_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                          loop76:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc3_ && param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(_loc4_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                            continue loop64;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr877);
                                                                                                                                                                                                                                                                                                                                                         addr578:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         loop86:
                                                                                                                                                                                                                                                                                                                                                         while(!§§pop())
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§&!?§);
                                                                                                                                                                                                                                                                                                                                                            while(_loc4_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(this.§-y§);
                                                                                                                                                                                                                                                                                                                                                               loop88:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop71;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr407:
                                                                                                                                                                                                                                                                                                                                                                     addr407:
                                                                                                                                                                                                                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                                                                        continue loop100;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop1;
                                                                                                                                                                                                                                                                                                                                                                  addr184:
                                                                                                                                                                                                                                                                                                                                                                  loop93:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                           addr194:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc4_ || param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop106;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr204:
                                                                                                                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                              while(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr226:
                                                                                                                                                                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop98;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop63;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         break loop88;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop76;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         break loop75;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr715:
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr578);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop64;
                                                                                                                                                                                                                                                                                                                                                                                             addr385:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr231);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop86;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                       addr454:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr407);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§&!?§);
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§-y§);
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop93;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop101;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop101;
                                                                                                                                                                                                                                                                                                                                                                                                addr180:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr298);
                                                                                                                                                                                                                                                                                                                                                                                             continue loop69;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(180);
                                                                                                                                                                                                                                                                                                                                                                                                   while(_loc4_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr454);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                                                                                                                                                                                                                   addr451:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr592);
                                                                                                                                                                                                                                                                                                                                                                                          addr296:
                                                                                                                                                                                                                                                                                                                                                                                          addr444:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop77;
                                                                                                                                                                                                                                                                                                                                                                                    addr404:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr226);
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr106);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr204);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr204:
                                                                                                                                                                                                                                                                                                                                                                              addr966:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr457);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop106;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop88;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop73;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr990);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr597);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr461);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr717:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop63;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop70;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr717);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr876);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr715);
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                    §§goto(addr536);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr875);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr534:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr634:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr296);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr552);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr544);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr264:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr363);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr261:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr443:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr443:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr258:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr444);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1038);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr899);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr524);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr690);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr343);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr334);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr343);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr345);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr637);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr162);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr407);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr265);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr204);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr194);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr227);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr106);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr451);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr264);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr594);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr258);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr184);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr443);
                                                                                                                                                                                                         §§push(this.§-y§);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      §§goto(addr33);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr534);
                                                                                                                                                                                                   addr437:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr443);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr261);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr180);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr73);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr346);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    addr963:
                                                                                                                                                                                    while(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr966);
                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr962:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 continue loop35;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr873);
                                                                                                                                                            }
                                                                                                                                                            continue loop11;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr756);
                                                                                                                                                }
                                                                                                                                                §§goto(addr878);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1036);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1037);
                                                                                                                              break loop64;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(param1);
                                                                                                                     if(!(_loc3_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.§[P§);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - this.§0!X§);
                                                                                                                           if(_loc4_ || param1)
                                                                                                                           {
                                                                                                                              addr839:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr848:
                                                                                                                                 §§push(§§pop() / param2);
                                                                                                                              }
                                                                                                                              §§pop().§2! § = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§0!X§);
                                                                                                                                 if(!(_loc3_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + this.§2! §);
                                                                                                                                 }
                                                                                                                                 §§pop().§else§ = §§pop();
                                                                                                                                 break loop64;
                                                                                                                              }
                                                                                                                              addr850:
                                                                                                                           }
                                                                                                                           §§goto(addr848);
                                                                                                                        }
                                                                                                                        §§goto(addr839);
                                                                                                                     }
                                                                                                                     §§goto(addr848);
                                                                                                                  }
                                                                                                                  §§goto(addr850);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                this.§1!8§ = this.§-y§;
                                                                                                §§goto(addr773);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr959);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr839);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr774);
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
                                             §§goto(addr1035);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1034);
                              }
                           }
                        }
                        §§goto(addr1056);
                     }
                  }
                  §§goto(addr1013);
               }
            }
         }
         §§goto(addr641);
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
         if(_loc2_)
         {
            §§push(this.§17§);
            if(!_loc1_)
            {
               §§push(§5s§.§-"§);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_ || this)
                     {
                        addr64:
                        §§push(§§pop());
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              §§pop();
                              addr87:
                              addr84:
                              addr82:
                              §§push(this.§17§ == §5s§.§3!h§);
                              if(_loc1_)
                              {
                              }
                              §§goto(addr91);
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     addr91:
                     return §§pop();
                  }
                  §§goto(addr64);
               }
               §§goto(addr87);
            }
            §§goto(addr84);
         }
         §§goto(addr82);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§#>§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr97:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop3:
                           do
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr91:
                                       §§push(true);
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§push(false);
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 addr60:
                              }
                           }
                           while(§§push(Boolean(§§pop())), _loc2_ || _loc1_);
                           
                           return §§pop();
                        }
                     }
                  }
                  addr116:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §`O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§"!7§());
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
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr166:
                              while(true)
                              {
                                 §§push(this.§9!&§());
                                 addr145:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr165:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§8r§());
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr59:
                                                while(_loc1_ || _loc2_)
                                                {
                                                }
                                                continue loop6;
                                                addr26:
                                                if(_loc1_ || this)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr41:
                                                      if(!_loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc1_ || this)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  §§pop();
                                                                  if(_loc2_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this.§@!Y§);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           §§goto(addr26);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr59);
                                                                        }
                                                                     }
                                                                     §§goto(addr41);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         continue loop10;
                                                         addr105:
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(!(_loc1_ || this))
                                          {
                                             continue loop7;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc1_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue loop8;
                                       }
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       §§goto(addr105);
                                    }
                                    addr51:
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr166);
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
         if(!_loc9_)
         {
            §§push(this.§?O§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && this))
                  {
                     §§push(this.§0o§);
                     break;
                  }
                  while(true)
                  {
                  }
                  addr803:
               }
               while(true)
               {
                  §§push(this.§'K§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().§+!]§());
                     loop4:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop5:
                        while(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§<g§);
                              loop7:
                              while(true)
                              {
                                 §§push(0);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop0;
                                                }
                                                loop18:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(this.§<g§);
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           if(!(_loc9_ && param3))
                                                                           {
                                                                              §§push(this.§<g§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop23:
                                                                                       while(!(_loc9_ && param2))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      loop28:
                                                                                                      while(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§`O§());
                                                                                                                  loop31:
                                                                                                                  while(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(int(Math.min(this.§0o§,int(param1))));
                                                                                                                                    loop35:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       addr531:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(LevelMain.§!!R§.getValue());
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc7_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(_loc10_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                            while(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            continue loop35;
                                                                                                                                                            addr507:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr658:
                                                                                                                                                         }
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr788);
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() >= this.§<g§ / 2)
                                                                                                                                                         {
                                                                                                                                                            addr665:
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§@r§(LevelItemSoundResource.§10§);
                                                                                                                                                                     addr680:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§'W§());
                                                                                                                                                                           addr640:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              addr641:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 break loop28;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr674:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr751:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr711:
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param6);
                                                                                                                                                                     addr731:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        addr732:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           break loop31;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr779:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr688:
                                                                                                                                                            §§push(this.§0o§);
                                                                                                                                                            break loop23;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr637);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§]!3§);
                                                                                                                                                         break loop22;
                                                                                                                                                      }
                                                                                                                                                      addr608:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             addr587:
                                                                                                                                             return §§pop();
                                                                                                                                             addr483:
                                                                                                                                          }
                                                                                                                                          §§goto(addr507);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr657:
                                                                                                                                    §§push(param1);
                                                                                                                                 }
                                                                                                                                 §§goto(addr658);
                                                                                                                              }
                                                                                                                              addr519:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop41:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param5);
                                                                                                                                 loop42:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       while(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             addr374:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(_loc10_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      while(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§3J§);
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               break loop5;
                                                                                                                                                            }
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         addr745:
                                                                                                                                                         this.§@r§(LevelItemSoundResource.§5!,§);
                                                                                                                                                         §§goto(addr751);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop5;
                                                                                                                                                   addr375:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr348:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§0o§);
                                                                                                                                                         if(!(_loc9_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - param1);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§0o§ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            while(_loc10_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               this.§0o§ = 1;
                                                                                                                                                               while(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§0o§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr163:
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           if(!(_loc9_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§@r§(LevelItemSoundResource.§@m§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.addDamageParticles(this.§'K§.§"!>§.particles,param1);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr383);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr680);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr608);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr649:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr519);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr658);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§0o§ = 0;
                                                                                                                                                                                                      §§goto(addr193);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr623:
                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                   §§push(this.§]!3§);
                                                                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§0o§ = §§pop();
                                                                                                                                                                                                   §§goto(addr383);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr186:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr531);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr705:
                                                                                                                                                                                       this.§@r§(LevelItemSoundResource.§10§);
                                                                                                                                                                                       §§goto(addr711);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr186);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr719);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           while(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                              if(_loc10_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr640);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr621:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr623);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr584:
                                                                                                                                                                                       §§goto(addr587);
                                                                                                                                                                                       §§push(this.§0o§);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr732);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr299);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr641);
                                                                                                                                                                              §§goto(addr163);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop8;
                                                                                                                                                                           addr245:
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.§0o§);
                                                                                                                                                                        continue loop23;
                                                                                                                                                                        if(_loc9_ && param3)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc9_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        addr242:
                                                                                                                                                                        while(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr245);
                                                                                                                                                                           §§push(1);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr483);
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr744);
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr705);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr665);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop41;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr728);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr242);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr584);
                                                                                                                                             }
                                                                                                                                             addr287:
                                                                                                                                             if(_loc9_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr222);
                                                                                                                                                }
                                                                                                                                                §§goto(addr299);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         §§goto(addr649);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr731);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr646:
                                                                                                                                                }
                                                                                                                                                §§goto(addr621);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr641);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(_loc10_ || param3)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr643);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr662);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr611);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr657);
                                                            }
                                                            §§goto(addr662);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr744);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr788:
                        return §§pop();
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr674);
      }
      
      public function §@r§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            LevelObject.§=I§(param1,this.§<! §.§,!9§);
         }
      }
      
      public function §;!'§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§<! §.material.override(param1));
         if(!_loc3_)
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
         if(!(_loc2_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            §§push(this.§9f§().IsAwake());
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
                                 §§push(this.§'W§());
                                 loop6:
                                 for(; !_loc2_; if(_loc2_ && _loc1_)
                                 {
                                    continue;
                                 },§§goto(addr113),§§push(Boolean(§§pop())))
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(this.§0o§ == this.§]!3§);
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop21:
                                                         while(!(_loc2_ && _loc1_))
                                                         {
                                                            §§pop();
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(Math.abs(this.§9f§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr91:
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        addr98:
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        addr221:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr113:
                                                                                                               break;
                                                                                                               addr113:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc2_ && _loc3_))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break loop22;
                                                                                                                     }
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Math.abs(this.§9f§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               addr181:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                             continue loop21;
                                                                                             addr69:
                                                                                          }
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    addr189:
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr98);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§pop();
                                                                           break loop22;
                                                                        }
                                                                        break;
                                                                        §§goto(addr91);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               §§goto(addr113);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr181);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr221);
                                             }
                                          }
                                       }
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr69);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr69);
                     }
                  }
               }
               while(true)
               {
                  if(_loc2_ && this)
                  {
                     continue loop0;
                  }
                  §§goto(addr189);
               }
            }
         }
         §§goto(addr258);
      }
      
      public function §&E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§9f§().IsAwake());
            if(!(_loc1_ && _loc1_))
            {
               §§push(!§§pop());
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        addr70:
                        §§push(true);
                        if(!_loc1_)
                        {
                           §§goto(addr73);
                        }
                     }
                     else
                     {
                        addr74:
                        §§push(this.isMoving());
                        if(_loc2_)
                        {
                           addr78:
                           return !§§pop();
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr74);
               }
               addr73:
               return §§pop();
            }
            §§goto(addr78);
         }
         §§goto(addr70);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§>!?§();
         }
         §§push(5);
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
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
                  if(!(_loc3_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(Math.abs(this.§0j§(this.§;!g§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr143:
                              while(!_loc3_)
                              {
                                 continue loop2;
                              }
                              addr86:
                              continue loop1;
                              if(_loc2_ || _loc2_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          addr39:
                                          §§push(true);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc3_)
                                                   {
                                                      addr79:
                                                      break loop9;
                                                   }
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr143);
                                             }
                                             addr69:
                                          }
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(false);
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       addr176:
                                       while(true)
                                       {
                                          §§push(Math.abs(this.§0j§(this.§;!g§[2])) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr39);
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                                 continue loop3;
                                 addr103:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      private function §0j§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(!(_loc5_ && param1))
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() >= param1.length)
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() / param1.length);
                                 break;
                              }
                              addr107:
                              _loc2_ = §§pop();
                              _loc3_++;
                              continue;
                              addr108:
                           }
                           break;
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        §§push(_loc2_);
                        if(!(_loc5_ && param1))
                        {
                           §§push(Number(§§pop() + param1[_loc3_]));
                        }
                     }
                  }
               }
            }
            §§goto(addr107);
         }
         return §§pop();
      }
      
      private function §>!?§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
               while(_loc2_ && _loc3_);
               
               if(!_loc2_)
               {
                  if(true)
                  {
                     var _loc1_:* = uint(0);
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           if(§§pop() >= 3)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr136:
                                 this.§;!g§[_loc1_].shift();
                                 loop4:
                                 while(true)
                                 {
                                    addr101:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc3_)
                                       {
                                          addr117:
                                          §§push(uint(§§pop() + 1));
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             continue loop4;
                                          }
                                          addr117:
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                                 addr142:
                              }
                              while(_loc2_ && _loc1_)
                              {
                                 §§goto(addr142);
                              }
                              continue;
                           }
                           if(this.§;!g§[_loc1_].length > this.§&!2§)
                           {
                              §§goto(addr136);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr117);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[t§ = param1;
            while(true)
            {
               if(this.§[t§ <= 1)
               {
                  §§push(this.§7!O§);
                  if(!(_loc3_ && this))
                  {
                     §§pop().§'Y§ = null;
                     if(_loc3_ && this)
                     {
                        addr93:
                     }
                     return;
                  }
                  break;
               }
               if(_loc2_ || _loc2_)
               {
                  continue;
               }
            }
            §§pop().§;!!§();
         }
         §§goto(addr93);
      }
      
      public function §%W§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc3_)
         {
            §§push(this.§<! §.§>t§());
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() != LevelItemMaterial.§!!&§)
               {
                  §§push(this.§9f§().GetMass());
                  loop0:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§push(this.§5!5§.§]!&§());
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop3:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    _loc2_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       if(param1)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   §§push(this.§7`§());
                                                   loop6:
                                                   while(!_loc4_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(_loc3_)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(_loc3_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               while(!_loc4_)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr47:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§7!H§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.§7!H§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§goto(addr68);
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                           §§goto(addr209);
                                                                           continue loop6;
                                                                        }
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                     addr45:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§7!O§.mW);
                                                                        addr191:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§7!O§.mH);
                                                                           addr194:
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr195:
                                                                              while(true)
                                                                              {
                                                                                 §§push(LevelMain.§8N§);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr208);
                                                                                    §§push(LevelMain.§8N§);
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr188:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr210:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           §§goto(addr212);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop0;
                                                            addr129:
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr129);
                                             }
                                             addr212:
                                             loop14:
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         while(_loc3_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         continue loop2;
                                                         addr68:
                                                      }
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break loop14;
                                                         }
                                                         continue loop23;
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop5;
                                                   addr90:
                                                   while(true)
                                                   {
                                                      continue loop15;
                                                   }
                                                }
                                                continue loop23;
                                             }
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr45);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                        }
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr188);
            }
            §§goto(addr210);
         }
         §§goto(addr90);
      }
      
      public function §7`§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc3_)
               {
                  §§push(2);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_ || this)
                     {
                        addr63:
                        §§push(§§pop() * Math.min(10,this.§7!O§.§]N§ - 1));
                        if(_loc2_ || _loc1_)
                        {
                           addr90:
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(Number(§§pop()));
                           if(_loc2_ || _loc2_)
                           {
                              addr108:
                              _loc1_ = §§pop();
                              return _loc1_;
                           }
                        }
                        §§goto(addr108);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr63);
            }
         }
         §§goto(addr108);
      }
      
      public function §2A§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§9f§().GetLinearVelocity().x);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§9f§().GetLinearVelocity().y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc7_ || this)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_ || _loc3_)
            {
               §§push(_loc5_);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr149:
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && this))
                        {
                           if(_loc6_ && _loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr132:
                        _loc3_ = Number(§§pop());
                        loop3:
                        while(!_loc6_)
                        {
                           while(true)
                           {
                              this.§9f§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              if(!(_loc6_ && param1))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr149);
         }
         §§goto(addr136);
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
         if(_loc5_ || param1)
         {
            §§push(_loc4_);
            §§push(_loc4_.x);
            if(_loc5_)
            {
               §§push(param2.x * param1);
               if(!(_loc6_ && param3))
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
                  if(_loc5_)
                  {
                     §§push(§§pop() * param3);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().y = §§pop();
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            this.§9f§().§4Q§(_loc4_);
            if(!_loc6_)
            {
               if(_loc5_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
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
               loop1:
               while(true)
               {
                  §§push(this.§=Y§());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc4_);
                           loop5:
                           while(true)
                           {
                              §§push(360);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(360);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       loop9:
                                       while(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                          loop10:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr253:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr254:
                                                      while(true)
                                                      {
                                                         §§push(Number(0));
                                                         continue loop5;
                                                      }
                                                   }
                                                   loop18:
                                                   while(_loc7_ || _loc3_)
                                                   {
                                                      §§push(param1);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() % §§pop());
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop21:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§push(param1);
                                                                                             if(!(_loc6_ && param2))
                                                                                             {
                                                                                                if(!(_loc7_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§push(0);
                                                                                                if(!(_loc7_ || param1))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr287);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop9;
                                                                                       addr233:
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc7_ || param2))
                                                                                    {
                                                                                       addr287:
                                                                                       var _loc3_:* = Number(§§pop());
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    addr143:
                                                                                    §§push(§§pop() - _loc5_);
                                                                                    if(_loc6_ && _loc3_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(_loc6_ && this)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§goto(addr253);
                                                                                    §§goto(addr254);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§;V§(_loc4_);
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break loop26;
                                                                                                   }
                                                                                                   continue loop26;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc7_ || param1))
                                                                                                      {
                                                                                                         break loop27;
                                                                                                      }
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                addr97:
                                                                                             }
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                    addr179:
                                                                                 }
                                                                                 §§goto(addr209);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§push(param1);
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() - _loc5_);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break loop23;
                                                                                       }
                                                                                    }
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr143);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr82:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       _loc4_ = §§pop();
                                                                                       §§goto(addr97);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                            }
                                                         }
                                                      }
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
                        }
                     }
                  }
               }
               addr268:
            }
            addr273:
            §§push(this.§=Y§());
            if(_loc7_)
            {
               addr277:
               §§push(param1);
               break loop23;
            }
            addr286:
            if(_loc7_ || param1)
            {
               §§push(Math.round(_loc3_ / 22.5) * 22.5);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
            }
            do
            {
               this.§;V§(_loc3_);
            }
            while(!(_loc7_ || param2));
            
            return;
         }
         §§goto(addr268);
      }
      
      public function §1!X§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§1!'§(this.§9f§().GetAngle()));
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(param1);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(360);
                  if(_loc3_ || param1)
                  {
                     addr120:
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr122:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(§%j§(_loc2_));
                              if(_loc3_ || _loc3_)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              loop3:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§9f§().§,&§(_loc2_);
                                    if(_loc3_ || param1)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr120);
            }
            §§goto(addr122);
         }
         §§goto(addr95);
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
            if(_loc14_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc14_ || _loc3_)
            {
               §§push(§§pop() - param2.y);
               if(_loc14_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc15_)
               {
                  §§push(_loc4_);
                  if(!(_loc15_ && this))
                  {
                     §§push(0);
                     if(!_loc15_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc14_ || param2)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc14_)
                           {
                              §§push(§§pop());
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 if(_loc14_ || param1)
                                 {
                                 }
                                 addr117:
                                 if(§§pop())
                                 {
                                    if(_loc14_ || _loc3_)
                                    {
                                       return;
                                    }
                                 }
                                 var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                 §§push(_loc4_);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(§§pop() / _loc5_);
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(!(_loc15_ && this))
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(_loc14_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 if(!(_loc15_ && param2))
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc15_ && param1))
                                    {
                                       §§push(0);
                                       if(!_loc15_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc14_ || param1)
                                             {
                                                addr219:
                                                §§push(_loc8_);
                                                if(_loc14_ || param2)
                                                {
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr248);
                                             }
                                          }
                                          §§goto(addr240);
                                       }
                                       addr228:
                                       §§push(§§pop() + 180);
                                       if(!_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc15_ && this))
                                          {
                                             addr239:
                                             _loc8_ = §§pop();
                                             addr240:
                                             §§push(_loc8_);
                                             if(_loc14_ || this)
                                             {
                                                addr248:
                                                §§push(§§pop() + param1);
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                       }
                                       var _loc9_:* = §§pop();
                                       §§push(_loc9_);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() * Math.PI);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() / 180);
                                             if(!_loc14_)
                                             {
                                             }
                                             §§goto(addr273);
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       addr273:
                                       var _loc10_:* = §§pop();
                                       §§push(Math.sin(_loc10_) * _loc6_);
                                       if(!_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc11_:* = §§pop();
                                       §§push(Math.cos(_loc10_) * _loc6_);
                                       if(!(_loc15_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc12_:* = §§pop();
                                       var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                       if(_loc14_)
                                       {
                                          this.§9f§().§4Q§(_loc13_);
                                       }
                                       return;
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr117);
                           }
                           §§pop();
                           if(!_loc15_)
                           {
                              addr99:
                              §§push(_loc5_);
                              if(_loc14_ || param1)
                              {
                                 addr108:
                                 §§push(§§pop() == 0);
                                 if(!(_loc15_ && param2))
                                 {
                                    §§goto(addr117);
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr117);
               }
               §§goto(addr99);
            }
            §§goto(addr53);
         }
         §§goto(addr37);
      }
   }
}
