package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'N§.Log;
   import §,X§.b2PolygonShape;
   import §1!&§.Sprite;
   import §1%§.b2Body;
   import §1%§.b2BodyDef;
   import §1%§.b2FilterData;
   import §1%§.b2Fixture;
   import §1%§.b2World;
   import §3!j§.SoundEngine;
   import §8!H§.b2Settings;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   import §?A§.ScoreCollector;
   import §^L§.§0!J§;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemMaterial;
   import §^L§.LevelItemShape;
   import §^L§.LevelItemSoundResource;
   import flash.geom.Point;
   
   public class LevelObject
   {
      
      public static const §#1§:uint;
      
      public static const §2!S§:uint;
      
      public static const §4_§:uint;
      
      public static const §+Y§:uint;
      
      public static const §package§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§#1§));
            §§push(1);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() << 1);
            }
            §§pop().§#1§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§2!S§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§2!S§ = §§pop();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  §§push(§§findproperty(§4_§));
                  §§push(1);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§4_§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§+Y§));
                     §§push(1);
                     if(_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§+Y§ = §§pop();
                     while(_loc2_)
                     {
                        §package§ = true;
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      private var §,!H§:String;
      
      private var §<#§:int;
      
      private var §4B§:int;
      
      public var §4!W§:String;
      
      public var §4i§:int;
      
      private var §"T§:§0!J§;
      
      private var §6!$§:LevelObjectManager;
      
      private var mWorld:b2World;
      
      protected var §8@§:String = "";
      
      protected var §6!E§:int = 1;
      
      private var §4!N§:b2Fixture;
      
      private var §5!Y§:b2Body;
      
      private var §#^§:b2Vec2;
      
      public var §19§:Number;
      
      public var §^V§:Number;
      
      private var §#!L§:Number;
      
      private var §2I§:Boolean = false;
      
      private var §0A§:Number;
      
      private var §8!d§:Number;
      
      private var §!u§:Number;
      
      private var §!!5§:Number;
      
      private var §0!6§:Number;
      
      private var §<^§:Number;
      
      public var §,!]§:Number = 1;
      
      private var §#N§:Boolean = false;
      
      public var §,h§:Number = 0;
      
      public var §?!W§:Number = 0;
      
      protected var §&&§:Boolean = false;
      
      public var § get§:LevelObjectRenderer;
      
      private var §1!J§:Sprite;
      
      private var §`!Z§:Number = 0;
      
      private var §[§:Number = 0;
      
      private var §#3§:Number = 0;
      
      private var §[+§:Number = 1.0;
      
      private var §'!T§:Boolean = false;
      
      private var §4t§:Vector.<Vector.<Number>>;
      
      private var §#!a§:int = 10;
      
      private var §4!e§:Boolean = true;
      
      public function LevelObject(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc16_ && this))
         {
            this.§4t§ = new Vector.<Vector.<Number>>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§4!W§ = param6;
                  loop2:
                  while(true)
                  {
                     this.§"T§ = LevelItemManager.§><§(param6);
                     while(true)
                     {
                        this.§6!$§ = param1;
                        continue loop0;
                        addr237:
                        while(!(_loc16_ && param2))
                        {
                           this.§[+§ = param10;
                           loop6:
                           while(true)
                           {
                              this.§'!T§ = param11;
                              loop7:
                              while(true)
                              {
                                 this.§<#§ = param5;
                                 loop8:
                                 while(true)
                                 {
                                    this.§4i§ = this.§"T§.§4i§;
                                    addr217:
                                    loop9:
                                    while(true)
                                    {
                                       this.§4B§ = this.§"T§.§ V§();
                                       while(_loc17_)
                                       {
                                          this.§4t§[0] = new Vector.<Number>();
                                          loop11:
                                          while(!(_loc16_ && param2))
                                          {
                                             if(!_loc16_)
                                             {
                                                this.§4t§[1] = new Vector.<Number>();
                                                loop12:
                                                while(_loc17_)
                                                {
                                                   continue loop1;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc17_ || param2)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         this.§ get§ = new LevelObjectRenderer(this,param2,param4);
                                                         loop14:
                                                         while(!_loc16_)
                                                         {
                                                            §§push(this.§ get§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§-!§(param1.§6f§.animationManager));
                                                               if(_loc17_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     §§push(this.§ get§);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4B§);
                                                                        addr99:
                                                                        addr50:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§]M§(§§pop(),this.§"T§.§=;§(),this.§"T§.§@!#§() / LevelMain.§!5§,this.§"T§.§>!4§() / LevelMain.§!5§);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ get§);
                                                                           if(_loc17_ || param2)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(this.§4B§);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§pop().§9!]§(§§pop() == LevelItemShape.§"c§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§goto(addr99);
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop11;
                                                                                 addr118:
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     addr97:
                                                                  }
                                                                  §§goto(addr118);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr50);
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop2;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           if(_loc16_ && param1)
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr50);
                           }
                           var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                           if(_loc17_)
                           {
                              this.§5!Y§ = this.mWorld.§,!j§(_loc12_);
                              if(_loc17_ || this)
                              {
                                 this.§5!Y§.§^!T§(this);
                                 if(!(_loc16_ && param1))
                                 {
                                    §§push(this.§4B§);
                                    if(!_loc16_)
                                    {
                                       §§push(LevelItemShape.§?m§);
                                       if(!_loc16_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc17_ || this)
                                             {
                                                addr336:
                                                §§push(b2PolygonShape);
                                                §§push(this.§"T§.shape.§^B§);
                                                if(_loc17_)
                                                {
                                                   §§push(param10);
                                                   if(!_loc16_)
                                                   {
                                                      addr348:
                                                      §§push(§§pop() * §§pop());
                                                      §§push(this.§"T§.shape.§+!d§);
                                                      if(_loc17_)
                                                      {
                                                         addr354:
                                                         §§push(§§pop() * param10);
                                                      }
                                                      _loc14_ = §§pop().§4! §(§§pop(),§§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         this.§4!N§ = this.§5!Y§.CreateFixture2(_loc14_,this.§"T§.§%!W§());
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            addr463:
                                                            §§push(this.§4!N§);
                                                            if(_loc17_ || param2)
                                                            {
                                                               §§push(this.§"T§);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(§§pop().§]6§());
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     §§pop().§"X§(§§pop());
                                                                     addr500:
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        addr497:
                                                                        §§push(this.§4!N§);
                                                                        §§push(this.§"T§.§"f§());
                                                                     }
                                                                     var _loc13_:b2FilterData = new b2FilterData();
                                                                     if(_loc17_)
                                                                     {
                                                                        addr651:
                                                                        if(!this.§+!J§())
                                                                        {
                                                                           addr609:
                                                                           §§push(this.§4!W§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc17_ || param1)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr627:
                                                                                    §§pop();
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(this.§4!W§);
                                                                                       if(!(_loc16_ && param2))
                                                                                       {
                                                                                          §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                          if(_loc17_ || param2)
                                                                                          {
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                if(!(_loc17_ || this))
                                                                                                {
                                                                                                   §§goto(addr651);
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr586:
                                                                                                }
                                                                                                addr793:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                }
                                                                                                if(param9 != 0)
                                                                                                {
                                                                                                   addr815:
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         this.§ 4§(param9);
                                                                                                      }
                                                                                                      addr790:
                                                                                                      §§goto(addr793);
                                                                                                      §§push(this.isTexture());
                                                                                                      addr825:
                                                                                                   }
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr771:
                                                                                                      this.§ try§();
                                                                                                      addr775:
                                                                                                      if(!(_loc16_ && param3))
                                                                                                      {
                                                                                                         if(_loc17_ || param1)
                                                                                                         {
                                                                                                            this.§,9§(0,1);
                                                                                                            addr770:
                                                                                                            §§push(this.§ get§);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§pop().§]!&§(this.§"T§.shape);
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     if(_loc16_ && param1)
                                                                                                                     {
                                                                                                                        addr833:
                                                                                                                        this.§1!J§.visible = false;
                                                                                                                        §§goto(addr790);
                                                                                                                        addr837:
                                                                                                                     }
                                                                                                                     return;
                                                                                                                     addr763:
                                                                                                                  }
                                                                                                                  §§goto(addr775);
                                                                                                               }
                                                                                                               §§goto(addr770);
                                                                                                            }
                                                                                                            addr823:
                                                                                                            §§pop().setDamagedFrame();
                                                                                                            §§goto(addr825);
                                                                                                            addr789:
                                                                                                         }
                                                                                                         §§goto(addr793);
                                                                                                      }
                                                                                                      §§goto(addr815);
                                                                                                   }
                                                                                                   §§goto(addr837);
                                                                                                }
                                                                                                §§goto(addr771);
                                                                                             }
                                                                                             §§goto(addr627);
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                _loc13_.§,j§ = §2!S§;
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   if(!(_loc16_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(65535);
                                                                                                      if(_loc17_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() & ~§#1§);
                                                                                                      }
                                                                                                      §§pop().§7f§ = §§pop();
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         addr522:
                                                                                                         this.§4!N§.§,!5§(_loc13_);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            this.§#!L§ = this.§"T§.§9!4§();
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr522);
                                                                                                               }
                                                                                                               §§push(this.§"T§);
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§^V§);
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              this.§19§ = this.§^V§ = this.§"T§.§^V§;
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 addr826:
                                                                                                                                 if(this.§"T§.§4i§ != §0!J§.§5!+§)
                                                                                                                                 {
                                                                                                                                    §§goto(addr823);
                                                                                                                                    §§push(this.§ get§);
                                                                                                                                 }
                                                                                                                                 §§goto(addr833);
                                                                                                                                 addr685:
                                                                                                                              }
                                                                                                                              §§goto(addr793);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           this.§19§ = this.§^V§ = Math.round(this.§2!2§(true) * this.§"T§.§=!V§());
                                                                                                                           if(_loc17_ || param2)
                                                                                                                           {
                                                                                                                              §§push(this.§19§);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          this.§19§ = this.§^V§ = 1;
                                                                                                                                          if(_loc17_ || param3)
                                                                                                                                          {
                                                                                                                                             §§goto(addr826);
                                                                                                                                          }
                                                                                                                                          §§goto(addr763);
                                                                                                                                       }
                                                                                                                                       §§goto(addr790);
                                                                                                                                    }
                                                                                                                                    §§goto(addr826);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr793);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr770);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr793);
                                                                                                               }
                                                                                                               §§goto(addr826);
                                                                                                            }
                                                                                                            §§goto(addr685);
                                                                                                         }
                                                                                                         §§goto(addr833);
                                                                                                      }
                                                                                                      §§goto(addr770);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(65535);
                                                                                                      if(!(_loc16_ && param3))
                                                                                                      {
                                                                                                         §§push(§§pop() & ~§2!S§);
                                                                                                      }
                                                                                                      §§pop().§7f§ = §§pop();
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      addr658:
                                                                                                   }
                                                                                                   §§goto(addr833);
                                                                                                }
                                                                                                §§goto(addr789);
                                                                                             }
                                                                                             §§goto(addr793);
                                                                                          }
                                                                                          §§goto(addr522);
                                                                                       }
                                                                                       §§goto(addr609);
                                                                                    }
                                                                                    §§goto(addr790);
                                                                                 }
                                                                                 §§goto(addr586);
                                                                              }
                                                                              §§goto(addr793);
                                                                           }
                                                                           §§goto(addr627);
                                                                        }
                                                                        if(!_loc16_)
                                                                        {
                                                                           _loc13_.§,j§ = §#1§;
                                                                           §§goto(addr658);
                                                                        }
                                                                        §§goto(addr833);
                                                                     }
                                                                     §§goto(addr770);
                                                                  }
                                                                  §§pop().§%!H§(§§pop());
                                                                  §§goto(addr500);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr497);
                                                      }
                                                      §§goto(addr500);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr463);
                                          }
                                          else
                                          {
                                             §§push(this.§4B§);
                                             if(_loc17_)
                                             {
                                                addr387:
                                                §§push(LevelItemShape.§"c§);
                                                if(_loc17_)
                                                {
                                                   addr392:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc17_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc17_ || param3)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc17_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               addr425:
                                                               §§pop();
                                                               if(_loc17_ || param1)
                                                               {
                                                                  addr438:
                                                                  §§push(this.§4B§ == LevelItemShape.§0!+§);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr442:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc16_ && this)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr463);
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                               this.§4!N§ = this.§5!Y§.CreateFixture2(this.§"T§.shape.§-!C§(param10),this.§"T§.§%!W§());
                                                               §§goto(addr463);
                                                            }
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   §§goto(addr442);
                                                }
                                             }
                                             §§goto(addr438);
                                          }
                                       }
                                       §§goto(addr392);
                                    }
                                    §§goto(addr387);
                                 }
                                 §§goto(addr438);
                              }
                              §§goto(addr336);
                           }
                           §§goto(addr463);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr217);
      }
      
      public static function §1!"§(param1:int, param2:LevelItemSoundResource, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param2 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr29);
               }
            }
            var _loc4_:String = param2.§+D§[param1];
            if(!(_loc5_ && param3))
            {
               §§push(_loc4_);
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
                              if(!_loc5_)
                              {
                                 addr104:
                                 §§push(param2.§%3§);
                                 if(_loc6_ || LevelObject)
                                 {
                                    addr113:
                                    §§push(§§pop());
                                 }
                                 param3 = §§pop();
                              }
                              while(true)
                              {
                                 §§goto(addr58);
                              }
                           }
                           addr58:
                           §§goto(addr54);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr54);
               }
               §§goto(addr113);
            }
            addr54:
            while(true)
            {
               SoundEngine.§4!k§(_loc4_,param3);
               if(_loc6_ || LevelObject)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr29:
      }
      
      public static function §@!S§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(180);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
               }
               §§goto(addr59);
            }
            §§push(§§pop() % §§pop());
         }
         addr59:
         §§push(§§pop() / Math.PI);
         if(_loc2_)
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(_loc2_ || _loc3_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §[!c§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && LevelObject))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc3_ && LevelObject))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!(_loc3_ && LevelObject))
            {
               addr69:
               return Number(§§pop());
            }
         }
         §§goto(addr69);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function get front() : Boolean
      {
         return this.§'!T§;
      }
      
      public function get §-! §() : Number
      {
         return this.§5!Y§.GetPosition().x;
      }
      
      public function get §<s§() : Number
      {
         return this.§5!Y§.GetPosition().y;
      }
      
      public function get §>!9§() : §0!J§
      {
         return this.§"T§;
      }
      
      public function get §-!]§() : Boolean
      {
         return this.§#!L§ >= 0;
      }
      
      protected function get container() : LevelObjectManager
      {
         return this.§6!$§;
      }
      
      public function get §'!M§() : Boolean
      {
         return this.§4!e§;
      }
      
      public function set §'!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!e§ = param1;
         }
      }
      
      public function set §%!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2I§ = param1;
         }
      }
      
      public function set §;!P§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§#!a§ = param1;
         }
      }
      
      public function get §;!P§() : uint
      {
         return this.§#!a§;
      }
      
      public function get §2v§() : Boolean
      {
         return this.§#N§;
      }
      
      public function set §2v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#N§ = param1;
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
         return this.§,!H§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,!H§ = param1;
         }
      }
      
      public function §0!5§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§4!N§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
               }
               §§goto(addr47);
            }
            §§pop().§,!5§(param1);
         }
         addr47:
         if(_loc3_)
         {
            §§push(this.§4!N§);
         }
      }
      
      protected function §"K§(param1:String) : int
      {
         return §8!;§.§"K§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc4_)
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
            _loc3_.§<!D§ = 1;
            while(_loc4_)
            {
               _loc3_.§4x§ = false;
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§goto(addr39);
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(!_loc2_)
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
                        addr124:
                        while(true)
                        {
                           §§pop().§%!O§(this.§8!N§());
                           addr128:
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
                     addr122:
                  }
                  while(true)
                  {
                     this.§ get§.dispose();
                     while(true)
                     {
                        §§push(this.§1!J§);
                        if(_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop4:
                              while(_loc1_ || _loc2_)
                              {
                                 §§push(this.§1!J§);
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          this.§1!J§ = null;
                                          loop8:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc1_)
                                             {
                                                addr71:
                                                while(true)
                                                {
                                                   this.§4!N§ = null;
                                                   while(_loc1_)
                                                   {
                                                      this.§#^§ = null;
                                                      loop7:
                                                      while(_loc1_ || this)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§"T§ = null;
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop7;
                                                            }
                                                            return;
                                                            continue;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   §§goto(addr71);
                                                }
                                                addr46:
                                             }
                                             else
                                             {
                                                §§goto(addr122);
                                             }
                                             §§goto(addr128);
                                          }
                                          addr104:
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              continue;
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr100);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr124);
         }
         §§goto(addr45);
      }
      
      public function § 4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§8!N§());
            §§push(360);
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§=!]§(§§pop());
         }
      }
      
      public function §=W§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§8!N§().GetAngle());
         if(!_loc2_)
         {
            §§push(180);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_)
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
         if(!_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §#!Z§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§8!N§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(param3);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 this.§3!$§();
                              }
                              addr43:
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    addr62:
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr76:
                              while(true)
                              {
                                 continue loop4;
                                 §§goto(addr43);
                              }
                           }
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§4!N§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§8!N§());
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
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§8!N§());
                                             while(true)
                                             {
                                                §§push(§§pop().GetPosition());
                                                addr200:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr201:
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      addr202:
                                                      while(_loc6_)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                addr25:
                                                if(_loc5_ && this)
                                                {
                                                   continue;
                                                }
                                                addr32:
                                                §§push(§§pop().GetPosition());
                                                if(_loc6_ || param1)
                                                {
                                                   if(_loc5_ && param1)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr47:
                                                   §§push(§§pop().y);
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr62:
                                                         §§push(param2);
                                                         if(_loc6_ || param3)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr88:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr205);
                                                                        }
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§goto(addr104);
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     while(_loc6_ || this)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr195:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§8!N§());
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr25);
                                                                           }
                                                                           addr195:
                                                                        }
                                                                        while(_loc6_ || param3)
                                                                        {
                                                                           §§push(this.§8!N§());
                                                                           continue loop0;
                                                                        }
                                                                        continue loop9;
                                                                        §§goto(addr88);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr235);
                                                                        §§goto(addr185);
                                                                     }
                                                                     addr185:
                                                                     addr234:
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc5_ && param3))
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc5_ && param2)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr88);
                                                                                       }
                                                                                       addr104:
                                                                                       return §§pop();
                                                                                    }
                                                                                    addr226:
                                                                                    while(!(_loc5_ && param3))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       §§goto(addr234);
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr88);
                                                                     }
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        §§goto(addr226);
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                                  continue;
                                                                  addr146:
                                                               }
                                                               §§goto(addr88);
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr146);
                                                            §§goto(addr62);
                                                         }
                                                         addr145:
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   while(_loc6_ || param3)
                                                   {
                                                      §§goto(addr145);
                                                      §§push(param1);
                                                      §§goto(addr47);
                                                   }
                                                   continue loop2;
                                                   addr137:
                                                }
                                                while(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr137);
                                                   §§push(§§pop().y);
                                                   §§goto(addr32);
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr207);
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
         §§goto(addr195);
      }
      
      public function §%h§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#^§ = param1;
         }
      }
      
      public function §4!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§#^§)
            {
               loop0:
               while(true)
               {
                  this.§#!Z§(this.§#^§,false);
                  addr78:
                  while(true)
                  {
                     this.§#^§ = null;
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr78);
      }
      
      public function §`,§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(!param1);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr31:
                     §§push(this.§8!N§());
                     if(_loc3_ || _loc2_)
                     {
                        param1 = §§pop().GetLinearVelocity();
                        addr43:
                        §§push(param1.x);
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc3_)
                                 {
                                    addr66:
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr78);
                                       }
                                       §§goto(addr126);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              addr78:
                              §§pop();
                              if(_loc3_)
                              {
                                 addr123:
                                 §§push(param1.y == 0);
                                 if(_loc3_)
                                 {
                                    addr127:
                                    addr126:
                                    if(!§§pop())
                                    {
                                       §§push(this.§8!N§());
                                       if(_loc3_ || this)
                                       {
                                          addr108:
                                          §§pop().§&R§(Math.atan2(param1.x,param1.y));
                                          if(!_loc2_)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr127);
                                 addr81:
                              }
                              addr135:
                              if(_loc3_)
                              {
                                 §§push(this.§8!N§());
                              }
                              return;
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr81);
               }
               §§goto(addr43);
            }
            §§goto(addr66);
         }
         §§goto(addr31);
      }
      
      public function §3!$§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               param1 = this.§8!N§().GetLinearVelocity();
               addr36:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               this.§ 4§(_loc2_);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §`!f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!N§().§&R§(param1);
         }
      }
      
      public function §8!N§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§4!N§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§push(this.§4!N§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop().GetBody();
         }
         addr51:
         return null;
      }
      
      public function §6!b§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1 != -9999)
            {
               while(true)
               {
                  this.§`!Z§ = param1;
                  addr119:
                  addr100:
                  while(true)
                  {
                     this.§[§ = param2;
                     addr112:
                     while(true)
                     {
                     }
                  }
                  if(!(_loc4_ || param2))
                  {
                     continue;
                  }
                  §§push(this.§8!N§());
                  if(_loc4_)
                  {
                     §§push(§§pop().GetPosition());
                     if(!_loc3_)
                     {
                        §§push(this.§[§);
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              addr38:
                              §§push(LevelMain.§!5§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr59:
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    §§pop().y = §§pop();
                                    if(!(_loc3_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr119);
                                       }
                                       return;
                                    }
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr100);
                                    }
                                    §§goto(addr112);
                                    addr93:
                                 }
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    §§goto(addr93);
                                 }
                                 addr92:
                              }
                              while(true)
                              {
                                 §§goto(addr92);
                                 §§goto(addr38);
                              }
                              addr91:
                           }
                           while(true)
                           {
                              §§goto(addr91);
                           }
                           addr78:
                        }
                        §§goto(addr59);
                     }
                     while(true)
                     {
                        §§goto(addr78);
                     }
                     addr76:
                  }
                  while(true)
                  {
                     §§goto(addr76);
                  }
                  addr75:
               }
            }
            while(true)
            {
               §§goto(addr75);
               §§goto(addr112);
            }
         }
         §§goto(addr119);
      }
      
      public function §,9§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         §§push(false);
         if(!(_loc5_ && param2))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || param2)
         {
            §§push(this.§&&§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr512:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr513:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr514:
                           while(true)
                           {
                              this.§&&§ = false;
                              addr507:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                  }
                  addr511:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop7:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§push(true);
                           loop9:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop10:
                              while(_loc6_ || _loc3_)
                              {
                                 _loc3_ = §§pop();
                                 loop58:
                                 while(true)
                                 {
                                    addr459:
                                    while(true)
                                    {
                                       §§push(this.updateFlyingFrameAnimations(param2));
                                       loop12:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(true);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop16:
                                                         while(!(_loc5_ && _loc3_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.updateScreamingFrameAnimations(param2));
                                                               loop18:
                                                               while(_loc6_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.updateBlinkingFrameAnimations(param2));
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§ get§);
                                                                                          addr401:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§#I§();
                                                                                             addr403:
                                                                                             addr449:
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      break loop29;
                                                                                                   }
                                                                                                   addr448:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr399:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§,!]§);
                                                                                       loop31:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > 1);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             if(!(_loc6_ || this))
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr395:
                                                                                                               loop52:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§ get§);
                                                                                                                  addr294:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop().§@!]§));
                                                                                                                     addr296:
                                                                                                                     while(!_loc5_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     continue loop52;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr394:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop39:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§ get§);
                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                  {
                                                                                                                     §§pop().§5!T§(param2);
                                                                                                                     loop40:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§package§);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 this.§#3§ = this.§!u§;
                                                                                                                                 loop41:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   this.§`!Z§ = this.§0A§;
                                                                                                                                                   loop42:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§[§ = this.§8!d§;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc6_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr212:
                                                                                                                                                                     if(!(_loc6_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§5#§(param1);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr225:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr507);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr403);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr210:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§1!J§);
                                                                                                                                                               loop44:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = Math.round(this.§`!Z§);
                                                                                                                                                                  addr138:
                                                                                                                                                                  while(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§1!J§);
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr225);
                                                                                                                                                      }
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   addr438:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr399);
                                                                                                                                             }
                                                                                                                                             §§goto(addr403);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr395);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§ get§);
                                                                                                                                             addr278:
                                                                                                                                             while(!(_loc5_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§pop().§@!]§.blurX = _loc4_;
                                                                                                                                                break loop41;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr346:
                                                                                                                                       }
                                                                                                                                       §§goto(addr294);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    if(_loc5_ && param2)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr121:
                                                                                                                                    if(_loc6_ || param2)
                                                                                                                                    {
                                                                                                                                       §§goto(addr128);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          continue loop39;
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                       §§goto(addr121);
                                                                                                                                    }
                                                                                                                                    addr267:
                                                                                                                                 }
                                                                                                                                 while(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§ get§);
                                                                                                                                    while(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          §§pop().§@!]§.blurY = _loc4_;
                                                                                                                                          §§goto(addr267);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr401);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr278);
                                                                                                                                    §§goto(addr183);
                                                                                                                                 }
                                                                                                                                 addr183:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(4);
                                                                                                                                    §§push(this.§ get§.§@!]§.blurX - 4);
                                                                                                                                    if(!(_loc5_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(param2);
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 20);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc5_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop31;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 continue loop31;
                                                                                                                                 addr300:
                                                                                                                              }
                                                                                                                              §§goto(addr210);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop58;
                                                                                                                     }
                                                                                                                     §§goto(addr296);
                                                                                                                  }
                                                                                                                  §§goto(addr255);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr300);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr449);
                                                                                                   }
                                                                                                   §§goto(addr423);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§goto(addr513);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr422);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                         §§goto(addr514);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr511);
                                                }
                                             }
                                          }
                                          §§goto(addr441);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr512);
                           }
                        }
                     }
                     §§goto(addr459);
                  }
               }
            }
         }
         §§goto(addr502);
      }
      
      public function § try§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§8!N§().GetPosition().x);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§8!N§().GetPosition().y);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.§<^§ = this.§!u§;
            while(true)
            {
               this.§!!5§ = this.§0A§;
               while(_loc3_)
               {
                  this.§0!6§ = this.§8!d§;
                  while(_loc3_)
                  {
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§8!N§().GetAngle());
            if(_loc3_ || this)
            {
               §§push(180);
               if(_loc3_)
               {
                  §§push(§§pop() * (§§pop() / Math.PI));
                  if(!(_loc4_ && this))
                  {
                     addr128:
                     §§push(§§pop() % 360);
                  }
                  §§pop().§!u§ = §§pop();
                  while(_loc3_)
                  {
                     §§push(this);
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / LevelMain.§!5§);
                     }
                     §§pop().§0A§ = §§pop();
                     while(_loc3_ || _loc1_)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(§§pop() / LevelMain.§!5§);
                        }
                        §§pop().§8!d§ = §§pop();
                        if(_loc3_)
                        {
                           return;
                        }
                     }
                  }
                  §§goto(addr138);
               }
            }
            §§goto(addr128);
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
      
      public function §5#§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                     if(_loc3_ || param2)
                     {
                        §§push(Log);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() + param1);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + " overriding to 0");
                           }
                        }
                        §§pop().log(§§pop());
                     }
                     while(true)
                     {
                     }
                     addr1064:
                  }
                  while(true)
                  {
                     §§push(param2);
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§6!$§.§6f§.mLevelEngine.§[!i§);
                                 addr1021:
                                 while(true)
                                 {
                                    §§push(1000);
                                    addr1022:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr1023:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr1024:
                                          while(true)
                                          {
                                             param2 = §§pop();
                                             addr1025:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr1016:
                           }
                           while(true)
                           {
                              §§push(param1);
                              loop13:
                              while(true)
                              {
                                 §§push(-1);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop15:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop16:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          while(true)
                                          {
                                             §§push(this.§0A§);
                                             loop18:
                                             while(true)
                                             {
                                                §§push(this.§!!5§);
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(this);
                                                                           §§push(param1);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.§!!5§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() - this.§0A§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr964:
                                                                                       §§push(§§pop() / param2);
                                                                                    }
                                                                                    §§pop().§,h§ = §§pop();
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§0A§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() + this.§,h§);
                                                                                       }
                                                                                       §§pop().§`!Z§ = §§pop();
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§8!d§);
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§0!6§);
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      loop36:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop37:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               loop39:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     loop40:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           loop42:
                                                                                                                           while(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              loop43:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    loop44:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       addr913:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop105:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§?!W§ = 0;
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§[§ = this.§8!d§;
                                                                                                                                                      loop107:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         loop49:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§!u§);
                                                                                                                                                            loop50:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§<^§);
                                                                                                                                                               loop51:
                                                                                                                                                               while(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  loop52:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     loop53:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        loop54:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           loop55:
                                                                                                                                                                           while(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop22;
                                                                                                                                                                              }
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    while(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          addr795:
                                                                                                                                                                                          while(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                addr799:
                                                                                                                                                                                                while(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr123:
                                                                                                                                                                                    if(_loc4_ && _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr131:
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr351:
                                                                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop105;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(this.§!u§);
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§<^§);
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - this.§!u§);
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr399:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc3_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr397:
                                                                                                                                                                                                                           §§push(§§pop() / param2);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().§#3§ = §§pop() + §§pop();
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        addr400:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr397);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr399);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1025);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1064);
                                                                                                                                                                                                         addr1002:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§,h§ = 0;
                                                                                                                                                                                                         addr990:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§`!Z§ = this.§0A§;
                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr987:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr803:
                                                                                                                                                                                                   this.§#3§ = this.§!u§;
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr807:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr196:
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr536:
                                                                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr543:
                                                                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(this.§!u§);
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                               if(_loc3_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§<^§);
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - 360);
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - this.§!u§);
                                                                                                                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr588:
                                                                                                                                                                                                                           addr594:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr592:
                                                                                                                                                                                                                              §§push(§§pop() / param2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§#3§ = §§pop() + §§pop();
                                                                                                                                                                                                                           addr595:
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr832);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr592);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr588);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr592);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr594);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1016);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr890:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(this.§8!d§);
                                                                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + this.§?!W§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§[§ = §§pop();
                                                                                                                                                                                                            §§goto(addr543);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr890:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr852);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop69:
                                                                                                                                                                                                   while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§<^§);
                                                                                                                                                                                                         loop112:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this.§!u§);
                                                                                                                                                                                                            loop113:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               loop114:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(180);
                                                                                                                                                                                                                  loop115:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                        loop116:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           loop117:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop70:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop107;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(this.§!u§);
                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§<^§);
                                                                                                                                                                                                                                             if(!(_loc4_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - this.§!u§);
                                                                                                                                                                                                                                                if(!(_loc4_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr738:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().§#3§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                   §§goto(addr588);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr738);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr588);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§<^§);
                                                                                                                                                                                                                                    loop71:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§!u§);
                                                                                                                                                                                                                                       loop72:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop113;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                if(_loc3_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop52;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop97:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc4_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§<^§);
                                                                                                                                                                                                                                                         loop99:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§!u§);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     addr498:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr497:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1024);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr748:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§!u§);
                                                                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                     loop65:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        loop66:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc3_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(_loc3_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc4_ && _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop67:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop70;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop74:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc3_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc3_ || param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                       loop75:
                                                                                                                                                                                                                                                                                       for(; !(_loc4_ && _loc3_); if(_loc3_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop74;
                                                                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop97;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop76:
                                                                                                                                                                                                                                                                                          for(; !§§pop(); while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc3_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop76;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop117;
                                                                                                                                                                                                                                                                                          },continue loop117)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§<^§);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc3_ || this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr419);
                                                                                                                                                                                                                                                                                                      §§push(this.§!u§);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1023);
                                                                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr794);
                                                                                                                                                                                                                                                                                                addr75:
                                                                                                                                                                                                                                                                                                if(_loc4_ && this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc3_ || param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop114;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr89:
                                                                                                                                                                                                                                                                                                §§push(180);
                                                                                                                                                                                                                                                                                                if(_loc3_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr116:
                                                                                                                                                                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr123);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(!_loc4_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                               §§goto(addr116);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop80:
                                                                                                                                                                                                                                                                                                            while(_loc3_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                                                                               if(_loc3_ || param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop75;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr469:
                                                                                                                                                                                                                                                                                                               loop81:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                        addr471:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ || this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(this.§!u§);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr595);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr990);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr470:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(!§§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.§<^§);
                                                                                                                                                                                                                                                                                                                        while(!_loc4_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop71;
                                                                                                                                                                                                                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc3_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§<^§);
                                                                                                                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc4_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr68:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr75);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(!_loc4_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(180);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc4_ && param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop115;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr344);
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                §§goto(addr89);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop115;
                                                                                                                                                                                                                                                                                                                                             §§goto(addr68);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                                                                                                                          addr333:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(!_loc4_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop97;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop66;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop65;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr470);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop81;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop76;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       loop85:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc4_ && this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc3_ || param2)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc3_ || this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                      addr434:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         continue loop80;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop116;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr497);
                                                                                                                                                                                                                                                                                                                                                continue loop85;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                                                                                                                                                                             addr419:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc4_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr333);
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                                                                                                                                                                       addr219:
                                                                                                                                                                                                                                                                                                                                       addr318:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop112;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr351);
                                                                                                                                                                                                                                                                                                                     addr349:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop4;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr498);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr344:
                                                                                                                                                                                                                                                                                                            continue loop37;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr349);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            continue loop74;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr636:
                                                                                                                                                                                                                                                                                                         addr984:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr131);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1022);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr336);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1023);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr536);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop67;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 break loop66;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1001:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1002);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr748:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop0;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      break loop97;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop69;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr750);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop113;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr795);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr748);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr807);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr286);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr399);
                                                                                                                                                                                          }
                                                                                                                                                                                          return;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr253);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr274);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop44;
                                                                                                                                                                              }
                                                                                                                                                                              while(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr748);
                                                                                                                                                                                 §§push(this.§<^§);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr803);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop38;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(param1);
                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§0!6§);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§8!d§);
                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr889:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(param2);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§?!W§ = §§pop();
                                                                                                                                                         §§goto(addr890);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr889);
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr889);
                                                                                                                                             }
                                                                                                                                             §§goto(addr890);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr983:
                                                                                                                                 }
                                                                                                                                 §§goto(addr984);
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr913);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr919:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr919);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr964);
                                                                        }
                                                                        §§goto(addr987);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1001);
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
                  }
               }
            }
         }
         §§goto(addr791);
      }
      
      public function get §8!A§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§package§)
            {
            }
         }
         return null;
      }
      
      public function §+!J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§4i§);
            if(!_loc1_)
            {
               §§push(§0!J§.§8!j§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc1_)
                     {
                        §§push(§§pop());
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              addr76:
                              §§pop();
                              §§push(this.§4i§ == §0!J§.§!!-§);
                              if(_loc2_ || _loc1_)
                              {
                                 addr90:
                                 return Boolean(§§pop());
                              }
                           }
                        }
                     }
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §<!#§() : Boolean
      {
         return this.§4i§ == §0!J§.§&!2§;
      }
      
      public function §3s§() : Boolean
      {
         return this.§4i§ == §0!J§.§2!0§;
      }
      
      public function §#j§() : Boolean
      {
         return this.§4i§ == §0!J§.§!!-§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§4i§ == §0!J§.§<!S§;
      }
      
      public function isGround() : Boolean
      {
         return this.§4i§ == §0!J§.§5!+§;
      }
      
      public function §in§() : Boolean
      {
         return this.§4i§ == §0!J§.§ K§;
      }
      
      public function §3u§() : Boolean
      {
         return this.§4i§ == §0!J§.§ !Z§;
      }
      
      public function §=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4!W§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr109:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr110:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc1_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(true);
                                    }
                                 }
                                 else
                                 {
                                    addr20:
                                    §§push(false);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr29:
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr36:
                                          if(_loc2_ || _loc1_)
                                          {
                                             break;
                                          }
                                          addr121:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                             §§goto(addr36);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc1_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop2;
                                             §§goto(addr29);
                                          }
                                          addr65:
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr20);
                           }
                           return §§pop();
                        }
                        §§goto(addr121);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §6!;§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§<!#§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc2_)
               {
                  addr137:
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
                                 §§push(this.§in§());
                                 addr114:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr140:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(!_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr124:
                                          while(true)
                                          {
                                             §§push(this.§3u§());
                                             addr70:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr71:
                                                while(true)
                                                {
                                                   if(_loc2_ && this)
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                }
                                                §§goto(addr141);
                                                addr46:
                                                if(!(_loc2_ && this))
                                                {
                                                   §§goto(addr53);
                                                }
                                             }
                                          }
                                       }
                                       addr123:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          while(_loc1_)
                                          {
                                             §§pop();
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§2v§);
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(!§§pop());
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr43:
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc1_)
                                                         {
                                                            §§goto(addr46);
                                                         }
                                                         §§goto(addr71);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr123);
                                                      }
                                                   }
                                                   §§goto(addr43);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr114);
                                       }
                                       break;
                                    }
                                    addr53:
                                    return §§pop();
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr137);
         }
         §§goto(addr141);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §--§() : Number
      {
         return Number(Math.sqrt(this.§8!N§().GetLinearVelocity().x * this.§8!N§().GetLinearVelocity().x + this.§8!N§().GetLinearVelocity().y * this.§8!N§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!_loc10_)
         {
            §§push(this.§3s§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§6!$§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§&5§());
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§#!L§);
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
                                          if(_loc9_ || param2)
                                          {
                                             §§push(§§pop());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop63:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop64:
                                                         while(true)
                                                         {
                                                            §§push(param6);
                                                            loop65:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               while(!§§pop())
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop14:
                                                                     while(!(_loc10_ && param3))
                                                                     {
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           if(_loc10_ && param2)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(this.§#!L§);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 addr723:
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 addr733:
                                                                                 §§push(param1);
                                                                                 §§push(this.§#!L§ / 2);
                                                                                 loop73:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8!9§(LevelItemSoundResource.§'!]§);
                                                                                          addr742:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr736:
                                                                                    }
                                                                                    addr679:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§+!J§());
                                                                                       addr682:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ && this)
                                                                                          {
                                                                                             continue loop63;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr691:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr692:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr695:
                                                                                                      §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§19§);
                                                                                                         addr648:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§^V§);
                                                                                                            addr650:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ || param3))
                                                                                                               {
                                                                                                                  continue loop73;
                                                                                                               }
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr695);
                                                                                                      }
                                                                                                      addr696:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr660:
                                                                                                      §§goto(addr634);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       §§push(this.§#!L§);
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§goto(addr733);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr619:
                                                                                    loop17:
                                                                                    while(_loc9_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          loop19:
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(_loc9_ || param3)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop25:
                                                                                                               while(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(this.§6!;§());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr552:
                                                                                                                  }
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop27:
                                                                                                                        while(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(int(Math.min(this.§19§,int(param1))));
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              loop29:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(LevelMain.§<a§.getValue());
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    continue loop28;
                                                                                                                                 }
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    loop32:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(this.§6!$§);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().§6f§);
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             §§push(ScoreCollector.§"+§);
                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(this.§19§ > param1);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc9_)
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
                                                                                                                                                            §§pop();
                                                                                                                                                            addr479:
                                                                                                                                                            §§push(param3);
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               addr482:
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr482);
                                                                                                                                                      }
                                                                                                                                                      §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§8!N§().GetPosition().x,this.§8!N§().GetPosition().y,§8!;§.§7!i§(this.§4!W§));
                                                                                                                                                      loop33:
                                                                                                                                                      for(; _loc9_ || param3; while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         if(_loc10_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue loop64;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr56);
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param5);
                                                                                                                                                            if(!(_loc10_ && param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               loop59:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§2I§);
                                                                                                                                                                  while(_loc9_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     while(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              addr359:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§19§);
                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - param1);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§19§ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 loop54:
                                                                                                                                                                                 while(_loc9_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§19§ = 0;
                                                                                                                                                                                    loop55:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(!(_loc10_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§19§ = 1;
                                                                                                                                                                                                loop48:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§19§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr169:
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            if(_loc9_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() >= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§8!9§(LevelItemSoundResource.§[!e§);
                                                                                                                                                                                                                  loop51:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc9_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop33;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc10_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop54;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.addDamageParticles(this.§6!$§.§6f§.particles,param1);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop1;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop59;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop59;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                                                                     §§goto(addr682);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr866:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr755:
                                                                                                                                                                                                            addr276:
                                                                                                                                                                                                            while(_loc9_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr284);
                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                               §§goto(addr169);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr808:
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                     break loop17;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop25;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc10_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                     break loop14;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop27;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop19;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr661);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§19§);
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr30:
                                                                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr746);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr733);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                               §§goto(addr30);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr634:
                                                                                                                                                                                                            loop71:
                                                                                                                                                                                                            while(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                     §§push(this.§^V§);
                                                                                                                                                                                                                     if(!(_loc10_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().§19§ = §§pop();
                                                                                                                                                                                                                     addr676:
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop71;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr766:
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop4;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               return this.§19§;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            return this.§19§;
                                                                                                                                                                                                            addr527:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr859:
                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             LevelObject.§1!"§(LevelItemSoundResource.§9!%§,this.§"T§.§3!,§,"ChannelDestroyed");
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr742);
                                                                                                                                                                                          §§goto(addr679);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr250);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§19§);
                                                                                                                                                                              continue loop18;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop59;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop65;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr482);
                                                                                                                                             }
                                                                                                                                             §§goto(addr479);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    §§goto(addr676);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        this.§8!9§(LevelItemSoundResource.§9!%§);
                                                                                                                        §§goto(addr746);
                                                                                                                        addr822:
                                                                                                                     }
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                               }
                                                                                                               this.§8!9§(LevelItemSoundResource.§[!e§);
                                                                                                               §§goto(addr781);
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§goto(addr552);
                                                                                                         addr430:
                                                                                                         if(!(_loc9_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr692);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr691);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_ && param2)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc9_ || param3)
                                                                                                   {
                                                                                                      §§goto(addr430);
                                                                                                   }
                                                                                                   §§goto(addr442);
                                                                                                   §§goto(addr312);
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             this.§8!9§(LevelItemSoundResource.§'!]§);
                                                                                             §§goto(addr766);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr822);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr755);
                                                                                    §§push(3);
                                                                                 }
                                                                                 §§goto(addr650);
                                                                              }
                                                                              §§goto(addr746);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr800:
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§push(30);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr866);
                                                                           }
                                                                        }
                                                                        §§goto(addr808);
                                                                     }
                                                                     §§goto(addr808);
                                                                  }
                                                               }
                                                               §§goto(addr800);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr849:
                                                   }
                                                   §§goto(addr797);
                                                }
                                             }
                                          }
                                          §§goto(addr849);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr859);
                        }
                     }
                  }
               }
               break;
               if(_loc10_ && param1)
               {
                  continue;
               }
               §§goto(addr303);
               §§push(Boolean(§§pop()));
            }
            §§goto(addr866);
            §§push(this.§19§);
         }
         §§goto(addr695);
      }
      
      public function §8!9§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            LevelObject.§1!"§(param1,this.§"T§.§3!,§);
         }
      }
      
      public function § do§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§"T§.material.§]!_§(param1));
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() * this.§,!]§;
         }
      }
      
      public function §^_§(param1:String) : Number
      {
         return this.§"T§.material.§,!A§(param1);
      }
      
      public function §4Y§() : String
      {
         return this.§"T§.material.mName;
      }
      
      public function §9F§() : Number
      {
         return this.§"T§.§=!V§();
      }
      
      public function §5!A§() : int
      {
         return this.§"T§.final();
      }
      
      public function §>!M§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(30);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§8!N§().IsAwake());
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
                                 §§push(this.§+!J§());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
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
                                                while(_loc2_ || _loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(this.§19§ == this.§^V§);
                                                      loop12:
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            loop29:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           addr108:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || _loc1_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(Math.abs(this.§8!N§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(_loc3_ && _loc3_)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr56:
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr63);
                                                                                                   }
                                                                                                   addr164:
                                                                                                   loop19:
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr168:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr169:
                                                                                                            loop22:
                                                                                                            while(!_loc3_)
                                                                                                            {
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  while(!(_loc3_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     break loop26;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     §§goto(addr181);
                                                                                                                  }
                                                                                                                  addr181:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  break loop19;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                      §§goto(addr56);
                                                                                                   }
                                                                                                   while(!_loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§goto(addr181);
                                                                                 }
                                                                                 while(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                                 addr189:
                                                                              }
                                                                              §§goto(addr63);
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                        §§goto(addr169);
                                                                     }
                                                                     §§goto(addr108);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr212);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr63:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr196);
      }
      
      public function §[q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§8!N§().IsAwake());
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(true);
                        if(_loc2_ || _loc1_)
                        {
                           §§goto(addr68);
                        }
                        else
                        {
                           addr73:
                           return !§§pop();
                        }
                     }
                     else
                     {
                        addr69:
                        §§push(this.isMoving());
                        if(!_loc1_)
                        {
                           §§goto(addr73);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr69);
               }
               addr68:
               return §§pop();
            }
            §§goto(addr73);
         }
         §§goto(addr69);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ t§();
         }
         §§push(5);
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(Math.abs(this.§3I§(this.§4t§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc2_)
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
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(Math.abs(this.§3I§(this.§4t§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                                 if(!_loc3_)
                                 {
                                    addr127:
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc3_ && this)
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(false);
                                                         break;
                                                      }
                                                      addr158:
                                                      while(true)
                                                      {
                                                         §§push(Math.abs(this.§3I§(this.§4t§[2])) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§pop();
                                                         §§goto(addr161);
                                                      }
                                                      addr161:
                                                      §§goto(addr127);
                                                   }
                                                   else
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!_loc2_)
                                                   {
                                                      addr38:
                                                      break loop8;
                                                   }
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop4;
                                                }
                                                continue loop4;
                                             }
                                             addr91:
                                          }
                                       }
                                       return §§pop();
                                    }
                                    addr128:
                                 }
                                 §§goto(addr158);
                              }
                           }
                           addr183:
                        }
                        §§goto(addr128);
                     }
                  }
               }
            }
            §§goto(addr183);
         }
         §§goto(addr108);
      }
      
      private function §3I§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc2_)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_)
                              {
                                 §§push(§§pop() / param1.length);
                                 break;
                              }
                              addr92:
                              §§push(Number(§§pop() + param1[_loc3_]));
                           }
                           _loc2_ = §§pop();
                           addr83:
                           §§push(_loc3_ + 1);
                           if(!_loc5_)
                           {
                              addr87:
                              _loc3_ = int(§§pop());
                              continue;
                           }
                           §§goto(addr87);
                           addr98:
                        }
                        break;
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr92);
               }
               §§goto(addr83);
            }
            §§goto(addr87);
         }
         return §§pop();
      }
      
      private function § t§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4t§[0].push(this.§8!N§().GetLinearVelocity().x);
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  this.§4t§[1].push(this.§8!N§().GetLinearVelocity().y);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§4t§[2].push(this.§8!N§().GetAngularVelocity());
            if(!(_loc2_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr39);
            }
            §§goto(addr50);
         }
         var _loc1_:* = uint(0);
         while(true)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(!(_loc2_ && this))
               {
                  if(§§pop() >= 3)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           addr136:
                           while(true)
                           {
                              this.§4t§[_loc1_].shift();
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr116:
                  }
                  else if(this.§4t§[_loc1_].length > this.§#!a§)
                  {
                     §§goto(addr136);
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                  }
               }
               while(true)
               {
                  §§push(uint(§§pop() + 1));
               }
            }
            while(true)
            {
               _loc1_ = §§pop();
               §§goto(addr116);
            }
         }
      }
      
      public function §?D§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!]§ = param1;
            do
            {
               if(this.§,!]§ > 1)
               {
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(this.§ get§);
               }
               else
               {
                  §§push(this.§ get§);
                  if(_loc2_)
                  {
                     §§pop().§@!]§ = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr19);
                     }
                     continue;
                  }
               }
               §§pop().§8!Q§();
            }
            while(_loc3_ && _loc2_);
            
         }
         addr19:
      }
      
      public function §2!2§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc3_)
         {
            §§push(this.§"T§.§>!h§());
            loop0:
            while(true)
            {
               if(§§pop() == LevelItemMaterial.§>Z§)
               {
                  loop21:
                  while(true)
                  {
                     §§push(this.§ get§.mW);
                     loop20:
                     while(true)
                     {
                        §§push(this.§ get§.mH);
                        if(_loc4_ || _loc2_)
                        {
                           addr217:
                           §§push(§§pop() * §§pop());
                           while(true)
                           {
                              §§push(LevelMain.§!5§);
                              addr221:
                              while(true)
                              {
                                 §§push(LevelMain.§!5§);
                                 addr224:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              §§goto(addr217);
                           }
                           addr218:
                        }
                        loop13:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop14:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop10:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop19:
                                 while(true)
                                 {
                                    addr23:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc4_ || this))
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop14;
                                    }
                                    loop17:
                                    while(true)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                break loop17;
                                             }
                                             addr175:
                                          }
                                          break;
                                       }
                                       addr139:
                                       while(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§0P§());
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr37:
                                                            addr174:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(this.§[+§);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(this.§[+§);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr224);
                                                                     }
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                               }
                                                               continue loop17;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                         }
                                                      }
                                                      addr161:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr221);
                                          }
                                          continue loop17;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop20;
                                       }
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop19;
                                          }
                                          if(param1)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr139);
                                                §§push(_loc2_);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr37);
                                          addr123:
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop21;
                                          }
                                          §§goto(addr23);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr204:
               }
               else
               {
                  §§push(this.§8!N§().GetMass());
               }
               while(true)
               {
                  §§goto(addr174);
                  §§goto(addr139);
               }
            }
         }
         §§goto(addr204);
      }
      
      public function §0P§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  §§push(2);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() * Math.min(10,this.§ get§.§<!8§ - 1));
                        if(!_loc2_)
                        {
                           addr76:
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr86);
                        }
                        §§goto(addr89);
                     }
                  }
               }
               §§goto(addr76);
            }
            addr86:
            §§push(Number(§§pop()));
            if(_loc3_)
            {
               addr89:
               _loc1_ = §§pop();
               return _loc1_;
            }
         }
         §§goto(addr89);
      }
      
      public function §-,§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§8!N§().GetLinearVelocity().x);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§8!N§().GetLinearVelocity().y);
         if(_loc7_)
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
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(_loc5_);
               addr133:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           addr126:
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              break;
                           }
                           _loc3_ = §§pop();
                           do
                           {
                              this.§8!N§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                           }
                           while(!_loc7_);
                           
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                        }
                     }
                  }
               }
            }
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
      
      public function §3!"§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§8!N§().GetPosition();
         if(_loc5_ || this)
         {
            §§push(_loc4_);
            §§push(_loc4_.x);
            if(_loc5_)
            {
               §§push(param2.x * param1);
               if(_loc5_)
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
               if(_loc5_ || this)
               {
                  §§push(param2.y * param1);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * param3);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().y = §§pop();
               do
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(this.§8!N§().§5u§(_loc4_), !_loc5_);
               
            }
         }
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
                  §§push(this.§=W§());
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
                           if(!_loc7_)
                           {
                              §§push(360);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr265:
                                 while(true)
                                 {
                                    §§push(360);
                                    addr266:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       addr267:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                              addr264:
                           }
                           loop8:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr248:
                                    while(_loc6_)
                                    {
                                       _loc4_ = §§pop();
                                       continue loop0;
                                    }
                                    addr220:
                                    continue loop8;
                                    loop13:
                                    while(_loc6_ || this)
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          _loc5_ = §§pop();
                                          loop14:
                                          for(; _loc6_; while(!(_loc7_ && param1))
                                          {
                                             while(true)
                                             {
                                                §§goto(addr106);
                                             }
                                             §§goto(addr37);
                                          })
                                          {
                                             §§push(param1);
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(0);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           loop21:
                                                                           for(; §§pop() >= §§pop(); if(!(_loc6_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           },§§push(§§pop() - _loc5_),if(_loc6_ || this)
                                                                           {
                                                                              §§goto(addr83);
                                                                           },§§goto(addr282))
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§push(param1);
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr83:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                addr98:
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§ 4§(_loc4_);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                      {
                                                                                                         addr37:
                                                                                                         break loop21;
                                                                                                      }
                                                                                                      if(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(this.§=W§());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr281:
                                                                                                               §§push(param1);
                                                                                                            }
                                                                                                            var _loc3_:* = §§pop();
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr291:
                                                                                                            addr277:
                                                                                                         }
                                                                                                         continue;
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            do
                                                                                                            {
                                                                                                               this.§ 4§(_loc3_);
                                                                                                            }
                                                                                                            while(!(_loc6_ || param1));
                                                                                                            
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                addr188:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   addr189:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(_loc7_ && param1)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop() % §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(!(_loc7_ && param2))
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§goto(addr265);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr291);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                   §§goto(addr98);
                                                                                                }
                                                                                                addr282:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   §§goto(addr291);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             addr143:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_ && _loc3_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(!(_loc6_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr46);
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr143);
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                          addr140:
                                                                                       }
                                                                                    }
                                                                                    addr137:
                                                                                 }
                                                                                 §§goto(addr281);
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr137);
                                                                                       }
                                                                                       addr136:
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 addr133:
                                                                              }
                                                                              §§goto(addr140);
                                                                           }
                                                                        }
                                                                        §§goto(addr136);
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                            continue loop13;
                                                            addr106:
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr266);
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr277);
         }
         §§goto(addr216);
      }
      
      public function §3'§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§@!S§(this.§8!N§().GetAngle()));
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc3_ && this))
               {
                  §§push(360);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_ || _loc2_)
                     {
                        addr135:
                        §§push(§§pop() / 1000);
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
                           addr139:
                           while(true)
                           {
                              §§push(§[!c§(_loc2_));
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              addr81:
                              if(_loc4_ || param1)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr135);
            }
         }
         §§goto(addr98);
      }
      
      public function §^!H§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && param1))
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§8!N§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc14_ || _loc3_)
         {
            §§push(§§pop() - param2.x);
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc14_ || param1)
         {
            §§push(§§pop() - param2.y);
            if(_loc14_)
            {
               addr63:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc14_ || _loc3_)
            {
               §§push(_loc4_);
               if(_loc14_ || param2)
               {
                  §§push(0);
                  if(!(_loc15_ && this))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc15_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc15_ && param1))
                        {
                           §§push(§§pop());
                           if(!_loc15_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(_loc14_)
                              {
                                 addr106:
                                 §§pop();
                                 if(!_loc15_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc15_)
                                    {
                                       addr113:
                                       §§push(§§pop() == 0);
                                       if(_loc14_ || param2)
                                       {
                                          addr122:
                                          if(§§pop())
                                          {
                                             if(_loc14_ || param1)
                                             {
                                                §§goto(addr130);
                                             }
                                             else
                                             {
                                                addr131:
                                                §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                             }
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr122);
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(_loc4_);
                                    if(_loc14_ || this)
                                    {
                                       §§push(§§pop() / _loc5_);
                                       if(_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(Math.atan(_loc7_) * 180);
                                    if(_loc14_ || this)
                                    {
                                       §§push(§§pop() / Math.PI);
                                       if(!(_loc15_ && param1))
                                       {
                                          addr191:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc15_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc14_ || _loc3_)
                                          {
                                             §§push(0);
                                             if(_loc14_ || this)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      §§goto(addr219);
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr248);
                                       }
                                       addr219:
                                       §§push(_loc8_);
                                       if(!_loc15_)
                                       {
                                          addr223:
                                          §§push(§§pop() + 180);
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc15_ && param2)
                                             {
                                             }
                                             §§goto(addr248);
                                          }
                                          _loc8_ = §§pop();
                                          addr240:
                                          §§push(_loc8_);
                                          if(!(_loc15_ && this))
                                          {
                                             addr248:
                                             §§push(§§pop() + param1);
                                             if(_loc14_ || _loc3_)
                                             {
                                             }
                                             §§goto(addr258);
                                          }
                                       }
                                       addr258:
                                       var _loc9_:Number = §§pop();
                                       §§push(_loc9_);
                                       if(_loc14_ || param1)
                                       {
                                          §§push(§§pop() * Math.PI);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() / 180);
                                             if(_loc15_)
                                             {
                                             }
                                             §§goto(addr278);
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       addr278:
                                       var _loc10_:* = §§pop();
                                       §§push(Math.sin(_loc10_) * _loc6_);
                                       if(_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc11_:* = §§pop();
                                       §§push(Math.cos(_loc10_) * _loc6_);
                                       if(_loc14_ || param2)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc12_:* = §§pop();
                                       var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                       if(_loc14_)
                                       {
                                          this.§8!N§().§5u§(_loc13_);
                                       }
                                       return;
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr131);
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr113);
            }
            addr130:
            return;
         }
         §§goto(addr63);
      }
   }
}
