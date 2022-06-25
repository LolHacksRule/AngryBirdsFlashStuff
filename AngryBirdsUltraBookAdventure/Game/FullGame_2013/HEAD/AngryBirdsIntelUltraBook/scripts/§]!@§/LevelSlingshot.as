package §]!@§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §4!C§.§>!Q§;
   import §6!J§.Texture;
   import §<u§.Log;
   import §>!_§.LevelModel;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §package§.LevelItemManager;
   import §package§.LevelItemSoundResource;
   
   public class LevelSlingshot
   {
      
      public static const §=!^§:int = 0;
      
      public static const §7! §:int = 1;
      
      public static const §1!!§:int = 2;
      
      public static const §=s§:int = 3;
      
      public static const §]!i§:int = 5;
      
      public static const §`!$§:int = 3151368;
      
      protected static const §5z§:int = 8;
      
      protected static const §&q§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §<i§:Number = -0.7;
      
      protected static const §#!!§:Number = 0;
      
      protected static var §7i§:Texture;
      
      public static const §9X§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!^§ = 0;
            while(true)
            {
               §7! § = 1;
               loop1:
               while(true)
               {
                  §1!!§ = 2;
                  loop2:
                  while(true)
                  {
                     §=s§ = 3;
                     while(true)
                     {
                        §]!i§ = 5;
                        loop4:
                        while(true)
                        {
                           §`!$§ = 3151368;
                           while(true)
                           {
                              §5z§ = 8;
                              continue loop1;
                              addr41:
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop4;
                              }
                           }
                        }
                        addr95:
                        if(!(_loc2_ && LevelSlingshot))
                        {
                           §#!!§ = 0;
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              loop10:
                              while(!(_loc2_ && _loc2_))
                              {
                                 §<i§ = -0.7;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr88:
                                       if(!(_loc1_ || LevelSlingshot))
                                       {
                                          break;
                                       }
                                       §§goto(addr95);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          BIRD_LAUNCH_FORCE = 46.25;
                                          break loop10;
                                       }
                                       addr124:
                                    }
                                    addr34:
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr41);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 BIRD_LAUNCH_FORCE_GREEN = 52.5;
                                 §§goto(addr107);
                              }
                              addr107:
                              addr81:
                              §9X§ = 0.4;
                              if(!(_loc1_ || LevelSlingshot))
                              {
                                 continue;
                              }
                              §§goto(addr34);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr81);
            }
         }
         while(true)
         {
            §&q§ = 0;
            §§goto(addr124);
         }
      }
      
      public var §`s§:LevelMain;
      
      public var §1X§:Number;
      
      public var §`J§:Number;
      
      public var §?!K§:Number;
      
      protected var §<-§:Number;
      
      protected var §5D§:Number;
      
      protected var §#!j§:Number;
      
      protected var §,!,§:Number;
      
      public var §`!K§:Number;
      
      public var §7e§:Boolean = false;
      
      protected var §9!D§:Number;
      
      public var §2!X§:Vector.<LevelSlingshotObject>;
      
      public var §1!9§:int;
      
      public var §=!Y§:int;
      
      public var §,F§:Number;
      
      public var §%R§:Sprite;
      
      public var §,I§:int = 0;
      
      public var §^P§:Number = 0;
      
      public var §,5§:Array;
      
      public var §@z§:Array;
      
      public var mSlingShotState:int;
      
      public var §9!U§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §6%§:Boolean = false;
      
      public var §5`§:Number;
      
      protected var §"!,§:Sprite;
      
      protected var §;!X§:§6!Y§;
      
      protected var §+P§:§6!Y§;
      
      protected var §^H§:Sprite;
      
      protected var §^!S§:Sprite;
      
      protected var §^§:Sprite;
      
      protected var §7!N§:§0!b§;
      
      protected var §%T§:§0!b§;
      
      private var §#!g§:Number = 0;
      
      private var §>u§:int = 0;
      
      protected var §&!P§:Number = -0.7;
      
      protected var §72§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:§>!Q§ = null;
         if(!(_loc6_ && param2))
         {
            this.§2!X§ = new Vector.<LevelSlingshotObject>();
            while(true)
            {
               super();
            }
            addr101:
         }
         loop1:
         while(true)
         {
            this.§`s§ = param1;
            loop2:
            while(true)
            {
               this.§"!,§ = param3;
               loop3:
               while(true)
               {
                  if(!(_loc7_ || this))
                  {
                     continue loop2;
                  }
                  if(!_loc7_)
                  {
                     continue loop1;
                  }
                  if(!param2)
                  {
                     Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                     break;
                  }
                  if(_loc7_)
                  {
                     this.setPosition(param2.§=0§,param2.§?!=§);
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        this.§%!g§();
                        while(_loc7_)
                        {
                           if(_loc7_)
                           {
                              §§push(0);
                              if(_loc7_ || this)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc4_ = §§pop();
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 break loop5;
                              }
                              if(false)
                              {
                                 continue loop5;
                              }
                              addr130:
                              if(_loc4_ < param2.§4!I§)
                              {
                                 _loc5_ = param2.§3n§(_loc4_);
                                 if(_loc7_)
                                 {
                                    this.§2!]§(_loc5_.id,_loc5_.x,_loc5_.y);
                                    if(_loc7_)
                                    {
                                       addr122:
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc6_)
                                          {
                                             addr128:
                                             §§push(int(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                          §§goto(addr130);
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr122);
                              }
                              if(!(_loc6_ && param3))
                              {
                                 this.§>u§ = this.§-!^§();
                                 if(_loc7_ || param2)
                                 {
                                    this.§1!9§ = 0;
                                    addr324:
                                    if(this.§2!X§.length <= 0)
                                    {
                                       addr279:
                                       §§push(Log);
                                       §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                       if(_loc7_)
                                       {
                                          §§push(this.§1X§);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + " ");
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr315:
                                                   §§push(§§pop() + this.§`J§);
                                                }
                                                §§pop().log(§§pop());
                                                this.§'!7§(§=s§);
                                                addr214:
                                                this.§5`§ = 0;
                                                addr272:
                                                addr242:
                                                if(_loc7_ || param2)
                                                {
                                                   this.§2!B§();
                                                   this.update(0,true);
                                                   this.§4!E§();
                                                   addr213:
                                                   addr208:
                                                   if(_loc7_ || param3)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               this.updateAnimations(0);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr213);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         break loop3;
                                                      }
                                                      addr232:
                                                      if(_loc7_ || this)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                      addr258:
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                addr320:
                                                §§goto(addr320);
                                             }
                                          }
                                       }
                                       §§goto(addr315);
                                    }
                                    this.§'!7§(§=!^§);
                                    §§goto(addr258);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr214);
                           }
                           else
                           {
                              §§goto(addr101);
                           }
                        }
                        continue loop3;
                     }
                  }
               }
               this.§'!7§(§=s§);
               §§goto(addr232);
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§#!g§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§1!9§ < this.§2!X§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            if(this.§2!X§.length > 0)
            {
               this.§0!&§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§2!X§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§"!,§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(_loc2_)
                        {
                           §§push(this.§"!,§);
                           while(true)
                           {
                              §§pop().dispose();
                              loop9:
                              while(true)
                              {
                                 this.§"!,§ = null;
                                 addr71:
                                 addr78:
                                 while(_loc1_ && this)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        continue loop0;
                        addr98:
                     }
                     while(true)
                     {
                        this.§%R§ = null;
                        while(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              this.§,5§ = null;
                              for(; _loc2_ || this; this.§@z§ = null,if(!_loc1_)
                              {
                                 return;
                              })
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr98);
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr71);
                        §§goto(addr78);
                     }
                     continue;
                  }
                  §§goto(addr102);
               }
            }
         }
      }
      
      public function §?!P§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = this.§2!]§(param1,param2,param3,param4);
         if(!_loc7_)
         {
            _loc5_.§3g§();
         }
         return _loc5_;
      }
      
      protected function §2!]§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && this))
         {
            if(param4 >= 0)
            {
               this.§2!X§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(_loc6_ || param3)
                     {
                        continue;
                     }
                     addr97:
                     while(true)
                     {
                        this.§2!X§.push(_loc5_);
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return _loc5_;
               addr73:
            }
            §§goto(addr97);
         }
         §§goto(addr73);
      }
      
      public function §'!7§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§=!^§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§7! §);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              break loop3;
                           }
                           §§push(this.mSlingShotState);
                           loop5:
                           for(; !_loc2_; if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           },§§goto(addr182))
                           {
                              §§push(§1!!§);
                              loop6:
                              while(§§pop() != §§pop())
                              {
                                 §§push(this.mSlingShotState);
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    §§push(§=s§);
                                    while(true)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             §§push(this.mSlingShotState);
                                             if(!(_loc2_ && param1))
                                             {
                                                continue loop5;
                                             }
                                             continue loop7;
                                             continue loop7;
                                          }
                                          continue loop2;
                                       }
                                       §§push(§]!i§);
                                       addr182:
                                       continue loop4;
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr199);
                                          }
                                          §§goto(addr29);
                                          continue loop6;
                                       }
                                    }
                                    addr260:
                                    this.§@I§();
                                    loop14:
                                    while(true)
                                    {
                                       this.§,F§ = 2000;
                                       addr228:
                                       while(true)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             break loop14;
                                          }
                                          continue loop14;
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       if(!(_loc2_ && param1))
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                addr345:
                                                addr199:
                                                loop12:
                                                while(true)
                                                {
                                                   if(!this.mDragging)
                                                   {
                                                      this.§@I§();
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr328:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr294:
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  break loop12;
                                                               }
                                                               this.mDragging = false;
                                                               loop13:
                                                               while(_loc3_)
                                                               {
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        this.§6%§ = false;
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break loop6;
                                                                           }
                                                                           if(_loc2_ && _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           this.§@I§();
                                                                           loop19:
                                                                           while(_loc3_)
                                                                           {
                                                                              this.§2!X§[this.§1!9§].setPosition(this.§#!j§ - this.§2!X§[this.§1!9§].radius * Math.cos(this.§^P§ / (180 / Math.PI)),this.§,!,§ + this.§2!X§[this.§1!9§].radius * Math.sin(this.§^P§ / (180 / Math.PI)));
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && param1))
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              this.§6%§ = false;
                                                                              while(true)
                                                                              {
                                                                                 this.§@I§();
                                                                                 addr268:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        this.§,F§ = 0;
                                                                        §§goto(addr294);
                                                                        addr143:
                                                                        addr323:
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            addr202:
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      addr58:
                                                   }
                                                   §§goto(addr202);
                                                }
                                                this.§,F§ = 1000;
                                                §§goto(addr328);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr58);
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              while(!_loc3_)
                              {
                                 break loop2;
                              }
                              this.§,F§ = 10000;
                              §§goto(addr289);
                           }
                           continue loop3;
                        }
                     }
                     if(_loc3_ || this)
                     {
                        this.§@I§();
                     }
                     §§goto(addr323);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr273);
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§`s§;
      }
      
      public function §?f§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mSlingShotState == §=s§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§pop();
                        addr61:
                        §§push(this.§,F§ <= 0);
                        if(_loc2_ && this)
                        {
                        }
                     }
                  }
                  §§goto(addr73);
               }
               §§push(Boolean(§§pop()));
            }
            addr73:
            return §§pop();
         }
         §§goto(addr61);
      }
      
      private function §%!g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§ H§ = _loc1_.getFrame(0);
         var _loc3_:§ H§ = _loc1_.getFrame(1);
         if(_loc4_ || _loc2_)
         {
            this.§7!N§ = new §0!b§(_loc2_.texture);
            while(true)
            {
               §§push(this.§7!N§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr268:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr99);
            }
         }
         §§goto(addr193);
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§`s§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §[!6§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!(_loc3_ && _loc2_))
         {
            this.§<-§ = this.§1X§;
            loop0:
            while(true)
            {
               addr67:
               while(true)
               {
                  this.§5D§ = this.§`J§;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        this.§9!D§ = § ?§.§=M§;
                        if(_loc2_ || _loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr67);
         }
         _loc1_ = null;
      }
      
      protected function §`R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            if(!§7i§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr33:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(_loc4_)
                  {
                     §7i§ = this.§`s§.textureManager.getTextureFromBitmapData(_loc2_);
                     addr50:
                     this.§^§ = new Sprite();
                  }
                  §§goto(addr50);
               }
               var _loc1_:§0!b§ = new §0!b§(§7i§);
               if(_loc4_ || this)
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
                           this.§^§.addChild(_loc1_);
                           while(_loc4_ || _loc3_)
                           {
                              this.§^H§ = new Sprite();
                              loop4:
                              while(_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 this.§;!X§ = new §6!Y§(2,2,§`!$§);
                                 loop5:
                                 while(true)
                                 {
                                    this.§^H§.addChild(this.§;!X§);
                                    loop6:
                                    while(true)
                                    {
                                       this.§^!S§ = new Sprite();
                                       loop7:
                                       while(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             this.§+P§ = new §6!Y§(2,2,§`!$§);
                                             while(_loc4_)
                                             {
                                                this.§^!S§.addChild(this.§+P§);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr107);
                                                   continue loop7;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          return;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr50);
         }
         §§goto(addr33);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§,!,§);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() / LevelMain.§@!d§);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§#!j§);
         if(!_loc7_)
         {
            §§push(§§pop() / LevelMain.§@!d§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(_loc6_)
         {
            §§push(8);
            §§push(this.§9!D§);
            if(_loc6_)
            {
               §§push(this.§`!K§);
               if(_loc6_ || _loc2_)
               {
                  addr78:
                  §§push(§§pop() - §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     §§push(this.§9!D§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr83:
                     var _loc4_:Number = §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        §§push(this.§^§);
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop1:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(this.§^§);
                                 loop3:
                                 for(; _loc6_; while(true)
                                 {
                                    §§push(this.§^§);
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    §§push(this.§^P§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc7_ && this))
                                       {
                                          addr516:
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() / (180 / Math.PI));
                                       }
                                       §§goto(addr524);
                                    }
                                    §§goto(addr516);
                                 },§§goto(addr543))
                                 {
                                    §§push(_loc2_);
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop3;
                                       addr524:
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§pop().rotation = §§pop();
                                          while(_loc6_)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(this.§7!N§);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§1X§);
                                                addr474:
                                                while(true)
                                                {
                                                   §§push(LevelMain.§@!d§);
                                                   addr477:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr478:
                                                      while(true)
                                                      {
                                                         §§push(3);
                                                         addr479:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr480:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(!(_loc6_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            addr634:
                                                            §§push(this.§;!X§);
                                                            §§push(-this.§;!X§.height);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() / 2);
                                                            }
                                                            §§pop().y = §§pop();
                                                            loop36:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§9!U§ = false;
                                                                     if(_loc6_)
                                                                     {
                                                                        return;
                                                                        addr592:
                                                                     }
                                                                     continue loop36;
                                                                  }
                                                                  addr617:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr634);
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
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr83);
               }
               §§push(§§pop() / §§pop());
            }
            §§goto(addr78);
         }
         §§goto(addr83);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§2!X§.length <= 0)
            {
               loop1:
               while(_loc1_)
               {
                  this.§,!4§();
                  loop2:
                  while(true)
                  {
                     this.§2!]§("BIRD_SARDINE",this.§1X§,this.§`J§);
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           if(!(_loc1_ || this))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            else
            {
               this.§0!&§(0,true);
            }
         }
      }
      
      protected function §,!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            SoundEngine.§-!h§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§'!7§(§]!i§);
         }
      }
      
      public function §@I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§<-§);
            §§push(this.§5D§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§9!D§);
               if(!_loc1_)
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
         if(_loc9_)
         {
            §§push(this.§#!j§);
            loop0:
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
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§,!,§);
                                       while(true)
                                       {
                                          §§push(param2);
                                          addr1459:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr1460:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          loop138:
                                          for(; !(_loc10_ && param2); while(true)
                                          {
                                             continue loop138;
                                          })
                                          {
                                             param2 = §§pop();
                                             loop139:
                                             while(true)
                                             {
                                                this.§`!K§ = _loc7_;
                                                loop140:
                                                while(true)
                                                {
                                                   this.§#!j§ = param1;
                                                   loop189:
                                                   while(true)
                                                   {
                                                      this.§,!,§ = param2;
                                                      loop190:
                                                      while(_loc9_)
                                                      {
                                                         loop158:
                                                         while(true)
                                                         {
                                                            §§push(this.§`!K§);
                                                            loop159:
                                                            while(_loc9_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  addr329:
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§push(this.§9!D§);
                                                                     loop160:
                                                                     while(!_loc10_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(0.45);
                                                                              loop161:
                                                                              for(; _loc9_; §§push(0.8),if(!(_loc9_ || param2))
                                                                              {
                                                                                 continue;
                                                                              },if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr186);
                                                                                 }
                                                                                 §§goto(addr495);
                                                                              },§§goto(addr516))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop162:
                                                                                 for(; _loc9_ || param1; if(_loc10_ && param3)
                                                                                 {
                                                                                    continue;
                                                                                 },if(!_loc10_)
                                                                                 {
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       §§goto(addr222);
                                                                                       §§push(§§pop() >= §§pop());
                                                                                    }
                                                                                    §§goto(addr772);
                                                                                 },§§goto(addr462))
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          §§push(this.§7e§);
                                                                                          loop163:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr265:
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop164:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc9_ || param3)
                                                                                                            {
                                                                                                               if(!(_loc10_ && param1))
                                                                                                               {
                                                                                                                  addr293:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop165:
                                                                                                                              for(; !_loc10_; while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_ && param3)
                                                                                                                                 {
                                                                                                                                    continue loop165;
                                                                                                                                 }
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(_loc10_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr243);
                                                                                                                                       }
                                                                                                                                       §§goto(addr85);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1116);
                                                                                                                              },continue loop163)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop166:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§`!K§);
                                                                                                                                                if(!(_loc9_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop159;
                                                                                                                                                }
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§9!D§);
                                                                                                                                                      if(_loc10_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop162;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop160;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop161;
                                                                                                                                                               }
                                                                                                                                                               loop198:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                     loop176:
                                                                                                                                                                     while(!(_loc10_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§<-§);
                                                                                                                                                                           loop141:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              loop142:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 loop135:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1077:
                                                                                                                                                                                    §§push(this.§`!K§);
                                                                                                                                                                                    loop119:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       loop120:
                                                                                                                                                                                       while(_loc9_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          loop121:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr1089:
                                                                                                                                                                                             loop122:
                                                                                                                                                                                             while(_loc9_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                param1 = §§pop();
                                                                                                                                                                                                loop188:
                                                                                                                                                                                                while(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§5D§);
                                                                                                                                                                                                   loop187:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr982:
                                                                                                                                                                                                                  if(_loc10_ && param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§5D§);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     addr992:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop142;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc10_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§`!K§);
                                                                                                                                                                                                                           break loop161;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1359:
                                                                                                                                                                                                                     loop25:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr1360:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§`!K§);
                                                                                                                                                                                                                           addr1362:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              addr1363:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 addr1364:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr1365:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       param1 = §§pop();
                                                                                                                                                                                                                                       addr1366:
                                                                                                                                                                                                                                       while(_loc9_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§5D§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§9!D§);
                                                                                                                                                                                                                                             addr1336:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                                                                addr1337:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§5D§);
                                                                                                                                                                                                                                                   addr1339:
                                                                                                                                                                                                                                                   while(!_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         addr1343:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§`!K§);
                                                                                                                                                                                                                                                            addr1345:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                               addr1346:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  addr1347:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     addr1348:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        param2 = §§pop();
                                                                                                                                                                                                                                                                        break loop190;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1358:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1416);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop161;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop92:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               addr1045:
                                                                                                                                                                                                               loop93:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  loop94:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop96:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1049:
                                                                                                                                                                                                                              while(_loc9_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§<-§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop198;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop59:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(5);
                                                                                                                                                                                                                                 addr1198:
                                                                                                                                                                                                                                 loop60:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       break loop187;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                    addr1214:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(4);
                                                                                                                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          break loop122;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                       addr396:
                                                                                                                                                                                                                                       if(_loc10_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr403:
                                                                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop158;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1231:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1215:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop60;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr403);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr1218:
                                                                                                                                                                                                                                    while(_loc9_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1353:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§9!D§);
                                                                                                                                                                                                                                       addr1355:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                          addr1356:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1358);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1198);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1049:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§`!K§);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc10_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop138;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       break loop165;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1005:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       continue loop138;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr896:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop103:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr934:
                                                                                                                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    loop104:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr946:
                                                                                                                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§^P§);
                                                                                                                                                                                                                                                while(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop187;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(-90);
                                                                                                                                                                                                                                                      loop106:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                         loop107:
                                                                                                                                                                                                                                                         while(!_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            loop108:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                               loop109:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  addr840:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        loop111:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr844:
                                                                                                                                                                                                                                                                           loop112:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr847:
                                                                                                                                                                                                                                                                                 if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                 continue loop103;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr880:
                                                                                                                                                                                                                                                                              addr880:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 addr881:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§^P§);
                                                                                                                                                                                                                                                                                          while(_loc9_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(-90);
                                                                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop106;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                   if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop107;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop108;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc10_ && this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop176;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               loop118:
                                                                                                                                                                                                                                                                                                               while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                  if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop119;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                        while(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr746:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§9!D§);
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                   addr769:
                                                                                                                                                                                                                                                                                                                                                   while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr792:
                                                                                                                                                                                                                                                                                                                                                               §§push(Math.abs(this.§^P§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  addr793:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                              addr804:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 addr805:
                                                                                                                                                                                                                                                                                                                                                                                 loop127:
                                                                                                                                                                                                                                                                                                                                                                                 while(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr815:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          break loop166;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr815:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                          break loop127;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr1179:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    addr1181:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§`!K§);
                                                                                                                                                                                                                                                                                                                                                                                       addr1150:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          addr1151:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             addr1152:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                addr1153:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr1157:
                                                                                                                                                                                                                                                                                                                                                                                                   while(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            addr1166:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.§^P§);
                                                                                                                                                                                                                                                                                                                                                                                                               addr1103:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1104:
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1178:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1113:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                           break loop176;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        break loop107;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1179);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1104);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr1165:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         break loop163;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr329);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr803:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr904);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1355);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr792:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1151);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1360);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1362);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr768:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr815);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break loop166;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop158;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1364);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(_loc9_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1353);
                                                                                                                                                                                                                                                                                                                                 addr1377:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1350:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           this.§`!K§ = Math.sqrt((this.§,!,§ - this.§5D§) * (this.§,!,§ - this.§5D§) + (this.§#!j§ - this.§<-§) * (this.§#!j§ - this.§<-§));
                                                                                                                                                                                                                                                                                                                           addr1416:
                                                                                                                                                                                                                                                                                                                           §§goto(addr1376);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1460);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr792);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop118;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(param1);
                                                                                                                                                                                                                                                                                                                        while(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§<-§);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop135;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(this.§`!K§);
                                                                                                                                                                                                                                                                                                                                          while(_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1356);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr626:
                                                                                                                                                                                                                                                                                                                                       addr186:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          addr627:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop121;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop138;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop111;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr803);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(this.§5D§);
                                                                                                                                                                                                                                                                                                                              addr483:
                                                                                                                                                                                                                                                                                                                              continue loop141;
                                                                                                                                                                                                                                                                                                                              if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr495:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                          break loop162;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr769);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop109;
                                                                                                                                                                                                                                                                                                                                 addr495:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr991);
                                                                                                                                                                                                                                                                                                                              §§goto(addr1359);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1339);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1345);
                                                                                                                                                                                                                                                                                                                        addr582:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1343);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1113);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1459);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1342);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr691:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr979);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1104);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                                                                break loop107;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1381);
                                                                                                                                                                                                                                                                                          addr656:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1315:
                                                                                                                                                                                                                                                                                 addr1322:
                                                                                                                                                                                                                                                                                 while(!_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§^P§ = Math.atan2(-(this.§,!,§ - this.§5D§),this.§#!j§ - this.§<-§);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                                                                             §§push(this.§^P§);
                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().§^P§ = §§pop();
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.mDragging);
                                                                                                                                                                                                                                                                                                break loop112;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1285:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          addr1264:
                                                                                                                                                                                                                                                                                          loop53:
                                                                                                                                                                                                                                                                                          while(_loc9_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + this.§72§);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().§,!,§ = §§pop();
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop53;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                this.§^P§ = -160;
                                                                                                                                                                                                                                                                                                §§goto(addr1231);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1384:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1385);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§,!,§ = param2;
                                                                                                                                                                                                                                                                                       §§goto(addr1315);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1388);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(false);
                                                                                                                                                                                                                                                                              break loop164;
                                                                                                                                                                                                                                                                              §§goto(addr847);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1002);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(_loc10_ && param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop93;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc9_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                               continue loop92;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1346);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1112);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1365);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr896);
                                                                                                                                                                                                                                                addr822:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop188;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop189;
                                                                                                                                                                                                                                       addr645:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc10_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§5D§);
                                                                                                                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param2);
                                                                                                                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr483);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr691);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr792);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr495);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop120;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                               addr1116:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1130);
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1471);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1165);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1376);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1115:
                                                                                                                                                                                                                                                            addr462:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr656);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr805);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr627);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break loop159;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop104;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1348);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§9!D§);
                                                                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                                                                       §§goto(addr946);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1195:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop96;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1462);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop94;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr979:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1019);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc9_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1214);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1218);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1419);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                                                                §§goto(addr1195);
                                                                                                                                                                                                §§goto(addr1089);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1334);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1384);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1318:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§#!j§ = param1;
                                                                                                                                                                                             §§goto(addr1322);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop2;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1337);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1115);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1363);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr768);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr804);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr626);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1103);
                                                                                                                                                }
                                                                                                                                                §§goto(addr524);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop139;
                                                                                                                                       }
                                                                                                                                       addr427:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§#!j§ = param1;
                                                                                                                                          addr415:
                                                                                                                                          addr1330:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || param3)
                                                                                                                                             {
                                                                                                                                                this.§,!,§ = param2;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr396);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr881);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1214);
                                                                                                                                                addr389:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             §§goto(addr103);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1318);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§9!U§ = true;
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr103:
                                                                                                                                                      if(!(_loc10_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(true);
                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop165;
                                                                                                                                                               }
                                                                                                                                                               addr38:
                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop164;
                                                                                                                                                               }
                                                                                                                                                               addr222:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  continue loop165;
                                                                                                                                                                  §§goto(addr38);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  if(_loc9_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + this.§&!P§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§#!j§ = §§pop();
                                                                                                                                                                  §§goto(addr1264);
                                                                                                                                                               }
                                                                                                                                                               addr1251:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1166);
                                                                                                                                                         }
                                                                                                                                                         addr1376:
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§`!K§);
                                                                                                                                                               addr1381:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§9!D§);
                                                                                                                                                                  break loop120;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1454:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop156;
                                                                                                                                                      return false;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§%C§();
                                                                                                                                                      loop171:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop140;
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_ || param3)
                                                                                                                                                            {
                                                                                                                                                               this.§7e§ = false;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop166;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop171;
                                                                                                                                                               }
                                                                                                                                                               addr124:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1366);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr645);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1416);
                                                                                                                                                      }
                                                                                                                                                      continue loop190;
                                                                                                                                                   }
                                                                                                                                                   addr243:
                                                                                                                                                   §§goto(addr1112);
                                                                                                                                                }
                                                                                                                                                §§goto(addr124);
                                                                                                                                                addr140:
                                                                                                                                             }
                                                                                                                                             §§goto(addr415);
                                                                                                                                             addr85:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1363);
                                                                                                                                       addr382:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1049);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§<-§);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr565);
                                                                                                                                             §§push(_loc8_);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr644);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1241);
                                                                                                                                 }
                                                                                                                                 §§goto(addr822);
                                                                                                                              }
                                                                                                                              while(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr911);
                                                                                                                                    addr66:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc10_ && param2)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr73);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1152);
                                                                                                                           }
                                                                                                                           §§goto(addr241);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr871);
                                                                                                                  }
                                                                                                                  §§goto(addr879);
                                                                                                               }
                                                                                                               §§goto(addr912);
                                                                                                            }
                                                                                                            §§goto(addr293);
                                                                                                         }
                                                                                                         §§goto(addr1153);
                                                                                                      }
                                                                                                      §§goto(addr855);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         §§goto(addr1251);
                                                                                                      }
                                                                                                      §§goto(addr1215);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr880);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc10_ && param3))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             §§goto(addr1140);
                                                                                             §§goto(addr265);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                    §§goto(addr565);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(this.§`!K§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   break loop160;
                                                                                                }
                                                                                                §§goto(addr582);
                                                                                             }
                                                                                             §§goto(addr623);
                                                                                          }
                                                                                          addr516:
                                                                                       }
                                                                                       §§goto(addr734);
                                                                                    }
                                                                                    §§goto(addr793);
                                                                                    §§goto(addr353);
                                                                                 }
                                                                                 addr353:
                                                                                 §§goto(addr1045);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr1005);
                                                                              }
                                                                           }
                                                                           §§goto(addr840);
                                                                        }
                                                                        §§goto(addr844);
                                                                     }
                                                                     while(_loc9_)
                                                                     {
                                                                        §§goto(addr524);
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr1336);
                                                                  }
                                                                  §§goto(addr1150);
                                                               }
                                                               §§goto(addr1058);
                                                            }
                                                            while(true)
                                                            {
                                                               param2 = §§pop();
                                                               continue loop139;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§`!K§ = this.§9!D§;
                                                         §§goto(addr1330);
                                                      }
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
                                 addr1462:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          §§push(true);
                                          break;
                                       }
                                       break loop188;
                                    }
                                    addr1419:
                                    while(true)
                                    {
                                       this.§`!K§ = Math.sqrt((param2 - this.§5D§) * (param2 - this.§5D§) + (param1 - this.§<-§) * (param1 - this.§<-§));
                                       §§goto(addr1454);
                                    }
                                    §§goto(addr934);
                                 }
                                 addr1471:
                                 return §§pop();
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1317);
      }
      
      protected function §%C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            SoundEngine.§-!h§("SlingshotStreched");
         }
      }
      
      public function §3;§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§1X§);
            §§push(this.§`J§);
            if(!(_loc3_ && _loc2_))
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
            §§push(§§pop() - this.§1X§);
            if(!(_loc6_ && param1))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_)
            {
               this.§1X§ = param1;
            }
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() - this.§`J§);
               if(!(_loc6_ && param3))
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && param1))
               {
                  this.§`J§ = param2;
                  loop0:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§?!K§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§?!K§ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§5D§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§5D§ = §§pop();
                        loop2:
                        for(; !_loc6_; loop5:
                        for(; !(_loc6_ && param3); while(_loc7_ || param3)
                        {
                           this.updateAnimations(0);
                           §§goto(addr109);
                        })
                        {
                           if(param3)
                           {
                              continue;
                           }
                           addr64:
                           loop8:
                           while(true)
                           {
                              this.§9!U§ = true;
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              addr109:
                              while(!_loc6_)
                              {
                                 continue loop8;
                              }
                              continue loop1;
                           }
                           §§goto(addr77);
                        })
                        {
                           §§push(this);
                           §§push(this.§,!,§);
                           if(!(_loc6_ && param3))
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           §§pop().§,!,§ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§<-§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§<-§ = §§pop();
                              do
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this);
                                    §§push(this.§#!j§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + _loc4_);
                                    }
                                    §§pop().§#!j§ = §§pop();
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              while(!(_loc7_ || param1));
                              
                              return;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr64);
               }
            }
            §§goto(addr50);
         }
         §§goto(addr30);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§2!X§[this.§1!9§];
         §§push(this.§`!K§);
         if(!_loc4_)
         {
            §§push(§§pop() / this.§9!D§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!_loc4_)
                     {
                        §§push(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                              addr112:
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                                 _loc1_ = §§pop();
                                 §§goto(addr116);
                              }
                           }
                           else
                           {
                              addr104:
                              §§push(Number(§§pop()));
                              if(!(_loc4_ && this))
                              {
                                 §§goto(addr112);
                              }
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr116);
                  }
                  else
                  {
                     §§push(LevelSlingshot.BIRD_LAUNCH_FORCE);
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr112);
               }
            }
         }
         addr116:
         §§push(_loc1_);
         if(_loc5_)
         {
            addr119:
            return §§pop() * _loc3_;
         }
      }
      
      public function §=!,§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LevelSlingshotObject = null;
         if(!_loc2_)
         {
            if(this.§2!X§.length <= this.§1!9§)
            {
               return null;
            }
            if(!_loc2_)
            {
               _loc1_ = this.§2!X§[this.§1!9§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §7p§() : Point
      {
         return new Point(this.§<-§,this.§5D§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(!_loc4_)
         {
            this.§5k§(param1);
            while(true)
            {
               if(this.§9!U§)
               {
                  continue;
               }
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(this.§,F§);
                  if(_loc5_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§,F§ = §§pop();
                  loop3:
                  while(true)
                  {
                     do
                     {
                        if(this.§,F§ < 0)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_ || param1)
                              {
                                 this.§,F§ = 0;
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        addr23:
                        while(true)
                        {
                           if(this.mSlingShotState != §=s§)
                           {
                              this.§ '§(param1,param2);
                              break;
                           }
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              §§goto(addr398);
                           }
                           continue loop3;
                        }
                     }
                     while(false);
                     
                     _loc3_ = null;
                     if(_loc5_ || _loc3_)
                     {
                        if(this.§2!X§.length > 0)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              _loc3_ = this.§2!X§[this.§1!9§];
                              addr133:
                              §§push(Boolean(_loc3_));
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       _loc3_.§,!S§(param1);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr391:
                                          if(_loc3_)
                                          {
                                             addr359:
                                             if(this.mSlingShotState != §=!^§)
                                             {
                                                addr326:
                                                if(this.mSlingShotState != §7! §)
                                                {
                                                   §§push(this.mSlingShotState);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(§1!!§);
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           §§push(this.§#!j§);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(_loc3_.radius);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() * Math.cos(this.§^P§ / (180 / Math.PI)));
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    addr288:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    §§push(this.§,!,§);
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc3_.radius);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.sin(this.§^P§ / (180 / Math.PI)));
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§pop().setPosition(§§pop(),§§pop());
                                                                              addr316:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(this.§6%§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc5_ || param2)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§`!K§);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.§9!D§);
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      addr204:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      §§push(this.§^P§);
                                                                                                   }
                                                                                                   §§pop().§]'§(§§pop(),§§pop());
                                                                                                   addr208:
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr316);
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr212:
                                                                                                   }
                                                                                                   §§goto(addr398);
                                                                                                }
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                             addr370:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(this.§,F§ <= 0)
                                                                                                {
                                                                                                   addr376:
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      addr383:
                                                                                                      this.§'!7§(§7! §);
                                                                                                      _loc3_.§?8§();
                                                                                                      addr351:
                                                                                                      addr388:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr398:
                                                                                                      return;
                                                                                                      addr397:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr392:
                                                                                                this.§'!7§(§=s§);
                                                                                             }
                                                                                             §§goto(addr397);
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       §§goto(addr398);
                                                                                    }
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 addr331:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       addr339:
                                                                                       this.§'!7§(§1!!§);
                                                                                       addr344:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       §§goto(addr398);
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              addr327:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr329:
                                                                                 §§goto(addr331);
                                                                                 §§push(_loc3_.§'i§);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr392);
                                       }
                                       §§goto(addr329);
                                    }
                                    §§goto(addr339);
                                 }
                              }
                              §§goto(addr391);
                           }
                           §§goto(addr383);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr383);
                  }
               }
            }
         }
         while(true)
         {
            this.updateAnimations(param1);
            §§goto(addr98);
         }
      }
      
      public function §+!Q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = null;
         if(!(_loc7_ && param2))
         {
            if(this.§2!X§.length > 0)
            {
               if(!(_loc7_ && param2))
               {
                  _loc5_ = this.§2!X§[this.§1!9§];
                  §§goto(addr65);
               }
               §§goto(addr70);
            }
            addr65:
            if(!_loc5_)
            {
               if(!_loc7_)
               {
                  addr70:
                  return;
               }
               addr73:
            }
            _loc5_.setPosition(param1,param2);
            do
            {
               this.§]'§(param3,param4);
            }
            while(_loc7_);
            
            return;
         }
         §§goto(addr73);
      }
      
      protected function §]'§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelSlingshotObject = null;
         if(_loc4_ || this)
         {
            this.§&!P§ = §<i§;
            if(_loc4_ || this)
            {
               this.§72§ = §#!!§;
               if(_loc4_)
               {
                  if(this.§2!X§.length > 0)
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr55:
                        _loc3_ = this.§2!X§[this.§1!9§];
                     }
                     loop7:
                     while(true)
                     {
                        this.§'!7§(§=s§);
                        loop8:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              this.§6%§ = false;
                              addr209:
                              loop5:
                              while(true)
                              {
                                 this.§#!g§ = new Date().time;
                                 loop6:
                                 while(true)
                                 {
                                    this.§`s§.§!!E§(_loc3_,param1,param2);
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          continue loop6;
                                       }
                                       this.§0!&§(this.§1!9§,_loc3_.§>#§ > 0);
                                       while(_loc5_)
                                       {
                                          continue loop5;
                                          §§goto(addr197);
                                       }
                                       addr197:
                                       while(true)
                                       {
                                          this.playBirdShotSound();
                                          while(true)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                if(this.§1!9§ >= this.§2!X§.length)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                else
                                                {
                                                   this.§'!7§(§=!^§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             continue loop3;
                                          }
                                          continue loop3;
                                       }
                                       addr169:
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                     addr139:
                  }
                  if(!_loc3_)
                  {
                     if(!(_loc5_ && param2))
                     {
                        return;
                     }
                     §§goto(addr171);
                  }
                  else
                  {
                     this.mDragging = false;
                  }
                  §§goto(addr213);
               }
               §§goto(addr209);
            }
            §§goto(addr55);
         }
         §§goto(addr139);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc2_ || _loc2_)
         {
            §§push(SoundEngine);
            §§push("BirdShot");
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§-!h§(§§pop());
         }
      }
      
      public function § '§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§1!9§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     if(§§pop() >= this.§2!X§.length)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr64:
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                       addr65:
                                       while(true)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr74:
                                                while(!_loc5_)
                                                {
                                                }
                                                continue loop0;
                                             }
                                             addr73:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop() != §]!i§)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             addr106:
                                          }
                                          while(true)
                                          {
                                             this.§2!X§[_loc4_].update(param1,true,param2);
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr62:
                              }
                              while(true)
                              {
                                 §§goto(addr62);
                              }
                           }
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        §§push(this.mSlingShotState);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr64);
               }
               §§goto(addr65);
            }
            §§goto(addr73);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:LevelSlingshotObject = null;
         var _loc2_:* = 0;
         if(_loc6_)
         {
            this.mDragging = false;
            while(true)
            {
               addr47:
               addr38:
               while(true)
               {
                  this.§@I§();
               }
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr47);
               }
               addr56:
               _loc1_ = this.§2!X§[this.§=!Y§];
               if(_loc6_ || _loc1_)
               {
                  §§push(LevelItemManager.§-`§(_loc1_.name).score);
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§`s§);
                        §§push(_loc2_);
                        §§push(ScoreCollector.§&![§);
                        §§push(true);
                        §§push(_loc1_.x);
                        §§push(_loc1_.y);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(3);
                           if(_loc6_ || _loc2_)
                           {
                              addr126:
                              §§push(§§pop() - §§pop());
                              §§push(§ !_§.§5U§(_loc1_.name));
                           }
                           §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 _loc1_.§!!;§(-1,true);
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    break loop4;
                                 }
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       var _loc3_:*;
                                       §§push((_loc3_ = this).§=!Y§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                    }
                                    continue loop4;
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       _loc3_.§=!Y§ = _loc4_;
                                    }
                                    break loop4;
                                 }
                                 continue loop3;
                              }
                              addr135:
                           }
                           break;
                        }
                        §§goto(addr126);
                     }
                     return true;
                  }
               }
               §§goto(addr135);
            }
         }
         while(this.§=!Y§ >= this.§2!X§.length)
         {
            if(!_loc5_)
            {
               return false;
            }
            if(!_loc6_)
            {
               continue;
            }
            §§goto(addr38);
         }
         §§goto(addr56);
      }
      
      public function §-!^§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:LevelSlingshotObject = null;
         §§push(0);
         if(!(_loc6_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         for each(_loc2_ in this.§2!X§)
         {
            if(!_loc6_)
            {
               §§push(_loc1_);
               if(_loc5_ || this)
               {
                  §§push(int(§§pop() + LevelItemManager.§-`§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §"!2§() : int
      {
         return this.§>u§;
      }
      
      public function §5k§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_ || this)
         {
            §§push(this.§5`§);
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
                     §§push(this.§5`§);
                     if(_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§5`§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §4!E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         §§push(1000);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§`s§.objects.§[&§(this.§<-§,this.§?!K§));
            if(_loc4_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            while(true)
            {
               _loc2_ = §§pop();
               while(true)
               {
                  §§push(_loc2_);
                  loop3:
                  while(true)
                  {
                     §§push(-1);
                     loop4:
                     while(§§pop() == §§pop())
                     {
                        this.§3;§(0.1);
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              continue loop3;
                           }
                           §§push(§§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc4_)
                                 {
                                    addr80:
                                    if(§§pop() <= §§pop())
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                              _loc1_ = §§pop();
                              continue loop3;
                           }
                           §§goto(addr80);
                        }
                        if(!(_loc4_ || this))
                        {
                           break;
                        }
                        return;
                     }
                     §§goto(addr97);
                  }
               }
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr80);
               §§push(0);
            }
         }
      }
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§"!,§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr78:
               while(true)
               {
                  §§push(-§§pop());
                  addr79:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.mSlingShotState == §1!!§);
            loop0:
            while(true)
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
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                           if(_loc3_)
                           {
                              break;
                           }
                           if(_loc2_ || this)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                                 break;
                                 addr80:
                              }
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(true);
                                       break loop3;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc3_ && _loc3_)
                                    {
                                       break loop3;
                                    }
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    continue loop2;
                                 }
                                 addr47:
                                 return §§pop();
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr88);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.mSlingShotState == §1!!§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop();
                        addr77:
                        §§push(this.§`!K§);
                        §§push(this.§9!D§);
                        if(_loc2_)
                        {
                           §§push(§§pop() * §9X§);
                        }
                        §§push(§§pop() > §§pop());
                        if(_loc1_ && _loc2_)
                        {
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr95);
               }
               §§push(Boolean(§§pop()));
            }
            addr95:
            return §§pop();
         }
         §§goto(addr77);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.mDragging = false;
            if(_loc2_ || this)
            {
               this.§'!7§(§1!!§);
            }
         }
         var _loc1_:LevelSlingshotObject = this.§2!X§[this.§1!9§];
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§!!;§(LevelItemSoundResource.§1!k§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.mDragging = true;
         }
         var _loc1_:LevelSlingshotObject = this.§2!X§[this.§1!9§];
         if(!_loc2_)
         {
            _loc1_.§!!;§(LevelItemSoundResource.§<!"§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6%§ = true;
         }
      }
      
      protected function §0!&§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr27);
               }
            }
            else
            {
               if(this.§2!X§[param1])
               {
                  if(!(_loc4_ && this))
                  {
                     _loc3_ = this.§2!X§[param1];
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§%R§.removeChild(_loc3_.sprite);
                        loop0:
                        while(true)
                        {
                           if(param2)
                           {
                              while(true)
                              {
                                 this.§[!R§(this.§2!X§[param1]);
                                 addr118:
                                 while(true)
                                 {
                                 }
                              }
                              addr111:
                           }
                           addr79:
                           while(true)
                           {
                              _loc3_.dispose();
                              addr83:
                              while(_loc5_ || param1)
                              {
                                 continue loop0;
                              }
                              §§goto(addr118);
                           }
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr132);
               }
               §§goto(addr126);
            }
            §§goto(addr126);
         }
         addr27:
      }
      
      public function §[!R§(param1:LevelSlingshotObject) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         §§push(5);
         if(!(_loc9_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(90);
         §§push(0);
         if(!(_loc9_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_ || param1)
            {
               if(§§pop() >= _loc3_)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     if(!_loc9_)
                     {
                        §§push(this.§`s§);
                        if(_loc10_ || _loc2_)
                        {
                           §§push(§§pop().particles);
                           if(_loc10_ || param1)
                           {
                              §§push(§ !_§.§3!d§);
                              if(_loc10_)
                              {
                                 §§push(LevelParticleManager.§9!H§);
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(§ !_§.§0o§);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§push(param1.x);
                                       if(_loc10_ || param1)
                                       {
                                          if(_loc10_ || param1)
                                          {
                                             §§push(param1.y);
                                             if(!_loc9_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(1000);
                                                   if(!_loc9_)
                                                   {
                                                      §§push("");
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         §§push(0);
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(§§pop().§?`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5));
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§pop();
                                                               addr175:
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               loop36:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(param1.sprite);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(-§§pop().height);
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(LevelMain.§@!d§);
                                                                           loop10:
                                                                           for(; _loc10_; if(_loc9_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           },if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr359);
                                                                              }
                                                                              §§goto(addr362);
                                                                           },§§goto(addr457))
                                                                           {
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 addr406:
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       addr416:
                                                                                    }
                                                                                    loop11:
                                                                                    for(; _loc10_ || this; if(!(_loc10_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    },if(_loc10_)
                                                                                    {
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§`s§);
                                                                                             addr215:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().particles);
                                                                                                addr216:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§ !_§.§8,§);
                                                                                                   addr219:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(LevelParticleManager.§9!H§);
                                                                                                      addr222:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§ !_§.§0o§);
                                                                                                         addr225:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.x);
                                                                                                            addr227:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc10_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.y);
                                                                                                                     addr238:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc8_);
                                                                                                                        addr240:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1500);
                                                                                                                           addr241:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push("");
                                                                                                                              addr242:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§ !_§.§ do§(param1.name));
                                                                                                                                 addr247:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * Math.cos(_loc6_));
                                                                                                                                    }
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(!(_loc9_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * Math.sin(_loc6_));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§push(5);
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 20);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§?`§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                    addr298:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop4:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ && this)
                                                                                                                                          {
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                          if(!(_loc9_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(_loc10_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr196:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      addr197:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr425);
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   addr196:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr196);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             addr428:
                                                                                                                                             addr483:
                                                                                                                                             while(!(_loc9_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(Math.random() * -_loc7_);
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr456);
                                                                                                                                                      §§push(2);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr457);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr535);
                                                                                                                                                   }
                                                                                                                                                   addr534:
                                                                                                                                                }
                                                                                                                                                §§goto(addr535);
                                                                                                                                             }
                                                                                                                                             addr491:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop11;
                                                                                                                                             }
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr236:
                                                                                                               }
                                                                                                               §§goto(addr240);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    },§§goto(addr428))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(Math.random() * -_loc8_);
                                                                                                if(_loc9_ && _loc3_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                addr333:
                                                                                                §§push(2);
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   continue loop10;
                                                                                                }
                                                                                                addr456:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr457:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr470:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  continue loop36;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(param1.sprite);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(-§§pop().width);
                                                                                                                        addr479:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(LevelMain.§@!d§);
                                                                                                                           break loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr515:
                                                                                                                     addr477:
                                                                                                                  }
                                                                                                               }
                                                                                                               addr513:
                                                                                                               addr470:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr535:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                               }
                                                                                                               addr535:
                                                                                                            }
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               addr495:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr510:
                                                                                                                  §§push(§§pop() / (180 / Math.PI));
                                                                                                                  addr511:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  continue loop38;
                                                                                                               }
                                                                                                               §§goto(addr515);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            §§goto(addr513);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr470);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr479);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr359:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr491);
                                                                                    }
                                                                                    §§goto(addr495);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    addr533:
                                                                                 }
                                                                                 §§goto(addr534);
                                                                              }
                                                                              §§goto(addr510);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr483);
                                                                           }
                                                                        }
                                                                        §§goto(addr416);
                                                                     }
                                                                     §§goto(addr477);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr175);
               }
               else
               {
                  §§push(_loc4_);
                  if(_loc10_ || this)
                  {
                     §§goto(addr533);
                     §§push(Math.random() * (720 / _loc3_));
                  }
               }
               §§goto(addr535);
            }
            §§goto(addr196);
         }
      }
      
      public function § -§(param1:LevelSlingshotObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0!&§(this.§2!X§.indexOf(param1));
         }
      }
      
      public function §2!B§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:LevelSlingshotObject = null;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc7_ && _loc2_))
            {
               while(true)
               {
                  if(§§pop() >= this.§2!X§.length - 1)
                  {
                     if(_loc6_ || _loc1_)
                     {
                        addr261:
                        if(this.§%R§.numChildren > 0)
                        {
                           §§push(this.§%R§);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§pop().removeChildAt(0);
                              if(_loc6_)
                              {
                                 §§goto(addr261);
                              }
                              §§goto(addr349);
                           }
                           §§goto(addr261);
                        }
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc7_ && _loc1_))
                           {
                              §§push(int(§§pop()));
                              if(_loc6_ || _loc1_)
                              {
                              }
                              addr345:
                              if(§§pop() < this.§2!X§.length)
                              {
                                 _loc2_ = this.§2!X§[_loc1_];
                                 if(_loc6_ || this)
                                 {
                                    this.§%R§.addChildAt(_loc2_.sprite,0);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(_loc1_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc7_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc1_ = §§pop();
                                    }
                                 }
                                 addr344:
                                 §§goto(addr345);
                                 §§push(_loc1_);
                              }
                              §§goto(addr349);
                           }
                           _loc1_ = §§pop();
                           if(_loc6_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr349);
                        }
                        break;
                     }
                     §§goto(addr349);
                  }
                  else
                  {
                     §§push(Number(Math.sqrt((this.§1X§ - this.§2!X§[_loc1_].x) * (this.§1X§ - this.§2!X§[_loc1_].x) + (this.§`J§ - this.§2!X§[_loc1_].y) * (this.§`J§ - this.§2!X§[_loc1_].y))));
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc3_ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(Number(Math.sqrt((this.§1X§ - this.§2!X§[_loc1_ + 1].x) * (this.§1X§ - this.§2!X§[_loc1_ + 1].x) + (this.§`J§ - this.§2!X§[_loc1_ + 1].y) * (this.§`J§ - this.§2!X§[_loc1_ + 1].y))));
                           if(_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(!_loc7_)
                              {
                                 addr135:
                                 if(_loc4_ < _loc3_)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       _loc5_ = this.§2!X§[_loc1_];
                                       if(!_loc7_)
                                       {
                                          this.§2!X§.splice(_loc1_,1);
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          addr182:
                                          while(true)
                                          {
                                             this.§2!X§.splice(_loc1_ + 1,0,_loc5_);
                                             continue loop2;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr261);
                                    }
                                    §§goto(addr349);
                                 }
                                 §§goto(addr207);
                              }
                              break;
                           }
                           §§goto(addr135);
                        }
                        addr349:
                        return;
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr344);
            }
            §§goto(addr345);
         }
      }
      
      public function §-4§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(0);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= this.§2!X§.length)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           return null;
                        }
                        break;
                     }
                  }
                  else if(this.§2!X§[_loc3_])
                  {
                     if(!_loc5_)
                     {
                        if(this.§2!X§[_loc3_].isInCoordinates(param1,param2))
                        {
                           break;
                        }
                        addr62:
                        §§push(_loc3_);
                        if(_loc4_ || param2)
                        {
                           addr83:
                           _loc3_ = int(§§pop() + 1);
                           continue;
                        }
                        §§goto(addr83);
                     }
                     break;
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr83);
         }
         return this.§2!X§[_loc3_];
      }
      
      public function §80§(param1:Number, param2:Number) : LevelSlingshot
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            while(true)
            {
               §§push(this.§1X§);
               addr251:
               while(true)
               {
                  §§push(this.§9!D§);
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
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop29:
                                             while(true)
                                             {
                                                §§pop();
                                                loop28:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      §§push(this.§1X§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§9!D§);
                                                         while(true)
                                                         {
                                                            §§push(4);
                                                            addr201:
                                                            while(_loc3_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               while(!_loc4_)
                                                               {
                                                                  if(!(_loc3_ || param1))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr200:
                                                      }
                                                      addr214:
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc3_ || param2)
                                                            {
                                                               break loop21;
                                                            }
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`J§);
                                                                     addr119:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9!D§);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§push(4);
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    addr156:
                                                                                    §§push(§§pop() - §§pop() / §§pop());
                                                                                    while(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          addr161:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   addr167:
                                                                                                   if(_loc3_ || param2)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   addr245:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                      §§goto(addr167);
                                                                                                   }
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop29;
                                                                                          }
                                                                                          addr66:
                                                                                          continue loop28;
                                                                                          if(_loc4_ && param2)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            return this;
                                                                                                         }
                                                                                                         addr184:
                                                                                                         while(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         addr114:
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   return null;
                                                                                                   addr94:
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§goto(addr161);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                             }
                                                                                             addr183:
                                                                                          }
                                                                                          §§goto(addr184);
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr157:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr200);
                                                                              }
                                                                              §§goto(addr201);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr156);
                                                                     }
                                                                     §§goto(addr204);
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
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_ || param2)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§goto(addr245);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr268);
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§push(this.§?!K§);
               if(_loc3_)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           §§push(§§pop() <= §§pop());
                           if(!_loc4_)
                           {
                              §§goto(addr66);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr119);
               }
               §§goto(addr157);
            }
         }
         §§goto(addr114);
      }
      
      public function § !g§(param1:LevelModel) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§>!Q§ = null;
         if(!_loc5_)
         {
            param1.§=0§ = this.§1X§;
            if(_loc6_ || _loc2_)
            {
               addr36:
               param1.§?!=§ = this.§`J§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§2!X§.length)
            {
               _loc3_ = this.§2!X§[_loc2_];
               _loc4_ = new §>!Q§();
               if(!(_loc5_ && _loc2_))
               {
                  _loc4_.x = _loc3_.x;
                  while(true)
                  {
                     _loc4_.y = _loc3_.y;
                     loop2:
                     while(!(_loc5_ && param1))
                     {
                        while(true)
                        {
                           _loc4_.id = _loc3_.name;
                           loop4:
                           while(_loc6_)
                           {
                              loop5:
                              do
                              {
                                 param1.§5$§(_loc4_);
                                 while(!_loc5_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop4;
                              }
                              while(false);
                              
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr129);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §4I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§2!X§.length > 0)
         {
            this.§ -§(this.§2!X§[0]);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §<2§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() < this.§2!X§.length)
               {
                  if(this.§2!X§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr283);
                  }
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(this.§1X§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() > param1.x);
                     loop4:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
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
                                       loop9:
                                       while(!_loc6_)
                                       {
                                          §§push(this.§1X§);
                                          loop10:
                                          for(; _loc5_ || param1; while(true)
                                          {
                                             if(_loc6_ && param1)
                                             {
                                                continue loop10;
                                             }
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr145);
                                             §§push(§§pop() > param1.y);
                                             §§goto(addr188);
                                          },continue loop1)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() < param2.x);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr210:
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
                                                               if(!§§pop())
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(§§pop())
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc5_ || param1))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    _loc3_.push(this);
                                                                                    addr110:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       loop23:
                                                                                       while(_loc5_ || param1)
                                                                                       {
                                                                                          §§push(this.§`J§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             addr265:
                                                                                             _loc4_ = §§pop();
                                                                                             break loop9;
                                                                                          }
                                                                                          §§push(§§pop() < param2.y);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr77:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr214:
                                                                                                while(_loc5_ || param1)
                                                                                                {
                                                                                                   §§pop();
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop9;
                                                                                             addr180:
                                                                                          }
                                                                                          addr48:
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          addr145:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop20;
                                                                                             §§goto(addr48);
                                                                                          }
                                                                                       }
                                                                                       addr290:
                                                                                       break loop1;
                                                                                    }
                                                                                    addr112:
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(this.§`J§);
                                                                                       continue loop10;
                                                                                       §§goto(addr112);
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr283:
                                                                                 _loc3_.push(this.§2!X§[_loc4_]);
                                                                                 §§goto(addr290);
                                                                              }
                                                                              §§goto(addr110);
                                                                           }
                                                                           return _loc3_;
                                                                           addr93:
                                                                        }
                                                                        §§goto(addr180);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr265);
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr283);
            }
            §§push(_loc4_);
            if(_loc5_)
            {
               §§goto(addr265);
               §§push(§§pop() + 1);
            }
            §§goto(addr265);
         }
      }
      
      public function §;2§() : Array
      {
         return [this.§%T§,this.§7!N§];
      }
      
      public function §8L§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelSlingshotObject = this.§2!]§(param1,param2,param3);
         if(!_loc5_)
         {
            this.§2!B§();
         }
         return _loc4_;
      }
      
      public function §"Y§() : Number
      {
         return this.§2!X§.length;
      }
   }
}
