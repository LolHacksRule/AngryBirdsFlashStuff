package §2!H§
{
   import §"L§.LevelModel;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&V§.§38§;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7i§.Texture;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot
   {
      
      public static const §%l§:int = 0;
      
      public static const §&!+§:int = 1;
      
      public static const §"o§:int = 2;
      
      public static const §71§:int = 3;
      
      public static const §=!3§:int = 5;
      
      public static const §3!4§:int = 3151368;
      
      protected static const §@N§:int = 8;
      
      protected static const §0!F§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §2j§:Number = -0.7;
      
      protected static const §+Q§:Number = 0;
      
      protected static var §7!I§:Texture;
      
      public static const §-%§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%l§ = 0;
            loop0:
            while(true)
            {
               §&!+§ = 1;
               loop1:
               while(true)
               {
                  §"o§ = 2;
                  while(true)
                  {
                     §71§ = 3;
                     loop3:
                     while(!(_loc1_ && _loc1_))
                     {
                        §=!3§ = 5;
                        while(true)
                        {
                           §3!4§ = 3151368;
                           continue loop1;
                           loop9:
                           for(; !(_loc1_ && LevelSlingshot); while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §+Q§ = 0;
                                 while(_loc2_)
                                 {
                                    continue loop0;
                                    §-%§ = 0.4;
                                    if(!(_loc2_ || LevelSlingshot))
                                    {
                                       continue;
                                    }
                                    §§goto(addr35);
                                 }
                                 continue;
                              }
                              continue loop9;
                           },continue loop1)
                           {
                              if(_loc1_)
                              {
                                 continue loop3;
                              }
                              BIRD_LAUNCH_FORCE_GREEN = 52.5;
                              while(_loc2_)
                              {
                                 §2j§ = -0.7;
                                 continue loop9;
                                 if(_loc2_ || _loc2_)
                                 {
                                    return;
                                 }
                              }
                              while(!_loc1_)
                              {
                                 while(true)
                                 {
                                    BIRD_LAUNCH_FORCE = 46.25;
                                    continue loop9;
                                 }
                              }
                              while(true)
                              {
                                 §0!F§ = 0;
                                 §§goto(addr106);
                              }
                              addr106:
                           }
                        }
                     }
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr108);
      }
      
      public var §"!>§:LevelMain;
      
      public var §`!%§:Number;
      
      public var §else§:Number;
      
      public var §'0§:Number;
      
      protected var §>A§:Number;
      
      protected var §@!1§:Number;
      
      protected var §'?§:Number;
      
      protected var §,m§:Number;
      
      public var §'H§:Number;
      
      public var §0!%§:Boolean = false;
      
      protected var §+8§:Number;
      
      public var §#P§:Vector.<LevelSlingshotObject>;
      
      public var §@A§:int;
      
      public var §5C§:int;
      
      public var §@!_§:Number;
      
      public var §^x§:Sprite;
      
      public var get:int = 0;
      
      public var §6a§:Number = 0;
      
      public var §%!O§:Array;
      
      public var §?!i§:Array;
      
      public var mSlingShotState:int;
      
      public var §=P§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §"8§:Boolean = false;
      
      public var §]§:Number;
      
      protected var §'6§:Sprite;
      
      protected var §[2§:§3x§;
      
      protected var §,!i§:§3x§;
      
      protected var §?0§:Sprite;
      
      protected var §+v§:Sprite;
      
      protected var §^H§:Sprite;
      
      protected var §@!$§:§-m§;
      
      protected var §4!$§:§-m§;
      
      private var §<2§:Number = 0;
      
      private var §+X§:int = 0;
      
      protected var §#!;§:Number = -0.7;
      
      protected var §#f§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:§38§ = null;
         if(_loc6_ || this)
         {
            this.§#P§ = new Vector.<LevelSlingshotObject>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§"!>§ = param1;
                  addr76:
                  if(_loc6_ || param1)
                  {
                     this.setPosition(param2.§7a§,param2.§<7§);
                     loop5:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§>!X§();
                           continue loop5;
                           addr42:
                           if(!(_loc6_ || param2))
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           while(_loc4_ < param2.§8!c§)
                           {
                              _loc5_ = param2.§65§(_loc4_);
                              if(_loc6_)
                              {
                                 this.§[!?§(_loc5_.id,_loc5_.x,_loc5_.y);
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc4_);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc4_ = §§pop();
                           }
                           if(!_loc7_)
                           {
                              this.§+X§ = this.§<o§();
                              if(_loc6_ || param1)
                              {
                                 this.§@A§ = 0;
                                 loop18:
                                 while(true)
                                 {
                                    if(this.§#P§.length > 0)
                                    {
                                       this.§'L§(§%l§);
                                       loop19:
                                       while(true)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                this.§]§ = 0;
                                                addr258:
                                                loop11:
                                                while(true)
                                                {
                                                   this.§<!i§();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.update(0,true);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr237:
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               this.§7C§();
                                                               while(!_loc7_)
                                                               {
                                                                  this.updateAnimations(0);
                                                                  if(!(_loc6_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc6_ || param3))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        return;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  addr298:
                                                                  while(true)
                                                                  {
                                                                     §§push(Log);
                                                                     §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        §§push(this.§`!%§);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr337:
                                                                              §§push(§§pop() + " ");
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(this.§else§);
                                                                              }
                                                                              §§pop().log(§§pop());
                                                                              break loop13;
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            addr275:
                                                            while(true)
                                                            {
                                                               this.§'L§(§71§);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr291:
                                                            while(true)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§'L§(§71§);
                                                         §§goto(addr291);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr298);
                                 }
                                 addr181:
                              }
                              §§goto(addr258);
                           }
                           while(true)
                           {
                              if(!(_loc6_ || param1))
                              {
                                 continue loop5;
                              }
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(_loc6_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc4_ = §§pop();
                              if(_loc7_ && param3)
                              {
                                 continue;
                              }
                              §§goto(addr42);
                           }
                           while(true)
                           {
                              this.§'6§ = param3;
                              §§goto(addr97);
                           }
                           §§goto(addr181);
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc6_ || this)
                           {
                              §§goto(addr76);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!param2)
                                 {
                                    Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                                    break;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr275);
                              addr97:
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<2§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§@A§ < this.§#P§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§#P§.length > 0)
            {
               this.§>!M§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§#P§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§'6§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§'6§);
                           addr115:
                           while(true)
                           {
                              §§pop().dispose();
                              addr117:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 this.§'6§ = null;
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr71:
                           loop5:
                           while(true)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue loop3;
                              }
                              if(_loc1_ && _loc2_)
                              {
                                 continue loop1;
                              }
                              this.§%!O§ = null;
                              while(true)
                              {
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    break loop5;
                                 }
                                 this.§?!i§ = null;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_ && _loc1_)
                                       {
                                          break;
                                       }
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          return;
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr117);
                        }
                     }
                     while(true)
                     {
                        this.§^x§ = null;
                        §§goto(addr71);
                        §§goto(addr90);
                     }
                     continue;
                  }
                  §§goto(addr115);
               }
            }
         }
      }
      
      public function §;!<§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = this.§[!?§(param1,param2,param3,param4);
         if(_loc6_)
         {
            _loc5_.§&#§();
         }
         return _loc5_;
      }
      
      protected function §[!?§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param2))
         {
            if(param4 >= 0)
            {
               this.§#P§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§^x§.addChild(_loc5_.sprite);
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        addr87:
                        while(true)
                        {
                           this.§#P§.push(_loc5_);
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr87);
         }
         addr72:
         return _loc5_;
      }
      
      public function §'L§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§%l§);
                  addr291:
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     while(true)
                     {
                        §§push(§&!+§);
                        addr276:
                        addr277:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop1;
                        }
                        addr277:
                        this.§use§();
                        addr280:
                        this.§@!_§ = 0;
                        addr256:
                        if(!_loc2_)
                        {
                           addr24:
                           this.mDragging = false;
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr24);
                                          addr285:
                                       }
                                       return;
                                       addr43:
                                    }
                                    §§goto(addr256);
                                 }
                                 addr155:
                                 if(this.mDragging)
                                 {
                                    addr158:
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             this.mDragging = false;
                                             addr167:
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                this.§"8§ = false;
                                                this.§use§();
                                                addr116:
                                                if(!_loc2_)
                                                {
                                                   this.§#P§[this.§@A§].setPosition(this.§'?§ - this.§#P§[this.§@A§].radius * Math.cos(this.§6a§ / (180 / Math.PI)),this.§,m§ + this.§#P§[this.§@A§].radius * Math.sin(this.§6a§ / (180 / Math.PI)));
                                                   addr107:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr24);
                                                      }
                                                      this.§@!_§ = 2000;
                                                      addr179:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§goto(addr24);
                                                      }
                                                      addr206:
                                                      if(_loc3_)
                                                      {
                                                         this.§use§();
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr167);
                                                addr123:
                                             }
                                             this.§@!_§ = 1000;
                                             §§goto(addr285);
                                             addr295:
                                          }
                                          addr244:
                                          if(_loc3_ || _loc3_)
                                          {
                                             this.§"8§ = false;
                                             this.§use§();
                                             addr225:
                                          }
                                          break loop2;
                                       }
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             §§goto(addr24);
                                          }
                                          addr241:
                                          this.§@!_§ = 10000;
                                          §§goto(addr244);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr179);
                                 }
                                 this.§use§();
                                 addr50:
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr24);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr277);
                     }
                  }
                  this.§use§();
                  §§goto(addr295);
               }
            }
         }
         §§goto(addr43);
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§"!>§;
      }
      
      public function §^G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mSlingShotState == §71§);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  §§goto(addr49);
               }
               §§goto(addr68);
            }
            addr49:
            §§push(§§pop());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  §§pop();
                  addr57:
                  §§push(this.§@!_§ <= 0);
                  if(_loc2_ || this)
                  {
                     addr68:
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr68);
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      private function §>!X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§;K§ = _loc1_.getFrame(0);
         var _loc3_:§;K§ = _loc1_.getFrame(1);
         if(_loc5_ || _loc1_)
         {
            this.§@!$§ = new §-m§(_loc2_.texture);
            while(true)
            {
               §§push(this.§@!$§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr289:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr101);
               }
               §§goto(addr68);
               addr154:
            }
         }
         §§goto(addr154);
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§"!>§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §[,§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_ || _loc3_)
         {
            this.§>A§ = this.§`!%§;
            loop0:
            while(true)
            {
               addr68:
               while(true)
               {
                  this.§@!1§ = this.§else§;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§+8§ = §&!U§.§>U§;
            if(!(_loc2_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr68);
            }
            §§goto(addr73);
         }
         _loc1_ = null;
      }
      
      protected function §@!"§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            if(!§7!I§)
            {
               if(_loc3_)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!_loc4_)
                  {
                     §7!I§ = this.§"!>§.textureManager.getTextureFromBitmapData(_loc2_);
                  }
               }
               addr48:
               var _loc1_:§-m§ = new §-m§(§7!I§);
               if(!(_loc4_ && _loc1_))
               {
                  _loc1_.rotation = Math.PI;
                  loop0:
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     loop1:
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        while(true)
                        {
                           this.§^H§.addChild(_loc1_);
                           loop3:
                           while(true)
                           {
                              this.§?0§ = new Sprite();
                              while(true)
                              {
                                 this.§[2§ = new §3x§(2,2,§3!4§);
                                 while(_loc3_ || _loc1_)
                                 {
                                    continue loop0;
                                    while(_loc3_ || _loc1_)
                                    {
                                       continue loop3;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc4_)
                                          {
                                             return;
                                             addr86:
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                           loop8:
                           while(_loc3_ || _loc1_)
                           {
                              while(true)
                              {
                                 this.§+v§.addChild(this.§,!i§);
                                 if(!_loc3_)
                                 {
                                    continue loop8;
                                 }
                                 if(!_loc4_)
                                 {
                                    §§goto(addr77);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr86);
                           }
                        }
                     }
                  }
               }
               §§goto(addr113);
            }
            this.§^H§ = new Sprite();
         }
         §§goto(addr48);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§,m§);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() / LevelMain.§8N§);
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§'?§);
         if(_loc6_ || param1)
         {
            §§push(§§pop() / LevelMain.§8N§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(!_loc7_)
         {
            §§push(8);
            §§push(this.§+8§);
            if(_loc6_)
            {
               §§push(this.§'H§);
               if(!(_loc7_ && _loc2_))
               {
                  addr83:
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(this.§+8§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(_loc6_)
                  {
                     addr88:
                     var _loc4_:Number = §§pop();
                     if(_loc6_ || _loc2_)
                     {
                        §§push(this.§^H§);
                        while(true)
                        {
                           §§push(_loc3_);
                           while(true)
                           {
                              §§pop().x = §§pop();
                              if(_loc6_)
                              {
                                 §§push(this.§^H§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr566:
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop2;
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr636);
                        }
                     }
                     §§goto(addr530);
                  }
                  §§goto(addr88);
               }
               §§push(§§pop() / §§pop());
            }
            §§goto(addr83);
         }
         §§goto(addr88);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§#P§.length > 0)
            {
               this.§>!M§(0,true);
               continue;
            }
            loop1:
            while(true)
            {
               this.§<^§();
               while(_loc2_)
               {
                  this.§[!?§("BIRD_SARDINE",this.§`!%§,this.§else§);
                  while(_loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§'L§(§"o§);
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      protected function §<^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            SoundEngine.§9!X§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'L§(§=!3§);
         }
      }
      
      public function §use§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push(this.§>A§);
            §§push(this.§@!1§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§+8§);
               if(_loc1_ || this)
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!_loc10_)
         {
            §§push(this.§'?§);
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr1442:
                                    loop192:
                                    while(true)
                                    {
                                       §§push(this.§,m§);
                                       addr1416:
                                       while(true)
                                       {
                                          §§push(param2);
                                          addr1417:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr1418:
                                             while(_loc9_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             continue loop192;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§'H§ = Math.sqrt((param2 - this.§@!1§) * (param2 - this.§@!1§) + (param1 - this.§>A§) * (param1 - this.§>A§));
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§'H§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§+8§);
                                                loop12:
                                                while(!(_loc10_ && this))
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         while(_loc9_ || this)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§>A§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+8§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(param1);
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>A§);
                                                                           addr1311:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr1312:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr1313:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§'H§);
                                                                                    addr1315:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr1309:
                                                                     }
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              param1 = §§pop();
                                                                              loop25:
                                                                              while(!_loc10_)
                                                                              {
                                                                                 §§push(this.§@!1§);
                                                                                 loop26:
                                                                                 for(; !_loc10_; if(_loc10_ && param3)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr636),§§push(Number(§§pop())))
                                                                                 {
                                                                                    §§push(this.§+8§);
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§@!1§);
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§'H§);
                                                                                                   addr820:
                                                                                                   if(_loc10_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc5_);
                                                                                                   loop106:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop107:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() > §§pop());
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop108:
                                                                                                            for(; !(_loc10_ && param1); while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ || this))
                                                                                                               {
                                                                                                                  continue loop108;
                                                                                                               }
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ || param1))
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                                  §§goto(addr232);
                                                                                                               }
                                                                                                               §§goto(addr1038);
                                                                                                               §§goto(addr35);
                                                                                                            },§§goto(addr469))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop188:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc10_ && param3)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop189:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop109:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop110:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6a§);
                                                                                                                                                   loop111:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-90);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr657:
                                                                                                                                                            if(_loc9_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr667:
                                                                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 loop112:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          loop113:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                loop179:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         loop180:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop15;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                                                                           loop182:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§+8§);
                                                                                                                                                                                                                              loop183:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                 if(!(_loc10_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       loop118:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Math.abs(this.§6a§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                             loop119:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   loop120:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                      loop121:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               loop123:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     loop124:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                                                                        addr798:
                                                                                                                                                                                                                                                                        loop125:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1424:
                                                                                                                                                                                                                                                                              §§push(true);
                                                                                                                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(this.§>A§);
                                                                                                                                                                                                                                                                           if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop11;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           loop138:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr619:
                                                                                                                                                                                                                                                                                 if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop53:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                    loop54:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(4);
                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             loop55:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                                addr1167:
                                                                                                                                                                                                                                                                                                while(!_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                   while(_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(2);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                         addr1158:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            addr1159:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr1160:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                  addr1134:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                     addr1135:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                        addr1136:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                           break loop180;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr657);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                      break loop110;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                loop39:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this.§6a§ = Math.atan2(-(this.§,m§ - this.§@!1§),this.§'?§ - this.§>A§);
                                                                                                                                                                                                                                                                                                   loop40:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                      §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                      if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§6a§ = §§pop();
                                                                                                                                                                                                                                                                                                      loop41:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.mDragging);
                                                                                                                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(false);
                                                                                                                                                                                                                                                                                                            addr1208:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  loop44:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1217:
                                                                                                                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                                                                                                                     if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + this.§#!;§);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().§'?§ = §§pop();
                                                                                                                                                                                                                                                                                                                     loop45:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + this.§#f§);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().§,m§ = §§pop();
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           this.§6a§ = -160;
                                                                                                                                                                                                                                                                                                                           addr1193:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           loop151:
                                                                                                                                                                                                                                                                                                                           while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 this.§,m§ = param2;
                                                                                                                                                                                                                                                                                                                                 loop152:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc10_ && this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop151;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop110;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    loop153:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                       addr249:
                                                                                                                                                                                                                                                                                                                                       addr513:
                                                                                                                                                                                                                                                                                                                                       loop154:
                                                                                                                                                                                                                                                                                                                                       while(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                                                             if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr267:
                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(0.45);
                                                                                                                                                                                                                                                                                                                                                         loop155:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop113;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop119;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                     loop156:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 continue loop152;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§0!%§);
                                                                                                                                                                                                                                                                                                                                                                              while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          continue loop189;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr212:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop108;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             loop163:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop152;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         this.§8!d§();
                                                                                                                                                                                                                                                                                                                                                                                                         loop164:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop125;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  this.§0!%§ = false;
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop164;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr81:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           loop149:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr523:
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    this.§'H§ = _loc8_;
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr405:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             this.§'?§ = param1;
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop151;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1275:
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                this.§'?§ = param1;
                                                                                                                                                                                                                                                                                                                                                                                                                                                break loop149;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr405);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       loop169:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             this.§'?§ = param1;
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                this.§,m§ = param2;
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr926:
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop153;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr931:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   this.§'H§ = Math.sqrt((this.§,m§ - this.§@!1§) * (this.§,m§ - this.§@!1§) + (this.§'?§ - this.§>A§) * (this.§'?§ - this.§>A§));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   break loop25;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1348:
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop169;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr996:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr396:
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1160);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr81);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              this.§,m§ = param2;
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr523);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr516:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr926);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr396);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop54;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop154;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop24;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§+8§);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop155;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1081:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1088:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§@!1§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§@!1§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr960:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break loop155;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr947:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1143);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1130:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1007:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1298:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  break loop111;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1104);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                               break loop138;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1087:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1101);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1084:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1417);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1076:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr140:
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop156;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr147);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr964:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr996);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr995:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1087);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1108);
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr979:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1312);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1075:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1076);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr962:
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1021:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          break loop108;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr979);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr888:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1108);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           while(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr888);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                                                                                                                                                                                                                           addr880:
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr416:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr419:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr563);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr419);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr551:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop112;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr431:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§@!1§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr608:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       loop142:
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop183;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§'H§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop124;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop138;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr636:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop111;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop123;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop142;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop106;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr140);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr818:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1072:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1075);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1311);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1106);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1060:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr820);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr817:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1315);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr817);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr816:
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr267);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1135);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop138;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop121;
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr608:
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr960);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop113;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr431);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr563:
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr469);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr608);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr477);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr931);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr72);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                                                                                                                                                                                                                                  addr232:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     break loop164;
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1043:
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.§>A§);
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr1039:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§6a§);
                                                                                                                                                                                                                                                                                                                                                                                                                     while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                        while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr816);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1015);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1007);
                                                                                                                                                                                                                                                                                                                                                                                                                     addr809:
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1442);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            this.§'H§ = this.§+8§;
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1275);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr179:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  break loop163;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr54);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr648:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1217);
                                                                                                                                                                                                                                                                                                                                                                                                         addr347:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr416);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr179);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr54);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop188;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr212);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop188;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr917);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr477);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1021);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1080);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr958);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr962);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                                                                                                                         addr961:
                                                                                                                                                                                                                                                                                                                                                         addr284:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr818);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr611);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr451);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr327);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr480);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop182;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                          §§goto(addr516);
                                                                                                                                                                                                                                                                                                                                          §§goto(addr249);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop182;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(12);
                                                                                                                                                                                                                                                                                                                  addr1186:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1187);
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     break loop54;
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
                                                                                                                                                                                                                                                                                          addr1183:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1193);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1172:
                                                                                                                                                                                                                                                                                    while(_loc9_ || param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                                                                                                                       §§goto(addr1183);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1186);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr995);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              param2 = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr1300);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr947);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr583:
                                                                                                                                                                                                                                                               if(_loc10_ && param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop179;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr599:
                                                                                                                                                                                                                                                                  if(_loc9_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr608);
                                                                                                                                                                                                                                                                     §§push(this.§'H§);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1297:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr599);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1297:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1298);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1081);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1070);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr964);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1297);
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1309);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1311);
                                                                                                                                                                                                                                             addr779:
                                                                                                                                                                                                                                             addr1294:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr950);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop183;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr760:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr779);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr246);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr743:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop109;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1141);
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               break loop189;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1424);
                                                                                                                                                                                                         addr734:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1324:
                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                addr723:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr961);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop107;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1313);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1107);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr760);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr723);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1105);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr815);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1157);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr812);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1043);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1019);
                                                                                                                                                      §§goto(addr667);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1088);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1172);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1129:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          §§goto(addr1130);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr867:
                                                                                                                                 }
                                                                                                                                 §§goto(addr743);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr914);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_ || param3)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr1129);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr1038:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr880);
                                                                                                                                          §§push(this.§'H§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1039);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1037:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr1140);
                                                                                                                        }
                                                                                                                        §§goto(addr1208);
                                                                                                                     }
                                                                                                                     §§goto(addr915);
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ || param3)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr1037);
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr1110);
                                                                                                            }
                                                                                                            §§goto(addr1136);
                                                                                                         }
                                                                                                         §§goto(addr867);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1294);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1416);
                                                                              }
                                                                              §§goto(addr1324);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1348);
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   §§goto(addr1265);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr1424);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1442);
      }
      
      protected function §8!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            SoundEngine.§9!X§("SlingshotStreched");
         }
      }
      
      public function §3T§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            §§push(this.§`!%§);
            §§push(this.§else§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().setPosition(§§pop(),§§pop());
         }
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§`!%§);
            if(!(_loc6_ && param3))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               this.§`!%§ = param1;
            }
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() - this.§else§);
               if(!(_loc6_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && this))
            {
               this.§else§ = param2;
               while(true)
               {
                  §§push(this);
                  §§push(this.§'0§);
                  if(_loc7_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§'0§ = §§pop();
                  addr79:
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§@!1§);
               if(_loc7_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§@!1§ = §§pop();
               loop2:
               while(_loc7_)
               {
                  §§push(this);
                  §§push(this.§,m§);
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§,m§ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§>A§);
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§>A§ = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§'?§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§'?§ = §§pop();
                        while(!_loc6_)
                        {
                           if(param3)
                           {
                              continue loop3;
                           }
                           addr64:
                           while(true)
                           {
                              this.§=P§ = true;
                              if(_loc7_ || param3)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr79);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr30);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§#P§[this.§@A§];
         §§push(this.§'H§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() / this.§+8§);
            if(_loc5_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  addr68:
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§push(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc5_)
                           {
                              addr112:
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                                 _loc1_ = §§pop();
                                 addr116:
                                 §§push(_loc1_);
                                 if(!(_loc4_ && this))
                                 {
                                    addr124:
                                    §§push(§§pop() * _loc3_);
                                 }
                              }
                              §§goto(addr124);
                           }
                           else
                           {
                              addr104:
                              §§push(Number(§§pop()));
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§goto(addr112);
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr116);
                  }
                  else
                  {
                     §§push(LevelSlingshot.BIRD_LAUNCH_FORCE);
                     if(!_loc4_)
                     {
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr116);
         }
         §§goto(addr68);
      }
      
      public function §?!#§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LevelSlingshotObject = null;
         if(!_loc2_)
         {
            if(this.§#P§.length > this.§@A§)
            {
               if(!(_loc2_ && this))
               {
                  addr55:
                  _loc1_ = this.§#P§[this.§@A§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr55);
      }
      
      public function § case§() : Point
      {
         return new Point(this.§>A§,this.§@!1§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(_loc5_ || param1)
         {
            this.§=!F§(param1);
            loop0:
            while(true)
            {
               if(this.§=P§)
               {
                  loop1:
                  while(true)
                  {
                     this.updateAnimations(param1);
                     addr113:
                     addr97:
                     while(true)
                     {
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc5_ || param1)
                        {
                           while(true)
                           {
                              if(this.§@!_§ < 0)
                              {
                                 continue loop4;
                              }
                              loop8:
                              while(true)
                              {
                                 if(this.mSlingShotState != §71§)
                                 {
                                    this.§+7§(param1,param2);
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 addr82:
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 _loc3_ = null;
                                 if(_loc5_ || param2)
                                 {
                                    if(this.§#P§.length > 0)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc3_ = this.§#P§[this.§@A§];
                                          addr143:
                                          §§push(Boolean(_loc3_));
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr155:
                                                   _loc3_.§&!A§(param1);
                                                   if(!_loc4_)
                                                   {
                                                      addr401:
                                                      if(_loc3_)
                                                      {
                                                         addr388:
                                                         if(this.mSlingShotState != §%l§)
                                                         {
                                                            addr327:
                                                            §§push(this.mSlingShotState);
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               addr336:
                                                               §§push(§&!+§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     addr344:
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr348:
                                                                        §§push(_loc3_.§%!7§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr401);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           addr351:
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§'L§(§"o§);
                                                                              addr358:
                                                                              if(!(_loc5_ || _loc3_))
                                                                              {
                                                                                 addr402:
                                                                                 this.§'L§(§71§);
                                                                                 break;
                                                                                 addr407:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr365:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc3_.§61§();
                                                                              addr322:
                                                                              break;
                                                                              addr380:
                                                                              addr398:
                                                                           }
                                                                        }
                                                                        addr228:
                                                                        break;
                                                                     }
                                                                     §§goto(addr380);
                                                                  }
                                                                  §§push(this.mSlingShotState);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(§"o§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           addr245:
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              §§push(this.§'?§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(_loc3_.radius);
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * Math.cos(this.§6a§ / (180 / Math.PI)));
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr281:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       §§push(this.§,m§);
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §§push(_loc3_.radius);
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() * Math.sin(this.§6a§ / (180 / Math.PI)));
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§pop().setPosition(§§pop(),§§pop());
                                                                                 addr314:
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.§"8§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr167:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr186:
                                                                                                      §§push(this);
                                                                                                      §§push(this.§'H§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(this.§+8§);
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            addr211:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            §§push(this.§6a§);
                                                                                                         }
                                                                                                         §§pop().§^!&§(§§pop(),§§pop());
                                                                                                         addr215:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc5_ || this))
                                                                                                            {
                                                                                                               §§goto(addr245);
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr226:
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr228);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr389:
                                                                                                            if(this.§@!_§ <= 0)
                                                                                                            {
                                                                                                               addr393:
                                                                                                               this.§'L§(§&!+§);
                                                                                                               §§goto(addr398);
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                         §§goto(addr314);
                                                                                                      }
                                                                                                      §§goto(addr211);
                                                                                                   }
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr348);
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                           §§goto(addr393);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      §§goto(addr402);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr401);
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr365);
                              }
                              else
                              {
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr408);
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§@!_§);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§@!_§ = §§pop();
                  §§goto(addr97);
                  §§goto(addr113);
               }
            }
         }
         addr408:
      }
      
      public function §-O§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = null;
         if(_loc6_ || param2)
         {
            if(this.§#P§.length > 0)
            {
               if(_loc6_)
               {
                  _loc5_ = this.§#P§[this.§@A§];
                  addr50:
                  if(!_loc5_)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§goto(addr70);
                     }
                  }
                  _loc5_.setPosition(param1,param2);
                  do
                  {
                     this.§^!&§(param3,param4);
                  }
                  while(_loc7_);
                  
               }
               return;
            }
            §§goto(addr50);
         }
         addr70:
      }
      
      protected function §^!&§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelSlingshotObject = null;
         if(_loc4_ || param1)
         {
            this.§#!;§ = §2j§;
            if(!_loc5_)
            {
               this.§#f§ = §+Q§;
               if(!_loc5_)
               {
                  addr38:
                  if(this.§#P§.length > 0)
                  {
                     if(!(_loc5_ && param2))
                     {
                        _loc3_ = this.§#P§[this.§@A§];
                        addr57:
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr62);
                           }
                           else
                           {
                              loop4:
                              while(true)
                              {
                                 this.§<2§ = new Date().time;
                                 addr172:
                                 while(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 addr165:
                                 this.§"!>§.§ a§(_loc3_,param1,param2);
                                 loop0:
                                 while(true)
                                 {
                                    this.§>!M§(this.§@A§,_loc3_.§9S§ > 0);
                                    loop1:
                                    while(true)
                                    {
                                       this.playBirdShotSound();
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(this.§@A§ >= this.§#P§.length)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      this.§'L§(§71§);
                                                      break;
                                                   }
                                                   addr183:
                                                   while(true)
                                                   {
                                                      this.§"8§ = false;
                                                      continue loop4;
                                                   }
                                                }
                                                break;
                                             }
                                             this.§'L§(§%l§);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                                 §§goto(addr66);
                              }
                           }
                        }
                        else
                        {
                           addr180:
                           this.mDragging = false;
                        }
                        §§goto(addr183);
                     }
                     addr62:
                     return;
                  }
                  §§goto(addr57);
               }
               §§goto(addr165);
            }
            §§goto(addr180);
         }
         §§goto(addr38);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc3_)
         {
            §§push(SoundEngine);
            §§push("BirdShot");
            if(_loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§9!X§(§§pop());
         }
      }
      
      public function §+7§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§@A§);
         if(!(_loc5_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(_loc6_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() >= this.§#P§.length)
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr75:
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    addr76:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr77:
                                       while(true)
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             _loc4_ = §§pop();
                                             while(!(_loc6_ || this))
                                             {
                                             }
                                             continue loop0;
                                             addr85:
                                          }
                                          else
                                          {
                                             addr127:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() == §=!3§)
                                             {
                                                continue loop1;
                                             }
                                             this.§#P§[_loc4_].update(param1,false,param2);
                                          }
                                          while(true)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr85);
                     }
                     else
                     {
                        §§push(this.mSlingShotState);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr75);
               }
               §§goto(addr76);
            }
            §§goto(addr77);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:* = 0;
         if(!(_loc5_ && _loc2_))
         {
            this.mDragging = false;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§use§();
               while(true)
               {
                  if(_loc6_)
                  {
                     if(this.§5C§ < this.§#P§.length)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        return false;
                     }
                     if(_loc6_ || this)
                     {
                        if(true)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  continue loop0;
               }
               _loc1_ = this.§#P§[this.§5C§];
               if(!(_loc5_ && _loc1_))
               {
                  §§push(LevelItemManager.§&!i§(_loc1_.name).score);
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  addr96:
                  addr151:
                  §§push(this.§"!>§);
                  §§push(_loc2_);
                  §§push(ScoreCollector.§0C§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(3);
                     if(_loc6_)
                     {
                        addr119:
                        §§push(§§pop() - §§pop());
                        §§push(§0'§.§'>§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           _loc1_.§&_§(-1,true);
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 §§goto(addr96);
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§5C§);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 _loc3_.§5C§ = _loc4_;
                              }
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr119);
               }
               addr177:
               return true;
            }
         }
      }
      
      public function §<o§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LevelSlingshotObject = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§#P§)
         {
            if(_loc6_)
            {
               §§push(_loc1_);
               if(_loc6_ || _loc1_)
               {
                  §§push(int(§§pop() + LevelItemManager.§&!i§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §!!g§() : int
      {
         return this.§+X§;
      }
      
      public function §=!F§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§]§);
            loop0:
            while(true)
            {
               §§push(0);
               addr231:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr27:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§]§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§]§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §7C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(1000);
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§"!>§.objects.§ !f§(this.§>A§,this.§'0§));
            loop1:
            while(true)
            {
               §§push(int(§§pop()));
               loop2:
               while(true)
               {
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop4:
                     while(_loc3_ || _loc2_)
                     {
                        §§push(-1);
                        loop5:
                        while(§§pop() == §§pop())
                        {
                           this.§3T§(0.1);
                           while(true)
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 continue loop3;
                              }
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc3_)
                                    {
                                       addr43:
                                       §§push(int(§§pop()));
                                       if(!_loc4_)
                                       {
                                          addr46:
                                          if(!_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          _loc1_ = §§pop();
                                          addr59:
                                          if(!_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(0);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr46);
                                 }
                                 §§goto(addr43);
                              }
                              §§goto(addr59);
                           }
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           return;
                        }
                        §§goto(addr69);
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§'6§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(-§§pop());
                  addr84:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr82:
         }
         while(true)
         {
            §§push(this.§'6§);
            if(_loc3_)
            {
               §§push(param2);
               if(_loc3_ || this)
               {
                  if(!_loc4_)
                  {
                     addr64:
                     §§push(-§§pop());
                     if(_loc3_ || param2)
                     {
                        §§pop().y = §§pop();
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr84);
               }
               §§goto(addr64);
            }
            else
            {
               §§goto(addr82);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §"o§);
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
                  if(!§§pop())
                  {
                     loop3:
                     for(; §§pop(); continue loop0)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(true);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                              }
                              addr111:
                           }
                           §§goto(addr92);
                        }
                        break;
                     }
                     §§push(false);
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                     addr92:
                     return §§pop();
                     addr70:
                  }
                  §§goto(addr110);
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr111);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mSlingShotState == §"o§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§pop();
                        addr76:
                        §§push(this.§'H§);
                        §§push(this.§+8§);
                        if(_loc1_)
                        {
                           §§push(§§pop() * §-%§);
                        }
                        §§push(§§pop() > §§pop());
                        if(_loc1_)
                        {
                           addr88:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr88);
                  }
                  return §§pop();
               }
            }
            §§goto(addr88);
         }
         §§goto(addr76);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mDragging = false;
            if(_loc2_ || this)
            {
               this.§'L§(§"o§);
            }
         }
         var _loc1_:LevelSlingshotObject = this.§#P§[this.§@A§];
         if(_loc2_ || _loc1_)
         {
            _loc1_.§&_§(LevelItemSoundResource.§0A§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mDragging = true;
         }
         var _loc1_:LevelSlingshotObject = this.§#P§[this.§@A§];
         if(_loc2_)
         {
            _loc1_.§&_§(LevelItemSoundResource.§;!Z§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§"8§ = true;
         }
      }
      
      protected function §>!M§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelSlingshotObject = null;
         if(!_loc5_)
         {
            if(param1 < 0)
            {
               if(_loc4_ || param2)
               {
                  return;
               }
            }
            if(this.§#P§[param1])
            {
               if(!(_loc5_ && param1))
               {
                  _loc3_ = this.§#P§[param1];
                  addr47:
                  if(_loc4_ || param1)
                  {
                     this.§^x§.removeChild(_loc3_.sprite);
                     while(true)
                     {
                        if(param2)
                        {
                           while(true)
                           {
                              this.§^!W§(this.§#P§[param1]);
                              addr122:
                              while(true)
                              {
                              }
                           }
                           addr115:
                        }
                        addr88:
                        addr130:
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr122);
               }
               addr136:
               while(true)
               {
                  _loc3_.dispose();
                  addr92:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     §§goto(addr115);
                  }
               }
               this.§#P§.splice(param1,1);
               return;
            }
            §§goto(addr130);
         }
         §§goto(addr47);
      }
      
      public function §^!W§(param1:LevelSlingshotObject) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         §§push(5);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(90);
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc10_)
            {
               if(§§pop() >= _loc3_)
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     if(!_loc10_)
                     {
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(this.§"!>§);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(§§pop().particles);
                              if(_loc9_ || param1)
                              {
                                 §§push(§0'§.§#!V§);
                                 if(_loc9_)
                                 {
                                    §§push(LevelParticleManager.§[K§);
                                    if(_loc9_)
                                    {
                                       §§push(§0'§.§&A§);
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(param1.x);
                                          if(!(_loc10_ && param1))
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(param1.y);
                                                if(!(_loc10_ && this))
                                                {
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(1000);
                                                      if(_loc9_)
                                                      {
                                                         §§push("");
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(0);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5));
                                                               if(!_loc10_)
                                                               {
                                                                  §§pop();
                                                                  addr156:
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.sprite);
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(-§§pop().width);
                                                                              addr425:
                                                                              while(true)
                                                                              {
                                                                                 §§push(LevelMain.§8N§);
                                                                                 addr428:
                                                                                 while(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr442:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 loop40:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop41:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop42:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop42;
                                                                                                }
                                                                                                §§push(180 / Math.PI);
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   addr454:
                                                                                                   addr375:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr455:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         continue loop36;
                                                                                                      }
                                                                                                   }
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop17:
                                                                                                      while(_loc9_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            addr387:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  §§push(Math.random() * -_loc8_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§goto(addr375);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                        addr373:
                                                                                                                     }
                                                                                                                     if(!(_loc10_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr309:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc10_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              addr336:
                                                                                                                              addr336:
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr460:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr454);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(2);
                                                                                                                                 addr404:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr405:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          while(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr442);
                                                                                                                                          addr413:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr309);
                                                                                                                              }
                                                                                                                              addr403:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§goto(addr404);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr428);
                                                                                                                     }
                                                                                                                     §§goto(addr405);
                                                                                                                  }
                                                                                                                  §§goto(addr309);
                                                                                                               }
                                                                                                               §§goto(addr336);
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr353:
                                                                                                            _loc8_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§"!>§);
                                                                                                               addr188:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().particles);
                                                                                                                  addr189:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§0'§.§@R§);
                                                                                                                     addr192:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(LevelParticleManager.§[K§);
                                                                                                                        addr195:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§0'§.§&A§);
                                                                                                                           addr198:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param1.x);
                                                                                                                              addr200:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 addr201:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr202:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1.y);
                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + _loc8_);
                                                                                                                                       }
                                                                                                                                       addr213:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(1500);
                                                                                                                                          addr214:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push("");
                                                                                                                                             addr215:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§0'§.§%!`§(param1.name));
                                                                                                                                                addr230:
                                                                                                                                                loop21:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(_loc9_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * Math.sin(_loc6_));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§push(5);
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * 20);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                   addr266:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr267:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                               addr177:
                                                                                                                                                               while(!(_loc9_ || _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop7;
                                                                                                                                                               }
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr387);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop21;
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
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop42;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§goto(addr403);
                                                                           §§push(Math.random() * -_loc7_);
                                                                        }
                                                                        §§goto(addr413);
                                                                     }
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr353);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr156);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr460);
            }
            §§goto(addr176);
         }
      }
      
      public function §"!A§(param1:LevelSlingshotObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!M§(this.§#P§.indexOf(param1));
         }
      }
      
      public function §<!i§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:LevelSlingshotObject = null;
         §§push(0);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc6_ && _loc2_))
            {
               while(true)
               {
                  if(§§pop() >= this.§#P§.length - 1)
                  {
                     if(!_loc7_)
                     {
                     }
                     addr272:
                     if(this.§^x§.numChildren > 0)
                     {
                        §§push(this.§^x§);
                        if(!_loc6_)
                        {
                           §§pop().removeChildAt(0);
                           if(_loc7_ || _loc3_)
                           {
                              §§goto(addr272);
                           }
                           break;
                        }
                        §§goto(addr272);
                     }
                     if(!_loc6_)
                     {
                        addr279:
                        §§push(0);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc6_ && _loc3_))
                           {
                              break loop0;
                           }
                           addr351:
                           if(§§pop() < this.§#P§.length)
                           {
                              _loc2_ = this.§#P§[_loc1_];
                              if(_loc7_)
                              {
                                 this.§^x§.addChildAt(_loc2_.sprite,0);
                                 if(!_loc6_)
                                 {
                                    addr332:
                                    §§push(_loc1_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                    }
                                    _loc1_ = §§pop();
                                 }
                                 while(true)
                                 {
                                    §§goto(addr351);
                                 }
                                 addr355:
                                 return;
                                 addr350:
                              }
                              §§goto(addr332);
                           }
                           §§goto(addr355);
                        }
                        §§goto(addr351);
                     }
                     break;
                  }
                  §§push(Number(Math.sqrt((this.§`!%§ - this.§#P§[_loc1_].x) * (this.§`!%§ - this.§#P§[_loc1_].x) + (this.§else§ - this.§#P§[_loc1_].y) * (this.§else§ - this.§#P§[_loc1_].y))));
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(_loc6_ && _loc2_)
                     {
                        continue loop0;
                     }
                     §§push(Number(Math.sqrt((this.§`!%§ - this.§#P§[_loc1_ + 1].x) * (this.§`!%§ - this.§#P§[_loc1_ + 1].x) + (this.§else§ - this.§#P§[_loc1_ + 1].y) * (this.§else§ - this.§#P§[_loc1_ + 1].y))));
                     if(_loc7_)
                     {
                        _loc4_ = §§pop();
                        if(_loc7_ || this)
                        {
                           addr151:
                           if(_loc4_ < _loc3_)
                           {
                              if(_loc7_)
                              {
                                 _loc5_ = this.§#P§[_loc1_];
                                 if(_loc7_)
                                 {
                                    this.§#P§.splice(_loc1_,1);
                                    loop2:
                                    while(true)
                                    {
                                       addr200:
                                       while(true)
                                       {
                                          this.§#P§.splice(_loc1_ + 1,0,_loc5_);
                                          continue loop2;
                                       }
                                    }
                                    addr217:
                                 }
                                 while(true)
                                 {
                                    _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                    if(_loc6_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc7_ || _loc1_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr217);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              else
                              {
                                 §§goto(addr279);
                              }
                              §§goto(addr351);
                           }
                           §§push(_loc1_);
                           if(_loc6_)
                           {
                              addr237:
                              _loc1_ = §§pop();
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§push(§§pop() + 1);
                           if(_loc7_ || _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr351);
                        }
                        §§goto(addr279);
                     }
                  }
                  §§goto(addr151);
                  §§goto(addr351);
               }
               addr303:
               §§goto(addr350);
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc7_ || this)
         {
            §§goto(addr303);
         }
         §§goto(addr355);
      }
      
      public function §;C§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(0);
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         do
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() >= this.§#P§.length)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc4_)
                     {
                        return null;
                     }
                     addr95:
                     if(this.§#P§[_loc3_].isInCoordinates(param1,param2))
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc5_ && this))
                           {
                              addr81:
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                              addr81:
                           }
                        }
                        §§goto(addr81);
                     }
                     addr58:
                  }
                  while(!_loc4_)
                  {
                     §§goto(addr81);
                  }
                  continue;
               }
               if(this.§#P§[_loc3_])
               {
                  §§goto(addr95);
               }
               §§goto(addr58);
            }
            §§goto(addr81);
         }
         while(_loc4_);
         
         return this.§#P§[_loc3_];
      }
      
      public function §?!<§(param1:Number, param2:Number) : LevelSlingshot
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§`!%§);
               loop1:
               while(true)
               {
                  §§push(this.§+8§);
                  loop2:
                  while(true)
                  {
                     §§push(4);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() >= §§pop());
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
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§`!%§);
                                                      addr191:
                                                      while(true)
                                                      {
                                                         §§push(this.§+8§);
                                                         addr193:
                                                         while(true)
                                                         {
                                                            §§push(4);
                                                            addr194:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               addr195:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr196:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     addr197:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr34:
                                                      if(!(_loc3_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§'0§);
                                                      if(_loc3_)
                                                      {
                                                         addr45:
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() <= §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr166:
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           addr65:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    return this;
                                                                                 }
                                                                                 addr224:
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr186:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§else§);
                                                                                       if(_loc4_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr34);
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr186:
                                                                                 }
                                                                                 addr72:
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr19:
                                                                                       return null;
                                                                                       addr81:
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    continue loop0;
                                                                                    §§goto(addr72);
                                                                                 }
                                                                              }
                                                                              §§goto(addr19);
                                                                           }
                                                                        }
                                                                        addr64:
                                                                     }
                                                                     while(!_loc4_)
                                                                     {
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr175:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr186);
                                                                                       }
                                                                                       continue loop6;
                                                                                       addr183:
                                                                                    }
                                                                                    §§goto(addr64);
                                                                                 }
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§pop();
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                          continue loop11;
                                                                                          addr221:
                                                                                       }
                                                                                       continue loop29;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr211:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr211);
                                                                              }
                                                                              addr200:
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop7;
                                                                     addr166:
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr65);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(this.§+8§);
                                                            if(_loc3_ || param2)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(4);
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  addr134:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc3_ || param2))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_ || param2)
                                                                                    {
                                                                                       §§goto(addr166);
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr197);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr200);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr193);
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            §§goto(addr134);
                                                            §§goto(addr45);
                                                         }
                                                         §§goto(addr191);
                                                         addr93:
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr199);
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
         §§goto(addr81);
      }
      
      public function §!!-§(param1:LevelModel) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§38§ = null;
         if(!(_loc6_ && this))
         {
            param1.§7a§ = this.§`!%§;
            if(!(_loc6_ && this))
            {
               param1.§<7§ = this.§else§;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.§#P§.length)
         {
            _loc3_ = this.§#P§[_loc2_];
            _loc4_ = new §38§();
            if(!_loc6_)
            {
               _loc4_.x = _loc3_.x;
            }
            while(true)
            {
               _loc4_.y = _loc3_.y;
               while(true)
               {
                  _loc4_.id = _loc3_.name;
                  loop3:
                  while(true)
                  {
                     addr95:
                     while(true)
                     {
                        param1.§&I§(_loc4_);
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
               if(_loc6_ && _loc2_)
               {
                  continue;
               }
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + 1);
                  if(_loc5_)
                  {
                     addr84:
                     §§push(Number(§§pop()));
                  }
                  _loc2_ = §§pop();
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr93);
                  }
                  §§goto(addr100);
               }
               §§goto(addr84);
            }
         }
      }
      
      public function §5!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§#P§.length > 0)
         {
            this.§"!A§(this.§#P§[0]);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §!!K§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() < this.§#P§.length)
               {
                  if(this.§#P§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr289);
                  }
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(this.§`!%§);
                  loop3:
                  while(!_loc5_)
                  {
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() > param1.x);
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
                                       while(true)
                                       {
                                          §§pop();
                                          addr242:
                                          while(_loc6_ || param1)
                                          {
                                             §§push(this.§`!%§);
                                             while(true)
                                             {
                                                §§push(§§pop() < param2.x);
                                                addr196:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr241:
                                    }
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop14:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop15:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop16:
                                                   while(_loc6_ || param1)
                                                   {
                                                      §§pop();
                                                      loop17:
                                                      while(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(this.§else§);
                                                         loop18:
                                                         for(; _loc6_ || param1; §§push(this.§else§),if(_loc5_ && this)
                                                         {
                                                            continue;
                                                         },if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() < param2.y);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               continue loop13;
                                                            }
                                                            addr69:
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr75);
                                                               }
                                                               §§goto(addr118);
                                                            }
                                                            §§goto(addr165);
                                                         },§§goto(addr193))
                                                         {
                                                            §§push(§§pop() > param1.y);
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(_loc5_ && this)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr165:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                        addr165:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 if(_loc5_ && param2)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    _loc3_.push(this);
                                                                                    §§goto(addr102);
                                                                                 }
                                                                                 §§goto(addr296);
                                                                                 continue loop17;
                                                                              }
                                                                              addr102:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                          _loc3_.push(this.§#P§[_loc4_]);
                                                                                          break loop1;
                                                                                       }
                                                                                       addr289:
                                                                                       addr296:
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 addr180:
                                                                              }
                                                                           }
                                                                           return _loc3_;
                                                                        }
                                                                        addr75:
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  continue loop6;
                                                                  addr126:
                                                               }
                                                               §§goto(addr165);
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr126);
                                             }
                                          }
                                          if(!(_loc6_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr69);
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§push(Number(§§pop()));
                     break;
                  }
                  addr271:
                  _loc4_ = §§pop();
                  continue loop0;
               }
               §§goto(addr289);
            }
            §§push(_loc4_);
            if(_loc6_ || this)
            {
               §§goto(addr270);
               §§push(§§pop() + 1);
            }
            §§goto(addr271);
         }
      }
      
      public function §4!c§() : Array
      {
         return [this.§4!$§,this.§@!$§];
      }
      
      public function §5!0§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelSlingshotObject = this.§[!?§(param1,param2,param3);
         if(_loc6_)
         {
            this.§<!i§();
         }
         return _loc4_;
      }
      
      public function §#b§() : Number
      {
         return this.§#P§.length;
      }
   }
}
