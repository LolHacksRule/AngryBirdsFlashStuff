package §3Y§
{
   import §#!X§.LevelModel;
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'N§.Log;
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §5!_§.b2PrismaticJoint;
   import §5!_§.b2WeldJoint;
   import §6Z§.§&D§;
   import §6Z§.§@P§;
   import §6Z§.§]!Z§;
   import §6Z§.§^!g§;
   import §8!?§.§?!B§;
   import §?!&§.b2Vec2;
   import §?A§.§'K§;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   import §?A§.ScoreCollector;
   import §[a§.LevelThemeBackgroundManager;
   import §^L§.§0!J§;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemMaterial;
   import §^L§.LevelItemShape;
   import §^L§.LevelItemSoundResource;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelObjectManager
   {
       
      
      protected var §!2§:Vector.<LevelObject>;
      
      protected var §#!+§:int;
      
      public var §6f§:LevelMain;
      
      public var §+!+§:Vector.<§^!6§>;
      
      protected var §%!2§:Sprite;
      
      protected var §?U§:Sprite;
      
      private var §,!d§:Sprite;
      
      private var §-R§:Sprite;
      
      private var §?1§:Sprite;
      
      protected var §3!i§:Vector.<Texture>;
      
      protected var §&d§:Vector.<§@P§>;
      
      protected var §17§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §3!`§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §%!;§:Boolean = false;
      
      protected var §;!0§:Number;
      
      protected var §^O§:int;
      
      protected var §^!'§:Vector.<§]!Z§>;
      
      protected var §>!6§:int = 0;
      
      private var §,!&§:int = 0;
      
      private var §=!O§:int = 0;
      
      private var §1p§:int;
      
      private var §6!P§:Boolean = true;
      
      private var §<"§:Boolean = true;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§@P§ = null;
         var _loc6_:§^!g§ = null;
         var _loc7_:LevelObject = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:LevelObject = null;
         var _loc11_:LevelObject = null;
         if(_loc15_)
         {
            this.§!2§ = new Vector.<LevelObject>();
            loop0:
            while(true)
            {
               this.§+!+§ = new Vector.<§^!6§>();
               while(true)
               {
                  this.§3!i§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§;!0§ = this.§5a§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§^!'§ = new Vector.<§]!Z§>();
                        loop4:
                        while(!(_loc14_ && param1))
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§6f§ = param1;
                              addr313:
                              loop6:
                              while(true)
                              {
                                 this.§#!+§ = 0;
                                 loop7:
                                 while(true)
                                 {
                                    this.§?U§ = param3;
                                    while(_loc15_)
                                    {
                                       §§push(this.§?U§);
                                       while(true)
                                       {
                                          §§pop().§9@§ = false;
                                          addr294:
                                          while(!_loc14_)
                                          {
                                             this.§<"§ = true;
                                             while(_loc15_)
                                             {
                                                this.§6!P§ = true;
                                                continue loop2;
                                             }
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       addr54:
                                       if(_loc14_ && param1)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(LevelThemeBackgroundManager.§"!f§(param2.theme).§,@§);
                                             §§push(this.§6f§.§7!%§.§6!3§);
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(this.§6f§);
                                                if(_loc15_ || param2)
                                                {
                                                   §§push(§§pop().§7!%§);
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§push(§§pop().§%Q§);
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         addr120:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc14_ && param2))
                                                         {
                                                            addr115:
                                                            §§push(§§pop() / 2);
                                                         }
                                                         §§push(this.§6f§.§7!%§.§7!5§);
                                                         if(!_loc14_)
                                                         {
                                                            addr123:
                                                            §§push(§§pop() + §'K§.§^K§);
                                                         }
                                                         §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                         while(true)
                                                         {
                                                            if(!(_loc14_ && param3))
                                                            {
                                                               if(_loc14_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            while(_loc15_ || param1)
                                                            {
                                                               this.§?1§ = new Sprite();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?U§);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop().addChild(this.§%!2§);
                                                                     loop18:
                                                                     while(!_loc14_)
                                                                     {
                                                                        §§push(this.§?U§);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§pop().addChild(this.§,!d§);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 break loop19;
                                                                              }
                                                                              §§push(this.§?U§);
                                                                              while(!_loc14_)
                                                                              {
                                                                                 §§pop().addChild(this.§-R§);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue loop20;
                                                                                    addr162:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr292);
                                                                                 §§push(this.§?U§);
                                                                                 if(!(_loc15_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§pop().addChild(this.§?1§);
                                                                                    §§goto(addr162);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                               }
                                                            }
                                                            while(_loc15_)
                                                            {
                                                               this.§-R§ = new Sprite();
                                                               §§goto(addr248);
                                                            }
                                                            addr248:
                                                            continue loop2;
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr115);
                                             §§goto(addr54);
                                          }
                                          continue;
                                          addr63:
                                       }
                                       §§push(0);
                                       if(_loc15_ || param1)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var _loc4_:* = §§pop();
                                       if(_loc15_ || param2)
                                       {
                                          §§push(0);
                                          if(_loc15_ || param2)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       addr464:
                                       §§push(_loc4_);
                                       if(!_loc14_)
                                       {
                                          §§push(param2.§;!V§);
                                          if(_loc15_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                _loc6_ = param2.§[O§(_loc4_);
                                                _loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
                                                if(!_loc14_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc15_ || param2)
                                                      {
                                                         _loc7_.uniqueID = _loc6_.uniqueID;
                                                         if(!(_loc14_ && param3))
                                                         {
                                                            addr456:
                                                            §§push(_loc4_);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                               if(_loc15_)
                                                               {
                                                                  addr462:
                                                                  §§push(int(§§pop()));
                                                               }
                                                               _loc4_ = §§pop();
                                                               §§goto(addr464);
                                                            }
                                                            §§goto(addr462);
                                                         }
                                                      }
                                                      §§goto(addr464);
                                                   }
                                                }
                                                §§goto(addr456);
                                             }
                                             if(_loc15_ || this)
                                             {
                                                this.§?&§();
                                                if(!(_loc14_ && this))
                                                {
                                                   this.§>!E§(true);
                                                   this.§&d§ = new Vector.<§@P§>();
                                                   addr558:
                                                   if(_loc15_)
                                                   {
                                                      addr538:
                                                      _loc4_ = int(0);
                                                      if(!(_loc14_ && this))
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            addr521:
                                                            §§push(_loc4_);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               addr576:
                                                               if(§§pop() < param2.§?!Z§)
                                                               {
                                                                  this.§&d§.push(§@P§.§98§(param2.§&B§(_loc4_)));
                                                                  addr534:
                                                                  §§push(_loc4_);
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc15_)
                                                                           {
                                                                              addr507:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    if(_loc15_ || param3)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr521);
                                                                                    }
                                                                                    §§goto(addr534);
                                                                                 }
                                                                                 §§goto(addr580);
                                                                              }
                                                                              §§goto(addr538);
                                                                           }
                                                                           addr580:
                                                                           var _loc12_:int = 0;
                                                                           §§goto(addr579);
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr538);
                                                                  }
                                                                  §§goto(addr507);
                                                               }
                                                               if(_loc15_)
                                                               {
                                                                  addr579:
                                                                  if(!_loc14_)
                                                                  {
                                                                     var _loc13_:* = this.§&d§;
                                                                     addr808:
                                                                     for each(_loc5_ in _loc13_)
                                                                     {
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           §§push(int(_loc5_.index1 + this.§1p§));
                                                                           if(!(_loc14_ && this))
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              addr644:
                                                                              addr676:
                                                                              §§push(int(_loc5_.index2 + this.§1p§));
                                                                              if(_loc15_ || param2)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() < this.§!2§.length);
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr620:
                                                                                             §§push(§§pop());
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc15_ || param2)
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr644);
                                                                                                         }
                                                                                                         addr678:
                                                                                                         §§push(_loc9_ < this.§!2§.length);
                                                                                                         if(_loc15_ || param1)
                                                                                                         {
                                                                                                            addr690:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr691:
                                                                                                               _loc10_ = this.§!2§[_loc8_];
                                                                                                               _loc11_ = this.§!2§[_loc9_];
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(Boolean(_loc10_));
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr806:
                                                                                                                        §§pop();
                                                                                                                        §§push(Boolean(_loc11_));
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr806);
                                                                                                                        addr807:
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr767:
                                                                                                                        if(_loc5_.type != §&D§.§-0§)
                                                                                                                        {
                                                                                                                           _loc5_.§^!E§ = this.§6f§.mLevelEngine.mWorld.§`H§(_loc5_.§2b§(_loc10_,_loc11_));
                                                                                                                           addr794:
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              addr706:
                                                                                                                              §§goto(addr808);
                                                                                                                           }
                                                                                                                           §§goto(addr807);
                                                                                                                           addr773:
                                                                                                                        }
                                                                                                                        this.§^!'§.push(new §]!Z§(_loc8_,_loc9_,_loc5_.§1_§));
                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc15_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc15_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr706);
                                                                                                                              }
                                                                                                                              §§goto(addr767);
                                                                                                                           }
                                                                                                                           §§goto(addr773);
                                                                                                                        }
                                                                                                                        §§goto(addr794);
                                                                                                                     }
                                                                                                                     throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr806);
                                                                                                            }
                                                                                                            §§goto(addr808);
                                                                                                         }
                                                                                                         §§goto(addr690);
                                                                                                      }
                                                                                                      §§goto(addr676);
                                                                                                   }
                                                                                                   §§goto(addr691);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr690);
                                                                                       }
                                                                                       §§goto(addr620);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr691);
                                                                              }
                                                                           }
                                                                           §§goto(addr678);
                                                                        }
                                                                        §§goto(addr691);
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr580);
                                                         }
                                                         §§goto(addr558);
                                                      }
                                                      §§goto(addr580);
                                                   }
                                                   addr565:
                                                   §§goto(addr565);
                                                }
                                             }
                                             §§goto(addr580);
                                          }
                                          §§goto(addr576);
                                       }
                                       §§goto(addr580);
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc15_ || this))
                  {
                     continue;
                  }
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr313);
      }
      
      protected function get §5a§() : Class
      {
         return §5a§;
      }
      
      public function get §!!<§() : Sprite
      {
         return this.§?1§;
      }
      
      public function get §>r§() : Sprite
      {
         return this.§?U§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         do
         {
            if(this.§!2§.length > 0)
            {
               continue;
            }
            while(true)
            {
               this.§!2§ = null;
               loop2:
               while(true)
               {
                  this.§^!'§ = null;
                  loop3:
                  while(true)
                  {
                     §§push(this.§?U§);
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        if(!(_loc3_ && this))
                        {
                           addr103:
                           this.§?U§.dispose();
                        }
                        while(!_loc3_)
                        {
                           this.§?U§ = null;
                           while(!_loc3_)
                           {
                              this.§%!2§ = null;
                              if(!(_loc2_ || this))
                              {
                                 break loop0;
                              }
                              this.§?1§ = null;
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     §§goto(addr103);
                  }
                  addr167:
                  if(this.§3!i§.length > 0)
                  {
                     _loc1_ = this.§3!i§.pop();
                     if(!(_loc3_ && _loc1_))
                     {
                        this.§6f§.textureManager.unregisterBitmapDataTexture(_loc1_);
                     }
                     §§goto(addr167);
                  }
                  break loop0;
               }
            }
         }
         while(this.§3P§(0), _loc2_ || _loc1_);
         
      }
      
      private function §>!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!2§.visible = param1;
         }
      }
      
      private function §?&§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§&p§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.§!2§)
         {
            if(_loc17_)
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc17_ || _loc1_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§?U§);
            if(_loc17_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(_loc17_)
         {
            §§push(Boolean(_loc1_));
            loop1:
            while(§§pop())
            {
               loop2:
               while(true)
               {
                  §§push(1);
                  loop3:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop4:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              loop7:
                              while(!_loc16_)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc16_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr249:
                                          while(true)
                                          {
                                             if(!_loc17_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(_loc1_.height > 2048);
                                             if(_loc17_)
                                             {
                                                continue loop8;
                                             }
                                             addr205:
                                             if(_loc16_)
                                             {
                                                continue loop9;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop12:
                                          for(; _loc17_; if(_loc16_ && _loc1_)
                                          {
                                             continue;
                                          },if(!_loc16_)
                                          {
                                             §§push(int(_loc1_.top));
                                             if(_loc17_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr148);
                                          },§§goto(addr249))
                                          {
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                §§push(int(_loc1_.width));
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   loop14:
                                                   while(!_loc16_)
                                                   {
                                                      §§push(int(_loc1_.height));
                                                      while(_loc17_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         loop16:
                                                         while(_loc17_ || _loc1_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(int(_loc1_.left));
                                                               addr148:
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  addr149:
                                                                  while(true)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        if(!(_loc16_ && _loc3_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               addr140:
                                                               if(_loc16_)
                                                               {
                                                                  break;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                                               if(_loc17_)
                                                               {
                                                                  this.§ !8§(_loc10_.rect,_loc10_,_loc5_);
                                                               }
                                                               _loc11_ = this.§@Z§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                               }
                                                               _loc12_ = this.§6f§.textureManager.getTextureFromBitmapData(_loc10_);
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  this.§3!i§.push(_loc12_);
                                                               }
                                                               _loc13_ = new §&p§(_loc12_);
                                                               if(!_loc16_)
                                                               {
                                                                  _loc13_.x = _loc8_ / _loc5_;
                                                                  _loc13_.y = _loc9_ / _loc5_;
                                                                  addr474:
                                                               }
                                                               _loc13_.scaleX = 1 / _loc5_;
                                                               _loc13_.scaleY = 1 / _loc5_;
                                                               this.§%!2§.addChild(_loc13_);
                                                               _loc11_.dispose();
                                                               addr431:
                                                               addr468:
                                                               addr461:
                                                               addr454:
                                                               if(_loc17_ || _loc1_)
                                                               {
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr431);
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr474);
                                                                        }
                                                                        §§goto(addr468);
                                                                     }
                                                                     §§goto(addr461);
                                                                  }
                                                                  §§goto(addr454);
                                                               }
                                                               addr447:
                                                               §§goto(addr447);
                                                            }
                                                         }
                                                         _loc1_.bottom /= 2;
                                                         break loop12;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                   addr130:
                                                   if(!(_loc17_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   _loc9_ = §§pop();
                                                   if(!_loc16_)
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr149);
                                                }
                                             }
                                             else
                                             {
                                                _loc1_.top /= 2;
                                                addr315:
                                             }
                                             _loc1_.right /= 2;
                                             §§goto(addr297);
                                          }
                                          if(_loc16_ && _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(_loc5_);
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             §§push(§§pop() / 2);
                                             if(!_loc16_)
                                             {
                                                addr265:
                                                if(_loc16_ && _loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             _loc5_ = §§pop();
                                             continue loop6;
                                          }
                                          §§goto(addr265);
                                       }
                                       else
                                       {
                                          _loc1_.left /= 2;
                                       }
                                       §§goto(addr315);
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr274);
      }
      
      private function §@Z§(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:LevelObject = null;
         var _loc11_:LevelItemShape = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc11_ = _loc7_.§>!9§.shape;
            _loc12_ = _loc11_.§?L§();
            _loc13_ = new Rectangle(_loc12_[0].x / LevelMain.§!5§ * param6,_loc12_[0].y / LevelMain.§!5§ * param6,(_loc12_[1].x - _loc12_[0].x) / LevelMain.§!5§ * param6,(_loc12_[1].y - _loc12_[0].y) / LevelMain.§!5§ * param6);
            if(_loc17_)
            {
               _loc10_.identity();
            }
            while(true)
            {
               _loc10_.scale(_loc13_.width,_loc13_.height);
               while(!(_loc16_ && param2))
               {
                  _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                  loop3:
                  for(; _loc17_; if(_loc16_ && this)
                  {
                     continue;
                  },_loc8_.draw(_loc9_,_loc10_),if(!_loc16_)
                  {
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr147);
                  },§§goto(addr165))
                  {
                     _loc10_.rotate((360 - _loc7_.§=W§()) / 180 * Math.PI);
                     loop4:
                     while(true)
                     {
                        addr147:
                        while(true)
                        {
                           _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                           addr165:
                           while(true)
                           {
                              if(!_loc16_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         if(_loc17_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function § !8§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§6f§.background.§[!O§());
         if(!_loc17_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§?!B§ = this.§6f§.backgroundTextureManager.§"!'§(_loc4_);
         if(_loc16_)
         {
            if(_loc5_)
            {
               addr58:
               _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
               _loc7_ = new Matrix();
               if(!_loc17_)
               {
                  _loc7_.scale(param3,param3);
                  while(true)
                  {
                     _loc6_.draw(_loc5_.bitmapData,_loc7_);
                     while(true)
                     {
                        §§push(_loc6_.width - 2);
                        while(true)
                        {
                           §§push(int(§§pop()));
                           while(true)
                           {
                              _loc8_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc6_.height - 2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr476:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       addr477:
                                       while(true)
                                       {
                                          §§push(param1.top / _loc9_);
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(!(_loc17_ && param2))
                        {
                           §§goto(addr400);
                        }
                     }
                  }
               }
               §§goto(addr399);
            }
            §§goto(addr120);
         }
         §§goto(addr58);
      }
      
      public function §,D§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:LevelObject = null;
         var _loc11_:* = param2;
         if(!(_loc13_ && param2))
         {
            §§push("BIRD_BLACK");
            if(_loc12_ || this)
            {
               §§push(_loc11_);
               if(_loc12_ || this)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc12_ || this)
                     {
                        §§push(0);
                        if(_loc13_ && param1)
                        {
                           addr271:
                        }
                     }
                     else
                     {
                        addr384:
                        §§push(6);
                        if(!(_loc13_ && param3))
                        {
                           addr392:
                        }
                        else
                        {
                           addr398:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(!(_loc13_ && this))
                     {
                        §§push(_loc11_);
                        if(_loc12_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc13_ && param3))
                              {
                                 §§push(1);
                                 if(_loc12_)
                                 {
                                    §§goto(addr271);
                                 }
                                 else
                                 {
                                    addr400:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc10_ = new §each §(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 1:
                                          _loc10_ = new §-!c§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 2:
                                          _loc10_ = new §6m§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 3:
                                          _loc10_ = new §>!7§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 4:
                                          _loc10_ = new §%;§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 5:
                                          _loc10_ = new §<N§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 6:
                                          _loc10_ = new §`!N§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       default:
                                          _loc10_ = new §[r§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
                                    }
                                    return _loc10_;
                                    addr289:
                                 }
                              }
                              §§goto(addr400);
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(_loc12_ || param1)
                              {
                                 §§push(_loc11_);
                                 if(!_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          §§push(2);
                                          if(!_loc13_)
                                          {
                                             §§goto(addr289);
                                          }
                                          else
                                          {
                                             addr340:
                                             §§goto(addr400);
                                          }
                                       }
                                       else
                                       {
                                          addr360:
                                          §§push(5);
                                          if(!(_loc13_ && this))
                                          {
                                             §§goto(addr400);
                                          }
                                          else
                                          {
                                             §§goto(addr392);
                                          }
                                       }
                                       §§goto(addr400);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc12_ || param1)
                                       {
                                          §§push(_loc11_);
                                          if(!(_loc13_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc13_)
                                                {
                                                   §§push(3);
                                                   if(_loc12_ || param3)
                                                   {
                                                   }
                                                   §§goto(addr400);
                                                }
                                                else
                                                {
                                                   §§goto(addr384);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc12_ || this)
                                                {
                                                   addr326:
                                                   §§push(_loc11_);
                                                   if(!_loc13_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§push(4);
                                                            if(_loc12_ || param3)
                                                            {
                                                               §§goto(addr340);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr360);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(_loc12_ || param3)
                                                         {
                                                         }
                                                         addr380:
                                                         if(§§pop() === _loc11_)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               §§goto(addr384);
                                                            }
                                                            else
                                                            {
                                                               addr395:
                                                               §§push(7);
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr398);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr395);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr400);
                                                               §§push(7);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr395);
                                                      }
                                                      §§goto(addr400);
                                                   }
                                                   addr352:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc12_ || param3)
                                                      {
                                                         §§goto(addr360);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr384);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr380);
                                                      §§push("BIRD_REDBIG");
                                                   }
                                                   §§goto(addr400);
                                                }
                                                §§push(_loc11_);
                                                if(_loc12_)
                                                {
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr400);
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr380);
                                    }
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr326);
                           }
                        }
                     }
                     §§goto(addr380);
                  }
                  §§goto(addr400);
               }
            }
            §§goto(addr326);
         }
         §§goto(addr360);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>!6§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : LevelObject
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:Sprite = new Sprite();
         if(!_loc15_)
         {
            _loc10_.scaleX = param8;
            if(!(_loc15_ && param1))
            {
               addr32:
               _loc10_.scaleY = param8;
            }
            var _loc11_:LevelObject = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
            if(!(_loc15_ && this))
            {
               §§push(_loc11_.isTexture());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr201:
                     while(true)
                     {
                        §§push(_loc10_);
                        §§push(this.§6!P§);
                        if(!(_loc15_ && param2))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                        addr213:
                        while(true)
                        {
                           this.§!2§[this.§!2§.length] = _loc11_;
                        }
                     }
                     addr201:
                  }
                  else
                  {
                     this.§!2§[this.§!2§.length] = _loc11_;
                     if(_loc15_ && param1)
                     {
                        break;
                     }
                     if(!(_loc14_ || param1))
                     {
                        while(true)
                        {
                           if(!(_loc14_ || this))
                           {
                              continue;
                           }
                        }
                        addr190:
                     }
                     while(true)
                     {
                        §§push(_loc11_ is §[r§);
                        addr116:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr190);
               }
               §§goto(addr284);
            }
            §§goto(addr201);
         }
         §§goto(addr32);
      }
      
      public function §98§(param1:int, param2:LevelObject, param3:LevelObject) : §@P§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§@P§ = null;
         var _loc4_:int = this.§!2§.indexOf(param2) - this.§1p§;
         var _loc5_:int = this.§!2§.indexOf(param3) - this.§1p§;
         if(_loc7_)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               §§push(0);
               if(!(_loc8_ && param3))
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && param1))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§goto(addr83);
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr97);
                  }
                  addr83:
                  §§pop();
                  if(_loc7_)
                  {
                     addr88:
                     addr87:
                     §§push(_loc5_ >= 0);
                     if(_loc7_ || param3)
                     {
                     }
                     addr97:
                     if(§§pop())
                     {
                        §§goto(addr98);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr98);
               }
               §§goto(addr88);
            }
            §§goto(addr87);
         }
         addr98:
         _loc6_ = new §@P§(§&D§.§9!-§,_loc4_,_loc5_,new Point(0,0),new Point(0,0));
         if(!_loc8_)
         {
            _loc6_.§^!E§ = this.§6f§.mLevelEngine.mWorld.§`H§(_loc6_.§2b§(param2,param3));
         }
         else if(true)
         {
            addr161:
            return null;
         }
         this.§&d§.push(_loc6_);
         return _loc6_;
      }
      
      public function §`p§(param1:§@P§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.§^!E§ is b2WeldJoint);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr35);
               }
            }
            var _loc2_:LevelObject = this.§[O§(param1.index1 + this.§1p§);
            var _loc3_:LevelObject = this.§[O§(param1.index2 + this.§1p§);
            if(_loc5_)
            {
               this.§6f§.mLevelEngine.mWorld.§1#§(param1.§^!E§);
            }
            do
            {
               param1.§^!E§ = this.§6f§.mLevelEngine.mWorld.§`H§(param1.§2b§(_loc2_,_loc3_));
            }
            while(_loc4_);
            
            return;
         }
         addr35:
      }
      
      public function §1Q§(param1:LevelObject) : Vector.<§@P§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§@P§ = null;
         var _loc2_:Vector.<§@P§> = new Vector.<§@P§>();
         var _loc3_:int = this.§!2§.indexOf(param1) - this.§1p§;
         if(_loc7_ || param1)
         {
            §§push(_loc3_);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() >= 0)
               {
                  addr54:
                  addr53:
                  for each(_loc4_ in this.§&d§)
                  {
                     if(_loc7_ || this)
                     {
                        §§push(_loc4_.index1 == _loc3_);
                        if(_loc7_ || param1)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc7_)
                           {
                              addr97:
                              §§push(§§pop());
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(_loc4_.index2 == _loc3_);
                                       if(_loc7_ || _loc2_)
                                       {
                                       }
                                       addr144:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             addr147:
                                             _loc2_.push(_loc4_);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr147);
                  }
               }
               return _loc2_;
            }
            §§goto(addr54);
         }
         §§goto(addr53);
      }
      
      public function §]y§() : Vector.<§@P§>
      {
         return this.§&d§;
      }
      
      public function §3!B§(param1:LevelObject) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§!2§.indexOf(param1) - this.§1p§;
         var _loc3_:* = int(this.§&d§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && param1))
            {
               if(!(_loc4_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              §§push(this.§&d§[_loc3_].index2 == _loc2_);
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 addr101:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    break loop6;
                                    §§goto(addr101);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || this)
                                 {
                                    this.§&d§.splice(_loc3_,1);
                                    addr117:
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                    addr117:
                                 }
                                 §§goto(addr117);
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr59:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc5_)
                                    {
                                       addr63:
                                       §§push(int(§§pop()));
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          continue loop5;
                                       }
                                       addr63:
                                    }
                                    §§goto(addr63);
                                 }
                              }
                           }
                        }
                        §§goto(addr117);
                     }
                     continue;
                  }
                  §§push(this.§&d§[_loc3_].index1 == _loc2_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           §§goto(addr157);
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr157);
               }
               §§goto(addr59);
            }
            §§goto(addr63);
         }
      }
      
      public function §!g§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§!2§.indexOf(param1) - this.§1p§;
         var _loc4_:int = this.§!2§.indexOf(param2) - this.§1p§;
         var _loc5_:* = int(this.§&d§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc6_)
            {
               if(_loc6_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && this))
                           {
                              §§push(false);
                              if(_loc6_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§pop();
                                       addr198:
                                       while(true)
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(this.§&d§[_loc5_].index2 == _loc3_);
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop11:
                                                         while(true)
                                                         {
                                                            addr149:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr88:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           addr97:
                                                                           §§push(int(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              addr98:
                                                                              while(_loc7_ && _loc3_)
                                                                              {
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr97:
                                                                        }
                                                                        §§goto(addr97);
                                                                     }
                                                                  }
                                                                  addr86:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(true);
                                                                     while(_loc7_ && this)
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 addr242:
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop9;
                                                                                    §§goto(addr242);
                                                                                 }
                                                                              }
                                                                              addr239:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr265:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§&d§[_loc5_].index2 == _loc4_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                    }
                                                                                    addr264:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr218:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break loop7;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                     addr153:
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr149);
                                          }
                                          §§goto(addr265);
                                       }
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(this.§&d§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr253);
               }
               §§goto(addr88);
            }
            §§goto(addr97);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc10_:LevelObject = null;
         var _loc11_:§0!J§ = null;
         var _loc12_:§0!J§ = null;
         if(!_loc16_)
         {
            §§push(param2);
            if(!(_loc16_ && param2))
            {
               §§push("BIRD");
               if(_loc15_ || param3)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc16_ && param2))
                     {
                        addr53:
                        _loc10_ = this.§,D§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(_loc15_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§=!O§);
                           if(_loc15_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(!_loc16_)
                           {
                              _loc13_.§=!O§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr89:
                        §§push(LevelItemManager.§><§(param2));
                        if(_loc15_)
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §!!^§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr125:
                           _loc12_ = §§pop();
                           if(_loc15_)
                           {
                              §§push(_loc12_ == null);
                              if(!_loc16_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc15_ || param2)
                                 {
                                    §§push(§§pop());
                                    if(_loc15_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc16_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc16_)
                                             {
                                                §§pop();
                                                if(_loc15_ || param1)
                                                {
                                                   §§push(param2);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop().indexOf("MISC_") == 0);
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            addr191:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  addr207:
                                                                  §§push("MISC_FOOD_");
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(§§pop() + param2.substring(5));
                                                                  }
                                                                  param2 = §§pop();
                                                                  if(_loc15_)
                                                                  {
                                                                     addr210:
                                                                     _loc12_ = LevelItemManager.§><§(param2);
                                                                     addr216:
                                                                     §§push(_loc12_.§4i§);
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        §§push(§0!J§.§ K§);
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr250:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§goto(addr253);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 §§goto(addr250);
                                                                              }
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr210);
                                             }
                                             addr253:
                                             §§pop();
                                             if(!(_loc16_ && param1))
                                             {
                                                addr266:
                                                §§push(_loc12_.§4i§ == §0!J§.§ !Z§);
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§goto(addr275);
                                                }
                                                addr275:
                                                if(!§§pop())
                                                {
                                                   _loc10_ = new LevelObject(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param9,_loc12_.front);
                                                }
                                                §§goto(addr333);
                                             }
                                             _loc10_ = new §'k§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                             §§goto(addr333);
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    §§goto(addr250);
                                 }
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr207);
                        }
                     }
                     addr333:
                     return _loc10_;
                  }
                  addr86:
                  if(param2.indexOf("PIG") == 0)
                  {
                     §§goto(addr89);
                  }
                  else
                  {
                     §§push(LevelItemManager.§><§(param2));
                  }
                  §§goto(addr125);
                  §§goto(addr89);
               }
            }
            §§goto(addr86);
         }
         §§goto(addr53);
      }
      
      public function § U§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc2_:* = int(this.§!2§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!2§[_loc2_] as LevelObject;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     if(_loc3_.§19§ > 0)
                     {
                        _loc3_.§4!G§();
                        loop2:
                        while(true)
                        {
                           addr74:
                           while(true)
                           {
                              _loc3_.§ try§();
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr126);
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc4_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr78);
                     }
                     continue loop0;
                     addr41:
                  }
               }
               §§goto(addr41);
            }
            §§goto(addr126);
         }
         if(!_loc4_)
         {
            this.§0@§(param1);
         }
      }
      
      protected function §0@§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:§@P§ = null;
         var _loc4_:§]!Z§ = null;
         var _loc5_:* = 0;
         var _loc6_:LevelObject = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:int = this.§^!'§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc11_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr531);
               }
               _loc4_ = this.§^!'§[_loc2_];
               if(!(_loc11_ || _loc3_))
               {
                  continue;
               }
               if(_loc4_.§9O§)
               {
                  if(!_loc11_)
                  {
                     continue;
                  }
                  §§push(_loc4_.update(param1));
                  if(_loc11_)
                  {
                     §§push(int(§§pop()));
                     if(_loc11_)
                     {
                        _loc5_ = §§pop();
                        if(!_loc11_)
                        {
                           continue;
                        }
                        §§push(_loc5_);
                        if(_loc11_)
                        {
                           addr72:
                           if(§§pop() != -1)
                           {
                              if(!(_loc11_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(this);
                              §§push("block_");
                              if(!(_loc12_ && this))
                              {
                                 §§push(§§pop() + _loc5_);
                              }
                              _loc6_ = §§pop().§ x§(§§pop());
                              if(_loc11_)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc11_)
                                    {
                                       addr102:
                                       this.§6T§(_loc6_,true,true,true);
                                       if(_loc12_ && _loc3_)
                                       {
                                       }
                                       addr122:
                                       §§push(_loc2_);
                                       if(_loc11_ || _loc2_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(_loc11_)
                                          {
                                             addr134:
                                             _loc2_ = §§pop();
                                             continue;
                                          }
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr122);
                                 }
                                 this.§^!'§.splice(_loc2_,1);
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr134);
               }
               §§goto(addr102);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(_loc11_)
         {
            loop1:
            for each(_loc3_ in this.§&d§)
            {
               if(!(_loc12_ && _loc3_))
               {
                  §§push(_loc3_.type == §&D§.§;!I§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr526:
                                 while(true)
                                 {
                                    §§push(Boolean(_loc3_.§8!&§));
                                 }
                              }
                              addr525:
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop1;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc3_.§^!E§);
                                    while(true)
                                    {
                                       §§push((§§pop() as b2PrismaticJoint).§>t§());
                                       loop10:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             _loc7_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc3_.§^!E§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push((§§pop() as b2PrismaticJoint).§3!g§());
                                                   loop14:
                                                   while(!_loc12_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(_loc3_.§5J§));
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr469:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr470:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(_loc3_.§=E§));
                                                                           }
                                                                        }
                                                                        addr469:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop23:
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
                                                                                    loop49:
                                                                                    while(true)
                                                                                    {
                                                                                       addr230:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             addr233:
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(!(_loc12_ && param1))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§goto(addr526);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr470);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         addr420:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                      }
                                                                                                      addr461:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(!_loc12_)
                                                                                                   {
                                                                                                      if(_loc11_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         while(_loc11_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() >= _loc3_.upperLimit);
                                                                                                            continue loop23;
                                                                                                            if(!(_loc11_ || this))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§goto(addr420);
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                   addr442:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop48:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc11_ || param1))
                                                                                                   {
                                                                                                      loop44:
                                                                                                      while(_loc11_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  addr302:
                                                                                                                  if(_loc12_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop46:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr312:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop49;
                                                                                                                           }
                                                                                                                           while(_loc11_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc12_ && param1))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop48;
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                              if(!(_loc12_ && _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop46;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc12_ && param1))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          if(_loc12_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          if(_loc12_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                if(_loc11_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop49;
                                                                                                                                                   }
                                                                                                                                                   while(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc12_)
                                                                                                                                                      {
                                                                                                                                                         break loop40;
                                                                                                                                                      }
                                                                                                                                                      §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr292:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop44;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr469);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             continue loop18;
                                                                                                                                             §§goto(addr312);
                                                                                                                                          }
                                                                                                                                          §§goto(addr525);
                                                                                                                                          addr397:
                                                                                                                                       }
                                                                                                                                       §§goto(addr397);
                                                                                                                                    }
                                                                                                                                    continue loop19;
                                                                                                                                    addr378:
                                                                                                                                 }
                                                                                                                                 addr460:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§goto(addr461);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr319);
                                                                                                                           }
                                                                                                                           addr319:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr423);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     §§goto(addr469);
                                                                                                                  }
                                                                                                                  §§goto(addr470);
                                                                                                               }
                                                                                                               §§goto(addr407);
                                                                                                               if(!(_loc12_ && param1))
                                                                                                               {
                                                                                                                  addr221:
                                                                                                                  if(_loc11_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                                  addr437:
                                                                                                                  while(_loc11_)
                                                                                                                  {
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr442);
                                                                                                                     §§goto(addr221);
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§goto(addr174);
                                                                                                }
                                                                                                addr288:
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§goto(addr292);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          §§goto(addr417);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr460);
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
                                                   continue loop10;
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
               §§goto(addr526);
            }
         }
         addr531:
         if(_loc11_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§+!+§.push(§^!6§.createExplosion(param1,param2,param3));
            do
            {
               SoundEngine.§`B§("TntExplosions","ChannelExplosions");
            }
            while(!_loc4_);
            
         }
      }
      
      public function §35§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§!2§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               _loc4_ = this.§!2§[_loc3_];
               if(!_loc5_)
               {
                  continue;
               }
               §§push(Boolean(_loc4_));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr57:
                        if(_loc4_.isInCoordinates(param1,param2))
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(_loc3_);
                              if(_loc5_ || _loc3_)
                              {
                                 return §§pop();
                              }
                              addr89:
                              §§push(§§pop() - 1);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           else
                           {
                              addr86:
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§goto(addr89);
                              }
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr57);
            }
            break;
         }
         return §§pop();
      }
      
      public function §9!k§(param1:Number, param2:Number) : LevelObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§!2§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            _loc4_ = this.§!2§[_loc3_];
            if(!(_loc5_ && param2))
            {
               §§push(Boolean(_loc4_));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr68:
                        if(_loc4_.isInCoordinates(param1,param2))
                        {
                           if(_loc6_ || param1)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                  }
                  §§push(_loc3_);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc6_ || this)
                     {
                        addr111:
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr68);
         }
         return _loc4_;
      }
      
      public function §[O§(param1:int) : LevelObject
      {
         return this.§!2§[param1];
      }
      
      public function §,9§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§!2§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§!2§[_loc3_] as LevelObject;
            if(_loc6_)
            {
               continue;
            }
            _loc4_.§,9§(param2,param1);
            if(_loc6_ && _loc3_)
            {
               continue;
            }
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() - 1);
               if(!_loc6_)
               {
                  addr82:
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr82);
         }
      }
      
      private function §;!G§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:LevelObject = null;
         if(_loc9_ || this)
         {
            §§push(this.mSardineCanAdded);
            if(_loc9_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§push(true);
                        if(!(_loc8_ && param2))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(false);
                        if(!_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc9_ || this)
                        {
                           §§push(param1.§19§);
                           loop0:
                           while(true)
                           {
                              §§push(param1.§^V§);
                              loop1:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§^O§);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr558:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§^O§ = this.§6f§.§"!-§;
                                                addr564:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr559:
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1.§[q§());
                                             if(!_loc8_)
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
                                                         if(!§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§>!g§(param1));
                                                                     loop50:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr527:
                                                                        while(true)
                                                                        {
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop13:
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                while(§§pop() >= this.§5a§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                {
                                                                                                }
                                                                                                addr668:
                                                                                                return _loc3_;
                                                                                                addr667:
                                                                                                addr461:
                                                                                             }
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mMightyEagleTimer);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            loop30:
                                                                                                            while(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               §§push(this.mMightyEagleTimer);
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() < this.§5a§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                  loop32:
                                                                                                                  while(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     loop33:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc8_ && param2))
                                                                                                                        {
                                                                                                                           addr384:
                                                                                                                           if(_loc8_ && this)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    break loop33;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 §§goto(addr384);
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                              addr504:
                                                                                                                           }
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        addr394:
                                                                                                                        if(!(_loc9_ || param1))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(_loc8_ && this)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr513:
                                                                                                                           loop34:
                                                                                                                           for(; !(_loc8_ && _loc3_); if(!(_loc9_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },_loc3_ = §§pop(),if(_loc9_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr157);
                                                                                                                                    }
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                              §§goto(addr301);
                                                                                                                           },§§goto(addr668))
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop35:
                                                                                                                                 while(_loc9_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    loop36:
                                                                                                                                    while(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > this.§5a§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                          if(!(_loc8_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                          }
                                                                                                                                          loop37:
                                                                                                                                          while(!(_loc8_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
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
                                                                                                                                                         if(_loc8_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop49;
                                                                                                                                                               }
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr564);
                                                                                                                                                            }
                                                                                                                                                            continue loop50;
                                                                                                                                                            addr534:
                                                                                                                                                         }
                                                                                                                                                         §§push(SoundEngine.§`B§("Mighty_Eagle_Selected_1","ChannelBird"));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr365:
                                                                                                                                                            loop59:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(SoundEngine.§`B§("Mighty_Eagle_Flying_1","ChannelBird"));
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr303:
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop28;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() < this.§5a§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           loop41:
                                                                                                                                                                           while(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§8!N§());
                                                                                                                                                                              loop42:
                                                                                                                                                                              while(_loc9_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().GetPosition());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    addr258:
                                                                                                                                                                                    loop44:
                                                                                                                                                                                    while(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - this.§5a§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                                       loop45:
                                                                                                                                                                                       while(_loc9_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          while(_loc9_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop35;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr157);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr617);
                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr667);
                                                                                                                                                                                             if(_loc8_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§5a§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§5a§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * 1.07);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc9_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§>!g§(param1));
                                                                                                                                                                                                   if(_loc9_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc8_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(true);
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr129:
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop33;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr668);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr592:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§;!0§);
                                                                                                                                                                                                               addr594:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() < this.§5a§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(this.§;!0§);
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param2);
                                                                                                                                                                                                                           if(_loc9_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * this.§5a§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().§;!0§ = §§pop();
                                                                                                                                                                                                                        addr617:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr598:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§8!N§());
                                                                                                                                                                                                                     break loop42;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr668);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr668);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§5a§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                                                         addr618:
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.mMightyEagleAdded = true;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr653:
                                                                                                                                                                                                         this.§^O§ = 0;
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc7_.§ get§.§6v§(1.82);
                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr653);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop40;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr653);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr663:
                                                                                                                                                                                                         §§goto(addr663);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr129);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr668);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr594);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() > this.§^O§ + this.§5a§.SARDINE_CAN_DELAY_AFTER_HIT);
                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                             §§goto(addr272);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr272:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§8!N§());
                                                                                                                                                                                    if(!(_loc9_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().GetPosition());
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr173);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr215);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr257);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * this.§;!0§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§&R§(§§pop());
                                                                                                                                                                                 break loop41;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§^O§ = 0;
                                                                                                                                                                              break loop30;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr272);
                                                                                                                                                                        §§goto(addr303);
                                                                                                                                                                     }
                                                                                                                                                                     this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                     §§goto(addr668);
                                                                                                                                                                     addr223:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(!(_loc8_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr433);
                                                                                                                                                                        §§push(this.§6f§.§"!-§);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr598);
                                                                                                                                                                     addr514:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr573);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr365);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr223);
                                                                                                                                                }
                                                                                                                                                continue loop25;
                                                                                                                                                addr341:
                                                                                                                                             }
                                                                                                                                             continue loop50;
                                                                                                                                          }
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       §§goto(addr461);
                                                                                                                                       §§goto(addr668);
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              addr533:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr534);
                                                                                                                           }
                                                                                                                           while(_loc9_ || this)
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                              §§goto(addr409);
                                                                                                                           }
                                                                                                                           addr409:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr514);
                                                                                                                           }
                                                                                                                           addr513:
                                                                                                                           addr448:
                                                                                                                        }
                                                                                                                        §§goto(addr341);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        §§goto(addr513);
                                                                                                                        §§goto(addr394);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr668);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr533);
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr550:
                                                            }
                                                            §§goto(addr668);
                                                         }
                                                         §§goto(addr527);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr550);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr592);
                              }
                           }
                        }
                        §§goto(addr365);
                     }
                  }
                  else
                  {
                     §§push(this.mMightyEagleAdded);
                     if(!(_loc8_ && this))
                     {
                        addr73:
                        if(§§pop())
                        {
                           if(_loc9_ || _loc3_)
                           {
                              addr81:
                              §§push(false);
                              if(_loc9_)
                              {
                                 §§goto(addr84);
                              }
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        }
                        §§goto(addr85);
                     }
                  }
                  addr84:
                  return §§pop();
               }
            }
            §§goto(addr73);
         }
         §§goto(addr81);
      }
      
      private function §'q§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:LevelObject = null;
         if(_loc8_ || param1)
         {
            §§push(Boolean(this.§5a§.MIGHTY_EAGLE_USE_SHADE));
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
                        while(true)
                        {
                           §§pop();
                           addr124:
                           while(true)
                           {
                              §§push(this.§%!;§);
                              addr100:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr101:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        addr123:
                     }
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(_loc9_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 addr114:
                                 loop14:
                                 while(true)
                                 {
                                    addr48:
                                    addr80:
                                    while(true)
                                    {
                                       §§push(this.mMightyEagleTimer);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() > this.§5a§.MIGHTY_EAGLE_SHADING_DELAY);
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(_loc8_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop9;
                                       }
                                       addr127:
                                       var _loc3_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          §§push(this);
                                          §§push(this.mMightyEagleTimer);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + param2);
                                          }
                                          §§pop().mMightyEagleTimer = §§pop();
                                          if(_loc8_)
                                          {
                                             addr140:
                                             §§push(this.§6f§.particles);
                                             §§push(§8!;§.§=!5§);
                                             §§push(LevelParticleManager.§1!'§);
                                             §§push(§8!;§.§;Z§);
                                             §§push(param1.§8!N§().GetPosition().x);
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(_loc3_);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc9_)
                                                   {
                                                      addr190:
                                                      §§push(Math.random() * (_loc3_ * 2));
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(_loc3_);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr213:
                                                            §§push(§§pop() + Math.random() * (_loc3_ * 2));
                                                         }
                                                         §§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§8!;§.§"K§(param1.§4!W§),0,0,1,0,4);
                                                         addr228:
                                                         §§push(1);
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            addr359:
                                                            if(this.mMightyEagleHasTouchedGround)
                                                            {
                                                               addr360:
                                                               param1.§3'§(this.§5a§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                               addr368:
                                                               §§push(-1);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc8_)
                                                                  {
                                                                     addr353:
                                                                     _loc4_ = §§pop();
                                                                     addr354:
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(this.§3!`§);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr342:
                                                                              this.§3!`§ = false;
                                                                              this.§6f§.§8-§();
                                                                              addr345:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 param1.§8!9§(LevelItemSoundResource.§[!e§);
                                                                                 addr320:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    this.mSardineCanAdded = false;
                                                                                    addr286:
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             addr272:
                                                                                             param1.§ get§.§#[§ = true;
                                                                                             addr269:
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§push(param1.§ get§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§pop().§#I§();
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr269);
                                                                                                         }
                                                                                                         addr370:
                                                                                                         var _loc6_:int = 0;
                                                                                                         var _loc7_:* = this.§!2§;
                                                                                                         addr446:
                                                                                                         §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                               {
                                                                                                                  addr439:
                                                                                                                  §§push(Boolean(_loc5_));
                                                                                                                  §§push(Boolean(_loc5_));
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr444:
                                                                                                                     §§pop();
                                                                                                                     addr419:
                                                                                                                     §§push(_loc5_.§<!#§());
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     addr445:
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr429:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr433:
                                                                                                                              _loc5_.§8!N§().SetAwake(true);
                                                                                                                              addr431:
                                                                                                                              addr436:
                                                                                                                              §§push(_loc5_.§8!N§());
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr419);
                                                                                                                                          }
                                                                                                                                          §§goto(addr446);
                                                                                                                                       }
                                                                                                                                       §§goto(addr445);
                                                                                                                                    }
                                                                                                                                    §§goto(addr431);
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr433);
                                                                                                                           }
                                                                                                                           §§goto(addr446);
                                                                                                                        }
                                                                                                                        §§goto(addr439);
                                                                                                                     }
                                                                                                                     §§goto(addr444);
                                                                                                                  }
                                                                                                                  §§goto(addr429);
                                                                                                               }
                                                                                                               §§goto(addr444);
                                                                                                            }
                                                                                                            if(_loc8_ || param1)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                  {
                                                                                                                     this.§0R§();
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr473:
                                                                                                                        §§push(this.mMightyEagleTimer > 6000);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(this.isPigsAlive());
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          addr496:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             addr504:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc8_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr512:
                                                                                                                                                   _loc6_ = 0;
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = this.§!2§;
                                                                                                                                                      addr573:
                                                                                                                                                      for each(_loc5_ in _loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(_loc5_));
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.§<!#§());
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           addr553:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr561:
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 §§push(_loc5_.§^V§);
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * 2);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr553);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr573);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr553);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr561);
                                                                                                                                                      }
                                                                                                                                                      addr576:
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      return false;
                                                                                                                                                      addr615:
                                                                                                                                                      addr575:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr576);
                                                                                                                                                }
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             param1.§3!"§(param2,new Point(this.§5a§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§5a§.MIGHTY_EAGLE_Y_CHANGE),this.§5a§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                             addr585:
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr621:
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr585);
                                                                                                                                                }
                                                                                                                                                this.§3!`§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                §§goto(addr621);
                                                                                                                                                addr633:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr576);
                                                                                                                                    }
                                                                                                                                    §§goto(addr512);
                                                                                                                                 }
                                                                                                                                 §§goto(addr496);
                                                                                                                              }
                                                                                                                              §§goto(addr504);
                                                                                                                           }
                                                                                                                           §§goto(addr576);
                                                                                                                        }
                                                                                                                        §§goto(addr496);
                                                                                                                     }
                                                                                                                     §§goto(addr576);
                                                                                                                  }
                                                                                                                  §§goto(addr633);
                                                                                                               }
                                                                                                               §§goto(addr576);
                                                                                                            }
                                                                                                            §§goto(addr575);
                                                                                                         }
                                                                                                         §§goto(addr573);
                                                                                                      }
                                                                                                      §§goto(addr320);
                                                                                                   }
                                                                                                   §§goto(addr269);
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             §§goto(addr286);
                                                                                          }
                                                                                          §§goto(addr342);
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                                 addr330:
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           §§goto(addr473);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            this.mMightyEagleHasTouchedGround = param1.§8!N§().GetPosition().y >= -5.5;
                                                            §§goto(addr621);
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§push(param1.§8!N§().GetPosition().y);
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr213);
                                                }
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr140);
                                    }
                                    if(!_loc9_)
                                    {
                                       loop10:
                                       while(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc9_ && param2)
                                             {
                                                continue loop14;
                                             }
                                             this.§%!;§ = true;
                                             while(_loc8_)
                                             {
                                                this.§6f§.§]a§();
                                                if(!(_loc8_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc8_ || param1))
                                                {
                                                   continue loop11;
                                                }
                                                if(true)
                                                {
                                                   break loop10;
                                                }
                                                §§goto(addr48);
                                             }
                                             §§goto(addr124);
                                          }
                                          continue loop14;
                                       }
                                       §§goto(addr127);
                                       §§push(Number(3));
                                       addr82:
                                    }
                                    §§goto(addr123);
                                 }
                              }
                           }
                           §§goto(addr82);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §4V§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§^!6§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:LevelObject = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§+!+§.length > 0)
         {
            _loc1_ = this.§+!+§.shift();
            if(_loc20_)
            {
               §§push(_loc1_.pushRadius);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(_loc20_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc20_ || _loc3_)
                     {
                        §§push(_loc1_.x);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr129:
                           addr107:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr130:
                              while(true)
                              {
                                 addr94:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    if(_loc21_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc21_ && this)
                              {
                                 continue loop2;
                              }
                              _loc4_ = §§pop();
                              if(_loc20_ || _loc2_)
                              {
                                 if(_loc20_)
                                 {
                                    §§push(_loc1_.damage);
                                    if(_loc20_ || _loc2_)
                                    {
                                       continue;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          loop17:
                                          while(true)
                                          {
                                             §§push(180);
                                             if(!_loc21_)
                                             {
                                                §§push(§§pop() / Math.PI);
                                                if(_loc20_ || _loc3_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc20_ || _loc1_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc20_ || _loc1_)
                                                      {
                                                         _loc17_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!(_loc20_ || _loc1_))
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr780:
                                                            while(true)
                                                            {
                                                               §§push(this.§6f§);
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  if(_loc20_ || this)
                                                                  {
                                                                     §§push(§8!;§.§8!T§);
                                                                     if(!(_loc21_ && _loc1_))
                                                                     {
                                                                        §§push(LevelParticleManager.§1!'§);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§8!;§.§;Z§);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    §§push("");
                                                                                    §§push(§8!;§.§"L§);
                                                                                    §§push(_loc15_);
                                                                                    if(!(_loc21_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * Math.cos(_loc17_));
                                                                                    }
                                                                                    §§push(_loc15_);
                                                                                    if(!(_loc21_ && _loc1_))
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc20_ || _loc3_)
                                                                                       {
                                                                                          addr709:
                                                                                          §§push(§§pop() * Math.sin(_loc17_));
                                                                                       }
                                                                                       §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0));
                                                                                       if(!(_loc21_ && this))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc20_ || _loc3_))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(_loc20_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!(_loc21_ && _loc1_))
                                                                                             {
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr589:
                                                                                                   §§push(5);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         addr595:
                                                                                                         if(!(_loc21_ && _loc1_))
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(0.75);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         addr809:
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc20_ || _loc3_)
                                                                                                         {
                                                                                                            addr817:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Math.random() * _loc2_);
                                                                                                               §§goto(addr817);
                                                                                                            }
                                                                                                            addr818:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc21_ && _loc1_))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               addr831:
                                                                                                            }
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               addr833:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(1250);
                                                                                                                  addr783:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc20_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§push(Math.random() * 750);
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr796:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§goto(addr818);
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr795:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           addr837:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 addr882:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr836:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr831);
                                                                                                   }
                                                                                                   addr883:
                                                                                                }
                                                                                                §§goto(addr783);
                                                                                             }
                                                                                             §§goto(addr882);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(30);
                                                                                             addr880:
                                                                                          }
                                                                                          §§goto(addr836);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr879:
                                                                                          §§pop();
                                                                                       }
                                                                                       §§goto(addr880);
                                                                                    }
                                                                                    §§goto(addr709);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr866:
                                                                                    §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§8!;§.§"L§,0,0,0,0,1,20,true));
                                                                                 }
                                                                                 §§goto(addr879);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr865:
                                                                                 §§push(_loc4_);
                                                                              }
                                                                              §§goto(addr866);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr864:
                                                                              §§push(_loc3_);
                                                                           }
                                                                           §§goto(addr865);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr861:
                                                                           §§push(§8!;§.§&!"§);
                                                                        }
                                                                        §§goto(addr864);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr848:
                                                                        §§push(LevelParticleManager.§1!'§);
                                                                     }
                                                                     §§goto(addr861);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr844:
                                                                     §§push(this.§]!c§(_loc1_.type));
                                                                  }
                                                                  §§goto(addr848);
                                                               }
                                                               else
                                                               {
                                                                  addr843:
                                                                  §§push(§§pop().particles);
                                                               }
                                                               §§goto(addr844);
                                                               §§goto(addr780);
                                                            }
                                                         }
                                                         addr773:
                                                      }
                                                      §§goto(addr796);
                                                   }
                                                }
                                                §§goto(addr795);
                                             }
                                             §§goto(addr883);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr130);
                                 }
                              }
                              else
                              {
                                 §§push(this.§6f§);
                                 addr575:
                              }
                              §§goto(addr843);
                           }
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr780);
                  }
                  break;
               }
               while(true)
               {
                  §§push(int(§§pop()));
                  if(!_loc21_)
                  {
                     if(!_loc21_)
                     {
                        _loc7_ = §§pop();
                        if(!_loc20_)
                        {
                           continue loop0;
                        }
                        if(!(_loc21_ && _loc3_))
                        {
                           if(!(_loc21_ && _loc1_))
                           {
                              §§goto(addr624);
                           }
                           §§goto(addr833);
                        }
                        §§goto(addr773);
                     }
                     §§goto(addr837);
                  }
                  §§goto(addr882);
                  §§goto(addr595);
               }
            }
            §§goto(addr130);
         }
      }
      
      protected function §]!c§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               if(false)
               {
                  addr42:
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                  }
               }
               else
               {
                  §§push(0);
               }
               §§goto(addr53);
            }
            §§goto(addr42);
         }
         addr53:
         switch(§§pop())
         {
         }
         return §8!;§.§!q§;
      }
      
      public function §7O§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc3_:* = int(this.§!2§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!2§[_loc3_];
            if(_loc5_ || _loc2_)
            {
               §§push(_loc2_.§#j§());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     loop16:
                     while(true)
                     {
                        §§push(this.§;!G§(_loc2_,param1));
                        addr221:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && param1))
                              {
                                 while(true)
                                 {
                                    this.§3P§(_loc3_,false,false,false);
                                 }
                                 addr229:
                              }
                              while(true)
                              {
                              }
                              addr236:
                           }
                           while(true)
                           {
                              addr43:
                              loop8:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc5_ || this)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                addr77:
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      continue loop8;
                                                      §§goto(addr77);
                                                   }
                                                   addr79:
                                                }
                                                continue loop0;
                                             }
                                             continue loop16;
                                          }
                                          addr144:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                this.§3P§(_loc3_,false,true,true);
                                                break loop8;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   continue loop8;
                                                }
                                                addr172:
                                                while(true)
                                                {
                                                   _loc2_.§8!9§(LevelItemSoundResource.§9!%§);
                                                   addr178:
                                                   while(!_loc4_)
                                                   {
                                                      this.§3P§(_loc3_,false,false,false);
                                                      continue loop11;
                                                   }
                                                   §§goto(addr236);
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    addr92:
                                    while(true)
                                    {
                                       _loc2_.update(param1);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop8;
                                       }
                                       addr196:
                                       while(true)
                                       {
                                          §§push(this.§'q§(_loc2_,param1));
                                          addr200:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr79);
                                    }
                                    §§goto(addr178);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc2_.§8!9§(LevelItemSoundResource.§9!%§);
                                    }
                                    addr138:
                                 }
                                 §§goto(addr144);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc2_.§3s§());
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§>!g§(_loc2_));
                              loop1:
                              while(!_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc2_.isReadyToBeRemoved(param1));
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr221);
                     }
                  }
                  §§goto(addr200);
               }
               §§goto(addr221);
            }
            §§goto(addr229);
         }
         if(_loc5_)
         {
            this.§4V§();
         }
      }
      
      private function §0R§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§@P§ = null;
         for each(_loc1_ in this.§&d§)
         {
            if(_loc4_)
            {
               this.§6f§.mLevelEngine.mWorld.§1#§(_loc1_.§^!E§);
            }
         }
      }
      
      public function §[z§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(_loc1_ >= this.§!2§.length)
            {
               return false;
            }
            _loc2_ = this.§!2§[_loc1_];
            if(!(_loc3_ || _loc3_))
            {
               addr77:
               break;
            }
            §§push(_loc2_.explode());
            if(!(_loc3_ || this))
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
            }
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + 1);
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
            }
            §§push(int(§§pop()));
         }
         §§goto(addr77);
         §§push(true);
      }
      
      public function §>!g§(param1:LevelObject) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(Boolean(param1));
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
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_ || param1)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(this.§6f§.§7!%§.§0t§(param1.§8!N§().GetPosition().x,param1.§8!N§().GetPosition().y));
                                          continue loop6;
                                          addr84:
                                          if(_loc2_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             break loop6;
                                          }
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr31:
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          addr79:
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr102:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             continue loop0;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          break loop6;
                                       }
                                       addr157:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr102);
                                 }
                                 addr158:
                              }
                              §§goto(addr59);
                           }
                           continue loop2;
                        }
                        addr112:
                     }
                     §§goto(addr157);
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §3P§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§@P§ = null;
         var _loc7_:§]!Z§ = null;
         if(!_loc13_)
         {
            if(param1 < 0)
            {
               if(!(_loc13_ && param2))
               {
                  §§goto(addr34);
               }
            }
            var _loc5_:LevelObject = this.§!2§[param1];
            if(!_loc13_)
            {
               §§push(_loc5_.§<!#§());
               if(!_loc13_)
               {
                  if(§§pop())
                  {
                     if(!_loc13_)
                     {
                        var _loc8_:*;
                        §§push((_loc8_ = this).§,!&§);
                        if(_loc12_ || param2)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc9_:* = §§pop();
                        if(!_loc13_)
                        {
                           _loc8_.§,!&§ = _loc9_;
                        }
                        if(_loc12_)
                        {
                           addr261:
                           if(_loc5_ == this.§6f§.activeObject)
                           {
                              while(true)
                              {
                                 §§push(this.§6f§);
                                 addr268:
                                 while(true)
                                 {
                                    §§pop().activeObject = null;
                                    addr270:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr266:
                           }
                           while(true)
                           {
                              §§push(param2);
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§6f§);
                                       if(!(_loc13_ && param3))
                                       {
                                          §§push(_loc5_.§>!9§.score);
                                          §§push(ScoreCollector.§'J§);
                                          §§push(true);
                                          §§push(_loc5_.§8!N§().GetPosition().x);
                                          §§push(_loc5_.§8!N§().GetPosition().y);
                                          if(!_loc13_)
                                          {
                                             §§push(3);
                                             if(_loc12_)
                                             {
                                                addr253:
                                                §§push(§§pop() - §§pop());
                                                §§push(§8!;§.§7!i§(_loc5_.§4!W§));
                                             }
                                             §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                             while(true)
                                             {
                                                addr197:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   addr199:
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.addDestructionParticles(_loc5_,this.§6f§.particles);
                                                            addr207:
                                                            while(_loc13_)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                         addr200:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param4);
                                                         addr178:
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr181:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           addr190:
                                                                           while(true)
                                                                           {
                                                                              this.§=<§(_loc5_);
                                                                              addr194:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr190:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr200);
                                                                        }
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  addr181:
                                                               }
                                                               break;
                                                            }
                                                            continue loop22;
                                                         }
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.isTexture());
                                                            if(!(_loc13_ && this))
                                                            {
                                                               if(_loc13_ && param3)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           addr161:
                                                                           while(true)
                                                                           {
                                                                              this.§+![§(_loc5_.sprite);
                                                                              for(; !(_loc13_ && param3); this.§3!B§(_loc5_),if(_loc13_ && this)
                                                                              {
                                                                                 continue;
                                                                              },if(_loc13_)
                                                                              {
                                                                                 continue loop21;
                                                                              },if(_loc12_ || param1)
                                                                              {
                                                                                 while(false)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 _loc8_ = 0;
                                                                                 _loc9_ = this.§&d§;
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc9_,_loc8_));
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   _loc8_ = 0;
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr342:
                                                                                                      _loc9_ = this.§^!'§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      addr406:
                                                                                                   }
                                                                                                   if(!(_loc13_ && param3))
                                                                                                   {
                                                                                                      addr417:
                                                                                                      _loc5_.dispose();
                                                                                                   }
                                                                                                   _loc5_ = null;
                                                                                                   if(_loc12_ || param1)
                                                                                                   {
                                                                                                      this.§!2§[param1] = null;
                                                                                                      do
                                                                                                      {
                                                                                                         this.§!2§.splice(param1,1);
                                                                                                      }
                                                                                                      while(!_loc12_);
                                                                                                      
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr342);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(_loc6_.index1 >= param1)
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   addr292:
                                                                                                   var _loc10_:*;
                                                                                                   var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      _loc10_.index1 = _loc11_;
                                                                                                   }
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr307:
                                                                                                      if(_loc6_.index2 < param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      _loc10_.index2 = _loc11_;
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr307);
                                                                                          }
                                                                                          §§goto(addr292);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§push(_loc7_.id1);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      addr365:
                                                                                                      _loc7_.§9O§ = true;
                                                                                                      if(!(_loc12_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr377:
                                                                                                §§push(_loc7_.id1);
                                                                                                §§push(param1);
                                                                                             }
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(!(_loc13_ && param1))
                                                                                                {
                                                                                                   §§push((_loc10_ = _loc7_).id1);
                                                                                                   if(_loc12_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   _loc11_ = §§pop();
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      _loc10_.id1 = _loc11_;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                 }
                                                                                 addr139:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr270);
                                                                              })
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr181);
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                           addr161:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr266);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr253);
                                       }
                                       break;
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr197);
                              }
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr190);
                  }
                  else
                  {
                     §§push(_loc5_.§+!J§());
                     if(_loc12_ || param3)
                     {
                        if(§§pop())
                        {
                           if(!(_loc13_ && this))
                           {
                              §§push((_loc8_ = this).§>!6§);
                              if(_loc12_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc9_ = §§pop();
                              if(_loc12_ || param1)
                              {
                                 _loc8_.§>!6§ = _loc9_;
                              }
                              if(_loc12_)
                              {
                                 §§goto(addr261);
                              }
                              §§goto(addr196);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr261);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr199);
            }
            §§goto(addr161);
         }
         addr34:
      }
      
      protected function addDestructionParticles(param1:LevelObject, param2:LevelParticleManager) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §+![§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§-R§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,!d§);
                     if(!_loc3_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§%!2§);
                              if(_loc2_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?1§);
                                       if(_loc2_)
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                §§goto(addr159);
                                             }
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                             addr95:
                                             if(_loc2_)
                                             {
                                                §§push(this.§%!2§);
                                                break loop1;
                                             }
                                             continue loop0;
                                          }
                                          if(_loc3_)
                                          {
                                             §§goto(addr102);
                                          }
                                          if(!_loc3_)
                                          {
                                             return;
                                          }
                                          §§goto(addr116);
                                       }
                                       break;
                                    }
                                    §§pop().removeChild(param1);
                                    §§goto(addr60);
                                 }
                                 §§goto(addr95);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           addr102:
                           if(_loc2_)
                           {
                              return;
                              addr104:
                           }
                           else
                           {
                              addr138:
                           }
                           return;
                        }
                        addr116:
                        if(_loc2_ || param1)
                        {
                           §§push(this.§,!d§);
                           break;
                        }
                        addr154:
                        this.§-R§.removeChild(param1);
                        addr159:
                        if(_loc2_ || _loc3_)
                        {
                           §§push(this.§?1§);
                           break loop2;
                        }
                        return;
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr138);
               }
            }
            §§goto(addr154);
         }
         §§goto(addr104);
      }
      
      protected function §=<§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1.§4Y§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr154:
                           while(true)
                           {
                              §§push(param1.§=§());
                              if(_loc2_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 continue;
                              }
                           }
                        }
                        addr153:
                     }
                     else
                     {
                        while(true)
                        {
                           addr84:
                        }
                     }
                     while(§§pop())
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           this.addExplosions(§^!6§.§3!U§,param1.§8!N§().GetPosition().x,param1.§8!N§().GetPosition().y);
                           break;
                        }
                        addr134:
                        addr110:
                        continue loop0;
                     }
                     addr24:
                     return;
                  }
               }
               §§goto(addr153);
            }
         }
         §§goto(addr154);
      }
      
      public function §6T§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§3P§(this.§!2§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§?U§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr54:
               while(true)
               {
                  §§push(-§§pop());
                  addr55:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < this.§!2§.length)
         {
            _loc3_ = this.§!2§[_loc2_] as LevelObject;
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(_loc3_));
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr293:
                           while(true)
                           {
                              §§push(_loc3_.§<!#§());
                              addr240:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr242:
                                 while(!(_loc4_ && this))
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        continue loop2;
                     }
                  }
                  while(_loc5_ || this)
                  {
                     §§goto(addr218);
                  }
               }
            }
            §§goto(addr220);
         }
         return false;
      }
      
      public function §^9§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:LevelObject = null;
         §§push(0);
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§!2§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || param1)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               _loc4_ = this.§!2§[_loc3_] as LevelObject;
               if(_loc5_ || param1)
               {
                  §§push(Boolean(_loc4_));
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
                                    §§push(_loc4_.§<!#§());
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          loop31:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop28:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop29:
                                                while(!§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              continue loop29;
                                                                           }
                                                                           if(_loc6_ && _loc2_)
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§pop();
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.§ get§);
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().mTryToBlink);
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr192:
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_ && param1)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            if(!(_loc5_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(!(_loc5_ || param1))
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop17:
                                                                                                               while(_loc5_)
                                                                                                               {
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_.§ get§);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     §§push(§§pop().mTryToScream);
                                                                                                                     if(!(_loc5_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     addr95:
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc6_ && this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc6_ && this)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           if(!(_loc5_ || this))
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    if(_loc6_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       addr172:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr171:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr55:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr171);
                                                                                                                                       }
                                                                                                                                       §§goto(addr172);
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr55);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           §§goto(addr95);
                                                                                                                        }
                                                                                                                        addr231:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                            }
                                                                                                            addr224:
                                                                                                         }
                                                                                                         §§goto(addr139);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                         }
                                                                                                         addr309:
                                                                                                      }
                                                                                                      while(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr231);
                                                                                                         §§push(_loc4_.§19§);
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§goto(addr224);
                                                                                                }
                                                                                                §§goto(addr192);
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr279:
                                                                              }
                                                                              §§goto(addr139);
                                                                           }
                                                                        }
                                                                        continue loop29;
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                               }
                                                               addr250:
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr55);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr295:
                                    }
                                    §§goto(addr309);
                                 }
                              }
                           }
                           §§goto(addr295);
                        }
                     }
                  }
               }
               §§goto(addr250);
            }
            break;
         }
         return §§pop();
      }
      
      public function §]7§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§!2§)
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§push(_loc1_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc1_ = §§pop();
                           }
                           if(_loc5_)
                           {
                              if(_loc5_ || this)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr155:
                                 while(true)
                                 {
                                 }
                                 addr155:
                              }
                              while(true)
                              {
                                 §§push(_loc2_.§in§());
                                 addr105:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop2;
                                 }
                              }
                           }
                           else
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(_loc2_.§3u§());
                                 if(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    addr65:
                                    if(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop9;
                                       }
                                       continue loop2;
                                    }
                                    addr133:
                                    addr154:
                                    while(_loc5_ || _loc3_)
                                    {
                                       §§pop();
                                       continue loop10;
                                       §§goto(addr65);
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr155);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                              addr141:
                           }
                           §§goto(addr155);
                        }
                        continue loop0;
                        addr79:
                     }
                     §§goto(addr154);
                  }
               }
            }
            §§goto(addr141);
         }
         return _loc1_;
      }
      
      public function §8j§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(!(_loc6_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         for each(_loc2_ in this.§!2§)
         {
            if(_loc5_ || _loc3_)
            {
               §§push(Boolean(_loc2_));
               if(_loc5_ || this)
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§pop();
                        if(_loc6_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(_loc2_.isTexture());
                        if(!(_loc6_ && _loc2_))
                        {
                           addr107:
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        addr111:
                        §§push(_loc1_);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc1_ = §§pop();
                     }
                  }
                  continue;
               }
               §§goto(addr107);
            }
            §§goto(addr111);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc2_:int = this.§!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!2§[_loc2_];
            if(!_loc4_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && param1))
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
                        addr182:
                        while(true)
                        {
                           §§push(_loc3_.§<!#§());
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           while(_loc5_ || _loc3_)
                           {
                              continue loop2;
                              if(_loc5_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr109);
         }
      }
      
      public function §51§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§!2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(_loc2_));
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
                                 §§push(_loc2_.§+!J§());
                                 if(!_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             if(_loc4_ && this)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc4_ && _loc1_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   do
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                      }
                                                      _loc1_ = §§pop();
                                                   }
                                                   while(_loc4_);
                                                   
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§19§ > 0);
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc4_ && this))
                                                            {
                                                               break;
                                                            }
                                                            addr104:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               addr157:
                                                               while(_loc3_ || this)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr165);
                                                }
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr104);
                                                   §§push(true);
                                                }
                                                §§goto(addr165);
                                             }
                                             continue loop0;
                                             addr99:
                                          }
                                       }
                                       continue loop3;
                                       addr122:
                                    }
                                 }
                                 §§goto(addr157);
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                  }
                  if(_loc4_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr99);
               }
            }
            §§goto(addr165);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§!2§.length - 1;
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(!_loc3_)
            {
               §§push(Boolean(_loc2_));
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
                              §§pop();
                              addr349:
                              while(true)
                              {
                                 §§push(_loc2_.§19§);
                                 addr325:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr326:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr327:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                           addr348:
                        }
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(§§pop());
                              loop11:
                              while(!(_loc3_ && _loc2_))
                              {
                                 §§push(Boolean(§§pop()));
                                 loop12:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             §§push(_loc2_.§4i§);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop() == §0!J§.§5!+§);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr41:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop15;
                                                               addr41:
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(_loc2_.§6!;§());
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr349);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                      addr284:
                                                   }
                                                   else
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§[q§());
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              loop21:
                                                                              while(!§§pop())
                                                                              {
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§+!J§());
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   addr309:
                                                                                                }
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                do
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_.§19§);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                     {
                                                                                                                        break loop26;
                                                                                                                     }
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr194:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || _loc2_))
                                                                                                                              {
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              addr259:
                                                                                                                              addr259:
                                                                                                                              if(!(_loc4_ || this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr325);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr326);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                            {
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                            {
                                                                                                               break loop21;
                                                                                                            }
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr41);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr288);
                                                                                                            }
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               while(false)
                                                                                                               {
                                                                                                                  §§goto(addr71);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr69:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   §§goto(addr41);
                                                                                                }
                                                                                                while(!(_loc3_ && _loc3_));
                                                                                                
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              §§goto(addr259);
                                                                              §§push(false);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr284);
                                                                        §§goto(addr41);
                                                                     }
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop10;
                                                               }
                                                               addr292:
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr292);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr286);
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         return true;
      }
      
      public function §>!$§(param1:Boolean = false) : LevelObject
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:LevelObject = null;
         if(_loc7_)
         {
            §§push(this.isPigsAlive());
            if(_loc7_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc8_ && param1))
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§!2§.length;
         §§push(1);
         if(!_loc8_)
         {
            §§push(int(§§pop() + Math.random() * this.§^9§(param1)));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(_loc3_);
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                     if(!_loc8_)
                     {
                        addr74:
                        _loc5_ = §§pop();
                        if(_loc8_ && _loc3_)
                        {
                           break;
                        }
                        do
                        {
                           §§push(_loc5_);
                        }
                        while(!_loc8_);
                        
                        continue loop1;
                        addr372:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc8_ && _loc3_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           continue loop0;
                        }
                        _loc6_ = this.§!2§[_loc5_];
                        if(_loc7_ || _loc2_)
                        {
                           §§push(Boolean(_loc6_));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
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
                                             §§push(_loc6_.§<!#§());
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr346:
                                                while(!_loc8_)
                                                {
                                                }
                                                continue loop4;
                                                addr300:
                                                if(_loc8_ && this)
                                                {
                                                   continue;
                                                }
                                                §§push(!§§pop());
                                                if(_loc7_ || param1)
                                                {
                                                   addr315:
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop19:
                                                         while(_loc7_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc8_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.§ get§);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().mTryToBlink);
                                                                              addr244:
                                                                              addr288:
                                                                              loop24:
                                                                              while(_loc7_ || param1)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       while(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop21;
                                                                                       addr255:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr289:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          addr296:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr112:
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  addr127:
                                                                                                                  _loc5_ = int(§§pop());
                                                                                                                  if(!(_loc8_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!(_loc7_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr372);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(!_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr231:
                                                                                                                                    _loc4_ = int(§§pop() + 1);
                                                                                                                                    addr232:
                                                                                                                                    if(!(_loc7_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§19§);
                                                                                                                                          break loop24;
                                                                                                                                       }
                                                                                                                                       addr353:
                                                                                                                                    }
                                                                                                                                    addr230:
                                                                                                                                 }
                                                                                                                                 §§goto(addr230);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr297:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr300);
                                                                                                                                    }
                                                                                                                                    §§goto(addr315);
                                                                                                                                 }
                                                                                                                                 addr297:
                                                                                                                              }
                                                                                                                              addr212:
                                                                                                                           }
                                                                                                                           addr152:
                                                                                                                           if(_loc4_ >= _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr232);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               §§goto(addr232);
                                                                                                            }
                                                                                                            §§goto(addr152);
                                                                                                         }
                                                                                                         §§goto(addr127);
                                                                                                      }
                                                                                                      §§goto(addr231);
                                                                                                   }
                                                                                                   §§goto(addr112);
                                                                                                }
                                                                                                return _loc6_;
                                                                                                addr98:
                                                                                             }
                                                                                             §§goto(addr297);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                    addr172:
                                                                                    §§push(0);
                                                                                    if(_loc8_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                    }
                                                                                    addr201:
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   break loop25;
                                                                                                }
                                                                                                §§pop();
                                                                                                continue loop23;
                                                                                             }
                                                                                             addr352:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                          §§goto(addr201);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                       addr277:
                                                                                    }
                                                                                    §§goto(addr98);
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr289);
                                                                                 §§goto(addr244);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr339:
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               addr350:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  break loop19;
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr352);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr339);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr350);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr297);
                     }
                     continue;
                  }
                  §§goto(addr74);
               }
               addr394:
               return null;
            }
         }
      }
      
      public function §[!R§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§!2§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(_loc1_);
                              loop2:
                              for(; !(_loc4_ && _loc2_); if(_loc4_ && this)
                              {
                                 continue;
                              },if(_loc4_ && _loc1_)
                              {
                                 continue loop1;
                              },if(!(_loc4_ && _loc1_))
                              {
                                 return §§pop();
                              },§§goto(addr181))
                              {
                                 §§push(this.§6f§.slingshot.§[!R§());
                                 while(true)
                                 {
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       addr230:
                                       §§push(§§pop() + §§pop());
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc4_ && _loc1_)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop()));
                                       loop5:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr209:
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr145:
                                                   _loc1_ = §§pop();
                                                   while(_loc3_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                      §§goto(addr145);
                                                   }
                                                   addr151:
                                                   §§push(_loc2_ - 1);
                                                   break loop2;
                                                   addr210:
                                                   addr146:
                                                }
                                                _loc1_ = §§pop();
                                                §§goto(addr210);
                                             }
                                             §§goto(addr151);
                                          }
                                          addr155:
                                          addr156:
                                          _loc2_ = §§pop();
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                continue loop0;
                                             }
                                             addr233:
                                             if((this.§!2§[_loc2_] as LevelObject).§6!;§())
                                             {
                                                addr181:
                                                §§goto(addr209);
                                                §§push(int(_loc1_ + LevelMain.§<a§.getValue() * int((this.§!2§[_loc2_] as LevelObject).§^V§)));
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr181);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 _loc1_ = int(§§pop());
                                 §§goto(addr233);
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr155);
                                 §§push(int(§§pop()));
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr146);
                     }
                     else
                     {
                        §§push(_loc1_);
                        if(!(_loc4_ && _loc1_))
                        {
                           §§goto(addr230);
                           §§push((this.§!2§[_loc2_] as LevelObject).§>!9§.score);
                        }
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr181);
               }
               §§goto(addr91);
            }
         }
      }
      
      public function §4§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1.§+!J§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
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
                           addr183:
                           while(true)
                           {
                              §§pop();
                              addr184:
                              while(true)
                              {
                                 §§push(param2.§+!J§());
                                 addr167:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr183:
                        }
                        while(true)
                        {
                           loop4:
                           while(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(param1.§>!M§());
                                 loop6:
                                 while(_loc3_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                    loop7:
                                    for(; _loc3_ || param2; if(_loc3_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(true);
                                                      break;
                                                   }
                                                   break loop4;
                                                }
                                                addr174:
                                                loop10:
                                                while(_loc3_)
                                                {
                                                   §§push(param2.§>!M§());
                                                   if(_loc3_)
                                                   {
                                                      addr59:
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(!§§pop());
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop10;
                                                            §§goto(addr59);
                                                         }
                                                         addr160:
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                addr24:
                                                §§push(false);
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr28);
                                             }
                                             §§goto(addr75);
                                          }
                                          §§goto(addr24);
                                       }
                                       return §§pop();
                                       addr99:
                                    })
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                break;
                                             }
                                             continue loop1;
                                             addr75:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   continue loop7;
                                                }
                                                continue loop8;
                                                addr28:
                                                if(!(_loc3_ || param2))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop6;
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr167);
                                             }
                                             continue loop7;
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr173);
                              }
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr184);
                        }
                        addr173:
                        return §§pop();
                     }
                  }
               }
               §§goto(addr183);
            }
         }
         §§goto(addr174);
      }
      
      public function §9e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§>!6§ = 0;
         }
         while(!_loc1_);
         
      }
      
      public function §3!?§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(_loc21_)
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  loop1:
                  while(!_loc20_)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(_loc20_)
                        {
                           continue loop0;
                        }
                        §§push(§§pop());
                        while(true)
                        {
                           if(_loc21_ || _loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc21_ || param2)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             if(!_loc20_)
                                             {
                                                if(!_loc20_)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc21_)
                                                   {
                                                      if(!(_loc20_ && _loc3_))
                                                      {
                                                         §§push(§§pop() == this.§5a§.MIGHTY_EAGLE_WAIT_TIME);
                                                         loop7:
                                                         while(!_loc20_)
                                                         {
                                                            if(_loc21_ || param2)
                                                            {
                                                               if(_loc21_ || this)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc20_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§#j§());
                                                                              if(!_loc20_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc21_ || _loc3_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc21_ || param1)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc21_ || param1)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr223:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr24:
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§4§(param1,param2));
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(false);
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr224:
                                                                                                                                    loop20:
                                                                                                                                    while(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr173:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param2.§#j§());
                                                                                                                                          addr62:
                                                                                                                                          while(_loc20_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                continue loop20;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop17;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr173);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(param1);
                                                                                                                                       §§push(param1.§^V§);
                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * 2);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().applyDamage(§§pop(),true,true,true,false));
                                                                                                                                       loop34:
                                                                                                                                       while(!(_loc20_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          while(_loc20_)
                                                                                                                                          {
                                                                                                                                             loop36:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc21_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§3s§());
                                                                                                                                                      addr343:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop30:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            loop31:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               loop25:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2.§3s§());
                                                                                                                                                                              if(_loc21_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 while(_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc20_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop24;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc20_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr267:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr267);
                                                                                                                                                                           }
                                                                                                                                                                           return §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        addr297:
                                                                                                                                                                        addr254:
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop31;
                                                                                                                                                                     addr310:
                                                                                                                                                                  }
                                                                                                                                                                  loop16:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr348:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param2.§<!#§());
                                                                                                                                                                        addr302:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr319:
                                                                                                                                                               §§push(param2);
                                                                                                                                                               §§push(param2.§^V§);
                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * 2);
                                                                                                                                                               }
                                                                                                                                                               break loop34;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr341:
                                                                                                                                                }
                                                                                                                                                §§goto(addr319);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(true);
                                                                                                                                          break loop1;
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr297);
                                                                                                                                    §§push(true);
                                                                                                                                 }
                                                                                                                                 while(_loc21_)
                                                                                                                                 {
                                                                                                                                    if(_loc21_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          this.mMightyEagleTimer = 0;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          addr90:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr254);
                                                                                                                                    }
                                                                                                                                    §§goto(addr348);
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       addr349:
                                                                                                                                       §§push(Number(10));
                                                                                                                                       break loop6;
                                                                                                                                    }
                                                                                                                                    §§goto(addr59);
                                                                                                                                 }
                                                                                                                                 §§goto(addr294);
                                                                                                                              }
                                                                                                                              §§goto(addr90);
                                                                                                                           }
                                                                                                                           §§goto(addr349);
                                                                                                                        }
                                                                                                                        §§goto(addr62);
                                                                                                                     }
                                                                                                                     §§goto(addr67);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            addr174:
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                          }
                                                                                          continue loop4;
                                                                                          addr142:
                                                                                       }
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 addr132:
                                                                              }
                                                                              §§goto(addr142);
                                                                           }
                                                                        }
                                                                        §§goto(addr24);
                                                                     }
                                                                     addr126:
                                                                  }
                                                                  §§goto(addr132);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr174);
                                          }
                                          var _loc3_:* = §§pop();
                                          §§push(param1.§ do§(param2.§4Y§()));
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(param1.§^_§(param2.§4Y§()));
                                          if(!(_loc20_ && param2))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(param2.§ do§(param1.§4Y§()));
                                          if(_loc21_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          §§push(param2.§^_§(param1.§4Y§()));
                                          if(_loc21_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(param1.§8!N§().GetMass());
                                          if(!(_loc20_ && param2))
                                          {
                                             §§push(param1.§8!N§());
                                             if(!_loc20_)
                                             {
                                                §§push(§§pop().GetLinearVelocity().x);
                                                if(!_loc20_)
                                                {
                                                   addr438:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc20_)
                                                   {
                                                      addr422:
                                                      §§push(param2.§8!N§().GetMass());
                                                      if(_loc21_ || this)
                                                      {
                                                         §§push(§§pop() * param2.§8!N§().GetLinearVelocity().x);
                                                      }
                                                   }
                                                   var _loc8_:Number = §§pop();
                                                   §§push(param1.§8!N§().GetMass());
                                                   if(!(_loc20_ && param1))
                                                   {
                                                      §§push(param1.§8!N§());
                                                      if(!_loc20_)
                                                      {
                                                         §§push(§§pop().GetLinearVelocity().y);
                                                         if(_loc21_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc20_)
                                                            {
                                                               addr468:
                                                               §§push(param2.§8!N§().GetMass());
                                                               if(!_loc20_)
                                                               {
                                                                  addr476:
                                                                  §§push(§§pop() - §§pop() * param2.§8!N§().GetLinearVelocity().y);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(_loc4_);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop() * _loc10_);
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc6_);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop() * _loc10_);
                                                               if(_loc21_ || _loc3_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            var _loc13_:Number = Math.max(0,param1.§19§);
                                                            var _loc14_:Number = Math.max(0,param2.§19§);
                                                            §§push(param1.applyDamage(_loc12_,true,param2.§+!J§(),_loc14_ == param2.§^V§));
                                                            if(!(_loc20_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(param2.applyDamage(_loc11_,true,param1.§+!J§(),_loc13_ == param1.§^V§));
                                                            if(_loc21_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc16_:* = §§pop();
                                                            §§push(false);
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            var _loc17_:* = §§pop();
                                                            if(_loc21_ || param1)
                                                            {
                                                               addr1428:
                                                               if(_loc17_)
                                                               {
                                                                  addr1429:
                                                                  Log.log("--- NEW COLLISION ---");
                                                                  addr1434:
                                                                  §§push(Log);
                                                                  §§push("Mat Dam Factor1 = ");
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(" Mat Dam Factor2 = ");
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc21_)
                                                                              {
                                                                                 addr1370:
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc21_ || param2)
                                                                                    {
                                                                                       addr1381:
                                                                                       §§push(" Mat Vel Factor1 = ");
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc20_ && this))
                                                                                          {
                                                                                             addr1392:
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc20_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr1414:
                                                                                                   §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                   if(!(_loc20_ && this))
                                                                                                   {
                                                                                                      addr1423:
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                }
                                                                                                §§pop().log(§§pop());
                                                                                                addr1426:
                                                                                                §§push(Log);
                                                                                                §§push("Object1: ");
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(§§pop() + param1.§4!W§);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(" force1 = ");
                                                                                                      if(_loc21_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(" obj health1 = ");
                                                                                                                  if(_loc21_ || this)
                                                                                                                  {
                                                                                                                     addr1342:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           addr1344:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr1338:
                                                                                                                              §§push(" new health1 = ");
                                                                                                                           }
                                                                                                                           §§pop().log(§§pop());
                                                                                                                           addr1346:
                                                                                                                           §§push(Log);
                                                                                                                           §§push("Object2: ");
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + param2.§4!W§);
                                                                                                                              if(!(_loc20_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(" force2 = ");
                                                                                                                                 if(_loc21_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr1250:
                                                                                                                                             §§push(" obj health2 = ");
                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr1258:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc20_ && this)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr1283:
                                                                                                                                                      §§pop().log(§§pop() + _loc16_);
                                                                                                                                                      addr1285:
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         addr1192:
                                                                                                                                                         if(_loc15_ <= 0 && _loc12_ != 0)
                                                                                                                                                         {
                                                                                                                                                            addr1173:
                                                                                                                                                            §§push(Number((_loc12_ - _loc13_) / _loc12_));
                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                            {
                                                                                                                                                               _loc18_ = §§pop();
                                                                                                                                                               addr1184:
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr1160:
                                                                                                                                                                  _loc18_ *= _loc7_;
                                                                                                                                                                  addr1159:
                                                                                                                                                                  addr1161:
                                                                                                                                                                  addr1157:
                                                                                                                                                                  addr1158:
                                                                                                                                                                  if(_loc18_ > 1)
                                                                                                                                                                  {
                                                                                                                                                                     addr1145:
                                                                                                                                                                     §§push(Number(1));
                                                                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        addr1111:
                                                                                                                                                                        addr1154:
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr1114:
                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Log);
                                                                                                                                                                                 §§push(param1.§4!W§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + param2.§4!W§);
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + " is ");
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1133:
                                                                                                                                                                                          §§push(§§pop() + _loc18_);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().log(§§pop());
                                                                                                                                                                                    addr1137:
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1065:
                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                       §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                       §§push(param2.§8!N§().GetLinearVelocity().x);
                                                                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1083:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             §§push(param2.§8!N§().GetLinearVelocity().y);
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc18_);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§%h§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                          addr1094:
                                                                                                                                                                                          if(!(_loc20_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc21_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1032:
                                                                                                                                                                                                §§push(Boolean(_loc16_ <= 0));
                                                                                                                                                                                                §§push(Boolean(_loc16_ <= 0));
                                                                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1049:
                                                                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr1057:
                                                                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr966:
                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr969:
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr996:
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1002:
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1011:
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1020:
                                                                                                                                                                                                                                          §§push(Number(§§pop() / §§pop()));
                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                addr1026:
                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         if(_loc21_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr940:
                                                                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr955:
                                                                                                                                                                                                                                                                           _loc19_ = Number(§§pop());
                                                                                                                                                                                                                                                                           if(_loc21_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr875:
                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr883:
                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                 if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr893:
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr904:
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr909:
                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr832:
                                                                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Log);
                                                                                                                                                                                                                                                                                                                     §§push(param2.§4!W§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + param1.§4!W§);
                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                     addr870:
                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr789:
                                                                                                                                                                                                                                                                                                                        §§push(param1);
                                                                                                                                                                                                                                                                                                                        §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                        §§push(param1.§8!N§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr802:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              §§push(param1.§8!N§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§pop().§%h§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                           addr813:
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr664:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr690:
                                                                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr700:
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop() <= §§pop()));
                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr753:
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr640:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1192);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr658);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1192);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr753);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr832);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr700);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr640);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr690);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr664);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1161);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr909);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr870);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr813);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr996);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr658:
                                                                                                                                                                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1192);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1032);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1049);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr996);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr753);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr883);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1011);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1020);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr955);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr875);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1285);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1094);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr802);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1026);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr955);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr870);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr789);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1111);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1137);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1002);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1020);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1145);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1346);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr832);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1192);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1159);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1057);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1157);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1159);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr955);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1158);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1002);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1011);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1173);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1160);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr940);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1195);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1173);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1154);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1026);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr664);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1428);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr996);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1195);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1032);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1145);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1114);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1195);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr996);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1192);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1429);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1184);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1083);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1145);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1133);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1196);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1065);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1192);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1173);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1111);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1426);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1192);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1032);
                                                                                                                                                         addr1287:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1434);
                                                                                                                                                      addr1282:
                                                                                                                                                      addr1281:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1282);
                                                                                                                                                }
                                                                                                                                                §§push(" new health2 = ");
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc21_ || this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1281);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1283);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1258);
                                                                                                                              }
                                                                                                                              §§goto(addr1250);
                                                                                                                           }
                                                                                                                           §§goto(addr1283);
                                                                                                                        }
                                                                                                                        addr1343:
                                                                                                                        §§goto(addr1344);
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr1343);
                                                                                                                     §§push(_loc15_);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr1344);
                                                                                                               }
                                                                                                               §§goto(addr1342);
                                                                                                            }
                                                                                                            §§goto(addr1343);
                                                                                                         }
                                                                                                         §§goto(addr1344);
                                                                                                      }
                                                                                                      §§goto(addr1342);
                                                                                                   }
                                                                                                   §§goto(addr1344);
                                                                                                }
                                                                                                §§goto(addr1338);
                                                                                             }
                                                                                             §§goto(addr1423);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1414);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1423);
                                                                              }
                                                                              §§goto(addr1392);
                                                                           }
                                                                           §§goto(addr1414);
                                                                        }
                                                                        §§goto(addr1370);
                                                                     }
                                                                     §§goto(addr1423);
                                                                  }
                                                                  §§goto(addr1381);
                                                               }
                                                               §§goto(addr1192);
                                                            }
                                                            §§goto(addr1287);
                                                         }
                                                         §§goto(addr476);
                                                      }
                                                   }
                                                   §§goto(addr468);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc21_)
                                                {
                                                }
                                                §§goto(addr438);
                                             }
                                             §§goto(addr422);
                                          }
                                          §§goto(addr438);
                                       }
                                       §§goto(addr302);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr270);
                           if(_loc20_ && param1)
                           {
                              continue;
                           }
                           if(_loc21_)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr170);
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr278);
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr341);
            }
         }
         §§goto(addr319);
      }
      
      public function §"!b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§!2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_ == null);
               if(_loc3_ || _loc2_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§pop();
                                 addr142:
                                 while(true)
                                 {
                                    addr80:
                                    do
                                    {
                                       §§push(_loc2_.§<!#§());
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    while(_loc3_);
                                    
                                    continue loop1;
                                 }
                              }
                              addr141:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§3P§(_loc1_,true,true,true);
                                    while(!_loc4_)
                                    {
                                       _loc1_ = §§pop();
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(_loc3_)
                                          {
                                             addr78:
                                             while(false)
                                             {
                                                §§goto(addr80);
                                             }
                                             continue loop0;
                                             addr78:
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc3_ || _loc1_)
                                    {
                                       addr57:
                                       §§push(int(§§pop()));
                                    }
                                    §§goto(addr68);
                                 }
                                 §§goto(addr57);
                              }
                              §§goto(addr78);
                           }
                        }
                        addr136:
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr78);
         }
      }
      
      public function §"! §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§!2§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(_loc3_)
            {
               §§push(_loc2_ == null);
               if(_loc3_ || _loc3_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc3_ || _loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr147:
                           while(true)
                           {
                              addr82:
                              while(true)
                              {
                                 §§push(_loc2_.§=§());
                                 if(_loc3_ || this)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        addr146:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§3P§(_loc1_,true,true,true);
                              addr106:
                              while(true)
                              {
                              }
                           }
                           addr99:
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr57:
                                 §§push(int(§§pop()));
                              }
                              _loc1_ = §§pop();
                              if(!_loc4_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr57);
                        }
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr147);
                     }
                     continue loop0;
                  }
                  §§goto(addr146);
               }
            }
            §§goto(addr147);
         }
      }
      
      public function §'g§() : int
      {
         return this.§!2§.length;
      }
      
      public function §+!C§(param1:LevelModel) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc5_:§^!g§ = null;
         var _loc6_:§&D§ = null;
         var _loc7_:§@P§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc9_ || _loc2_)
            {
               if(§§pop() >= this.§!2§.length)
               {
                  §§push(Number(0));
                  break;
               }
               _loc4_ = this.§!2§[_loc2_];
               if(!_loc8_)
               {
                  §§push(_loc4_.§'!M§);
                  if(_loc9_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(!(_loc8_ && this))
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              addr73:
                           }
                        }
                        else
                        {
                           addr65:
                           if(_loc4_.isGround())
                           {
                              if(_loc8_ && param1)
                              {
                                 continue;
                              }
                              §§goto(addr73);
                           }
                           else
                           {
                              _loc5_ = new §^!g§();
                              if(_loc9_ || _loc3_)
                              {
                                 _loc5_.angle = _loc4_.§=W§();
                                 while(true)
                                 {
                                    _loc5_.id = _loc4_.§4!W§;
                                    addr140:
                                    while(true)
                                    {
                                       _loc5_.x = _loc4_.§8!N§().GetPosition().x;
                                       addr134:
                                       while(true)
                                       {
                                          _loc5_.y = _loc4_.§8!N§().GetPosition().y;
                                       }
                                    }
                                 }
                                 addr145:
                              }
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    _loc5_.uniqueID = _loc4_.uniqueID;
                                    while(_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          param1.addObject(_loc5_);
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                          if(_loc8_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc9_)
                                          {
                                             if(true)
                                             {
                                                break loop5;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr134);
                                       }
                                       else
                                       {
                                          §§goto(addr145);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                              }
                           }
                        }
                        §§push(_loc2_);
                        if(_loc9_)
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                        continue;
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr73);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            while(_loc3_ < this.§&d§.length)
            {
               _loc7_ = this.§&d§[_loc3_];
               _loc6_ = new §&D§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§4!Q§,_loc7_.§5J§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§=E§,_loc7_.motorSpeed,_loc7_.§8!&§,_loc7_.maxTorque);
               if(_loc9_)
               {
                  param1.§1u§(_loc6_);
                  if(_loc8_ && this)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() + 1);
                  if(_loc9_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §2F§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(this.§!2§.length <= _loc1_)
            {
               if(_loc2_ || this)
               {
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
               }
               else
               {
                  addr65:
                  if(!(_loc3_ && this))
                  {
                     continue;
                  }
                  addr91:
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr102:
                        §§push(int(§§pop()));
                     }
                     _loc1_ = §§pop();
                     continue;
                     addr104:
                  }
                  §§goto(addr102);
               }
               §§goto(addr104);
            }
            else if(!this.§!2§[_loc1_].isGround())
            {
               this.§6T§(this.§!2§[_loc1_]);
               §§goto(addr65);
            }
            §§goto(addr91);
         }
      }
      
      public function §?!]§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || this)
            {
               if(!(_loc6_ && this))
               {
                  if(§§pop() >= this.§!2§.length)
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && param2))
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              §§push(_loc4_);
                              addr69:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc5_ || param1)
                                 {
                                    addr78:
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                    }
                                    addr78:
                                 }
                                 §§goto(addr78);
                              }
                           }
                           addr113:
                           loop1:
                           while(true)
                           {
                              _loc3_.push(this.§!2§[_loc4_]);
                              continue loop2;
                              addr79:
                              while(!(_loc5_ || param1))
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr79);
                  }
                  else if(this.§!2§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr113);
                  }
                  §§goto(addr67);
               }
               §§goto(addr69);
            }
            §§goto(addr78);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§6!P§ = param1;
            if(!_loc4_)
            {
               this.§>!E§(param1);
            }
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() >= this.§!2§.length)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && param1))
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        addr111:
                        this.§!2§[_loc2_].sprite.visible = !this.§6!P§;
                     }
                  }
                  else if(this.§!2§[_loc2_].isTexture())
                  {
                     §§goto(addr111);
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() + 1);
               if(_loc3_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"§ = param1;
         }
      }
      
      public function §&5§() : Boolean
      {
         return this.§<"§;
      }
      
      public function §;!h§() : int
      {
         return this.§=!O§;
      }
      
      public function §8a§() : int
      {
         return this.§,!&§;
      }
      
      public function § x§(param1:String) : LevelObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         §§push(0);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < this.§!2§.length)
         {
            _loc3_ = this.§!2§[_loc2_] as LevelObject;
            if(_loc5_ || _loc3_)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!(_loc4_ && this))
                  {
                     return _loc3_;
                  }
               }
            }
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
         return null;
      }
   }
}
