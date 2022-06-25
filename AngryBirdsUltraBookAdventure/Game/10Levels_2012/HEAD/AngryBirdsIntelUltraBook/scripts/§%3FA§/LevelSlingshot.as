package §?A§
{
   import §#!X§.LevelModel;
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'N§.Log;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §6Z§.§@x§;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemSoundResource;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelSlingshot
   {
      
      public static const §=#§:int = 0;
      
      public static const §0C§:int = 1;
      
      public static const §0m§:int = 2;
      
      public static const §<L§:int = 3;
      
      public static const §[D§:int = 5;
      
      public static const §+!%§:int = 3151368;
      
      protected static const §<U§:int = 8;
      
      protected static const §4!<§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §=h§:Number = -0.7;
      
      protected static const §4Q§:Number = 0;
      
      protected static var §?§:Texture;
      
      public static const §2!U§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=#§ = 0;
            while(true)
            {
               §0C§ = 1;
               loop1:
               for(; !(_loc2_ && LevelSlingshot); if(_loc2_ && _loc2_)
               {
                  continue;
               },§4Q§ = 0,while(!_loc2_)
               {
                  §2!U§ = 0.4;
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr29);
               },§§goto(addr88))
               {
                  §0m§ = 2;
                  while(true)
                  {
                     §<L§ = 3;
                     loop3:
                     while(_loc1_)
                     {
                        §[D§ = 5;
                        while(true)
                        {
                           §+!%§ = 3151368;
                           loop5:
                           while(!(_loc2_ && _loc1_))
                           {
                              §<U§ = 8;
                              while(true)
                              {
                                 §4!<§ = 0;
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    BIRD_LAUNCH_FORCE = 46.25;
                                    while(true)
                                    {
                                       BIRD_LAUNCH_FORCE_GREEN = 52.5;
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          §=h§ = -0.7;
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop7;
                                             addr29:
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      return;
                                                      addr45:
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop9;
                                                continue loop9;
                                             }
                                          }
                                          continue loop1;
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
            }
         }
         §§goto(addr45);
      }
      
      public var §6f§:LevelMain;
      
      public var §`!Z§:Number;
      
      public var §[§:Number;
      
      public var §@=§:Number;
      
      protected var §6=§:Number;
      
      protected var §48§:Number;
      
      protected var §6!R§:Number;
      
      protected var §[m§:Number;
      
      public var §]!5§:Number;
      
      public var §%d§:Boolean = false;
      
      protected var §[!K§:Number;
      
      public var §+I§:Vector.<LevelSlingshotObject>;
      
      public var §=y§:int;
      
      public var §2E§:int;
      
      public var §&V§:Number;
      
      public var §,!d§:Sprite;
      
      public var §>!;§:int = 0;
      
      public var §-§:Number = 0;
      
      public var §^!G§:Array;
      
      public var §^x§:Array;
      
      public var mSlingShotState:int;
      
      public var §@d§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §;!"§:Boolean = false;
      
      public var §!m§:Number;
      
      protected var §1!J§:Sprite;
      
      protected var §>Q§:§!!9§;
      
      protected var §+S§:§!!9§;
      
      protected var §!'§:Sprite;
      
      protected var §0!S§:Sprite;
      
      protected var §<7§:Sprite;
      
      protected var §!!i§:§&p§;
      
      protected var §+!;§:§&p§;
      
      private var §<!!§:Number = 0;
      
      private var §,M§:int = 0;
      
      protected var §0!2§:Number = -0.7;
      
      protected var §7D§:Number = 0;
      
      public function LevelSlingshot(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§@x§ = null;
         if(_loc7_ || param3)
         {
            this.§+I§ = new Vector.<LevelSlingshotObject>();
            while(true)
            {
               super();
               addr102:
               while(true)
               {
                  this.§6f§ = param1;
               }
            }
            addr111:
         }
         loop2:
         while(true)
         {
            this.§1!J§ = param3;
            addr91:
            while(true)
            {
               if(!_loc6_)
               {
                  if(!param2)
                  {
                     Log.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                     break;
                  }
                  continue loop2;
               }
               §§goto(addr102);
            }
            addr284:
            this.§8!f§(§<L§);
            addr274:
            if(!_loc6_)
            {
               addr254:
               this.§!m§ = 0;
               addr258:
               if(!_loc6_)
               {
                  if(_loc7_ || this)
                  {
                     this.§3!§();
                     addr246:
                     if(_loc7_ || this)
                     {
                        this.update(0,true);
                        addr234:
                        if(!(_loc6_ && param2))
                        {
                           this.§+!5§();
                           addr220:
                           if(!(_loc6_ && param3))
                           {
                              this.updateAnimations(0);
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       if(!(_loc7_ || param2))
                                       {
                                          §§goto(addr258);
                                       }
                                       return;
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr220);
                           }
                           addr309:
                           §§push(Log);
                           §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                           if(!_loc6_)
                           {
                              §§push(this.§`!Z§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    addr336:
                                    §§push(§§pop() + " ");
                                    if(!(_loc6_ && this))
                                    {
                                       addr345:
                                       §§push(§§pop() + this.§[§);
                                    }
                                    §§pop().log(§§pop());
                                    this.§8!f§(§<L§);
                                    addr300:
                                    if(!_loc6_)
                                    {
                                       addr277:
                                       §§goto(addr254);
                                    }
                                    if(this.§+I§.length <= 0)
                                    {
                                       §§goto(addr309);
                                    }
                                    this.§8!f§(§=#§);
                                    §§goto(addr277);
                                    addr350:
                                    addr354:
                                 }
                              }
                              §§goto(addr345);
                           }
                           §§goto(addr336);
                           addr241:
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr350);
                  }
                  §§goto(addr300);
               }
               §§goto(addr336);
            }
            §§goto(addr284);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§<!!§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§=y§ < this.§+I§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§+I§.length > 0)
            {
               this.§,!-§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§+I§ = null;
               while(true)
               {
                  §§push(this.§1!J§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        addr96:
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(this.§1!J§);
                                 break;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        while(!_loc2_)
                        {
                           this.§1!J§ = null;
                           while(true)
                           {
                           }
                        }
                        continue loop0;
                        addr96:
                     }
                     while(true)
                     {
                        this.§,!d§ = null;
                        while(!_loc2_)
                        {
                           this.§^!G§ = null;
                           do
                           {
                              this.§^x§ = null;
                           }
                           while(!_loc1_);
                           
                           if(!_loc1_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              return;
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr58);
                     }
                  }
                  break;
               }
               §§pop().dispose();
               §§goto(addr96);
            }
         }
      }
      
      public function §?l§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:LevelSlingshotObject = this.§?![§(param1,param2,param3,param4);
         if(_loc7_)
         {
            _loc5_.§import§();
         }
         return _loc5_;
      }
      
      protected function §?![§(param1:String, param2:Number, param3:Number, param4:int = -1) : LevelSlingshotObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelSlingshotObject = new LevelSlingshotObject(this,new Sprite(),param1,param2,param3);
         if(!(_loc7_ && param2))
         {
            if(param4 >= 0)
            {
               this.§+I§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  addr97:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§+I§.push(_loc5_);
            }
         }
         §§goto(addr97);
      }
      
      public function §8!f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               while(true)
               {
                  §§push(§=#§);
                  addr345:
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§0C§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           loop5:
                           while(true)
                           {
                              §§push(§0m§);
                              addr285:
                              while(!_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    break loop5;
                                 }
                                 §§push(this.mSlingShotState);
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           if(_loc2_)
                           {
                              this.§&V§ = 10000;
                           }
                           loop24:
                           while(true)
                           {
                              this.§;!"§ = false;
                              loop15:
                              while(true)
                              {
                                 this.§7§();
                                 loop18:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop4;
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr39:
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(!_loc3_)
                                             {
                                                return;
                                             }
                                             continue loop15;
                                          }
                                          while(true)
                                          {
                                             if(_loc3_ && this)
                                             {
                                                continue loop18;
                                             }
                                             if(!(_loc3_ && param1))
                                             {
                                                continue loop14;
                                             }
                                             addr339:
                                             while(true)
                                             {
                                                continue loop14;
                                             }
                                             §§goto(addr39);
                                          }
                                          addr124:
                                       }
                                       loop28:
                                       while(true)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   continue loop14;
                                                }
                                                addr262:
                                                while(true)
                                                {
                                                   this.§7§();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      this.§&V§ = 2000;
                                                      addr223:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop2;
                                                            }
                                                            continue loop14;
                                                         }
                                                         addr298:
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         this.§7§();
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.§+I§[this.§=y§].setPosition(this.§6!R§ - this.§+I§[this.§=y§].radius * Math.cos(this.§-§ / (180 / Math.PI)),this.§[m§ + this.§+I§[this.§=y§].radius * Math.sin(this.§-§ / (180 / Math.PI)));
                                                               §§goto(addr124);
                                                            }
                                                            continue loop28;
                                                         }
                                                         addr143:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr223);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!this.mDragging)
                                                         {
                                                            this.§7§();
                                                            continue loop28;
                                                         }
                                                      }
                                                      addr203:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop24;
                                                   }
                                                   addr215:
                                                   while(true)
                                                   {
                                                      this.mDragging = false;
                                                      break loop14;
                                                   }
                                                }
                                                addr150:
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§;!"§ = false;
                                       §§goto(addr150);
                                    }
                                 }
                              }
                           }
                        }
                        while(_loc2_ || this)
                        {
                           this.§7§();
                           continue loop0;
                        }
                        addr349:
                        while(true)
                        {
                           this.§&V§ = 1000;
                           §§goto(addr339);
                        }
                     }
                  }
                  while(true)
                  {
                     this.§7§();
                     §§goto(addr349);
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(§<L§);
                  for(; §§pop() != §§pop(); §§push(§[D§),if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },if(!(_loc3_ && this))
                  {
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           §§goto(addr203);
                        }
                        §§goto(addr28);
                     }
                     else
                     {
                        §§goto(addr345);
                     }
                  },§§goto(addr285))
                  {
                     §§push(this.mSlingShotState);
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr283);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr262);
               }
            }
         }
         §§goto(addr215);
      }
      
      public function get levelMain() : LevelMain
      {
         return this.§6f§;
      }
      
      public function §9[§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.mSlingShotState == §<L§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr59);
               }
               §§goto(addr66);
            }
            addr59:
            §§push(§§pop());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(!_loc1_)
               {
                  addr66:
                  §§pop();
                  §§push(this.§&V§ <= 0);
                  if(!_loc1_)
                  {
                     return Boolean(§§pop());
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §>!Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Animation = this.getSlingshotAnimation();
         var _loc2_:§?!B§ = _loc1_.getFrame(0);
         var _loc3_:§?!B§ = _loc1_.getFrame(1);
         if(_loc4_ || _loc3_)
         {
            this.§!!i§ = new §&p§(_loc2_.texture);
            while(true)
            {
               §§push(this.§!!i§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr283:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
               if(_loc5_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr243);
            }
         }
         §§goto(addr167);
      }
      
      protected function getSlingshotAnimation() : Animation
      {
         return this.§6f§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §0<§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!_loc2_)
         {
            this.§6=§ = this.§`!Z§;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§48§ = this.§[§;
               while(_loc3_)
               {
                  this.§[!K§ = §5a§.§]!V§;
                  if(!(_loc2_ && _loc2_))
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            _loc1_ = null;
            return;
         }
      }
      
      protected function §if §() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            if(!§?§)
            {
               if(_loc4_)
               {
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc3_ && _loc3_))
                  {
                     §?§ = this.§6f§.textureManager.getTextureFromBitmapData(_loc2_);
                  }
               }
               addr54:
               var _loc1_:§&p§ = new §&p§(§?§);
               if(_loc4_)
               {
                  _loc1_.rotation = Math.PI;
                  loop0:
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     addr195:
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        addr187:
                        while(true)
                        {
                           this.§<7§.addChild(_loc1_);
                        }
                        addr114:
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§0!S§.addChild(this.§+S§);
                           addr121:
                           if(!(_loc4_ || _loc1_))
                           {
                              loop8:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr103:
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr114);
                                       }
                                       while(true)
                                       {
                                          this.§>Q§ = new §!!9§(2,2,§+!%§);
                                          continue loop0;
                                       }
                                       addr172:
                                    }
                                    else
                                    {
                                       while(!_loc3_)
                                       {
                                          this.§0!S§ = new Sprite();
                                          §§goto(addr103);
                                       }
                                       §§goto(addr187);
                                       addr137:
                                    }
                                 }
                                 while(_loc4_)
                                 {
                                    this.§+S§ = new §!!9§(2,2,§+!%§);
                                    continue loop8;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§!'§ = new Sprite();
                                 §§goto(addr172);
                              }
                              addr179:
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr179);
            }
            this.§<7§ = new Sprite();
         }
         §§goto(addr54);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§[m§);
         if(!_loc7_)
         {
            §§push(§§pop() / LevelMain.§!5§);
            if(!(_loc7_ && _loc3_))
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§6!R§);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() / LevelMain.§!5§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(_loc6_)
            {
               §§push(8);
               §§push(this.§[!K§);
               if(!_loc7_)
               {
                  §§push(this.§]!5§);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        addr77:
                        §§push(§§pop() / this.§[!K§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc6_)
                     {
                        addr82:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc7_)
                     {
                        §§push(this.§<7§);
                        while(true)
                        {
                           §§push(_loc3_);
                           while(true)
                           {
                              §§pop().x = §§pop();
                              while(true)
                              {
                                 §§push(this.§<7§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr558:
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr596);
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr82);
         }
         §§goto(addr31);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§+I§.length <= 0)
            {
               loop1:
               while(true)
               {
                  this.§-!k§();
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§?![§("BIRD_SARDINE",this.§`!Z§,this.§[§);
                     while(_loc1_)
                     {
                        this.§8!f§(§0m§);
                        if(_loc1_ || this)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               return;
            }
            this.§,!-§(0,true);
         }
      }
      
      protected function §-!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            SoundEngine.§`B§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8!f§(§[D§);
         }
      }
      
      public function §7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push(this.§6=§);
            §§push(this.§48§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§[!K§);
               if(_loc1_)
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
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(_loc10_)
         {
            §§push(this.§6!R§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
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
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr1448:
                                    while(true)
                                    {
                                       §§push(this.§[m§);
                                       addr1429:
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(param2);
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr1433:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr1447:
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
                                          this.§]!5§ = Math.sqrt((param2 - this.§48§) * (param2 - this.§48§) + (param1 - this.§6=§) * (param1 - this.§6=§));
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§]!5§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§[!K§);
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         while(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§6=§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[!K§);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6=§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]!5§);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          loop25:
                                                                                          while(!(_loc9_ && param2))
                                                                                          {
                                                                                             §§push(this.§48§);
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§[!K§);
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   loop28:
                                                                                                   while(!_loc9_)
                                                                                                   {
                                                                                                      §§push(this.§48§);
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§]!5§);
                                                                                                               addr534:
                                                                                                               if(_loc9_ && param2)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(param1);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§push(this.§6=§);
                                                                                                                     loop164:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        addr554:
                                                                                                                        loop165:
                                                                                                                        for(; !(_loc9_ && param3); continue loop164)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop166:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§]!5§);
                                                                                                                              addr564:
                                                                                                                              loop167:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    addr566:
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       loop168:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || param3)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr586:
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ || param1)
                                                                                                                                                         {
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                            loop53:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                               addr1201:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(4);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1187:
                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                           loop56:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§[!K§);
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    loop70:
                                                                                                                                                                                    while(!(_loc9_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       loop71:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          loop72:
                                                                                                                                                                                          while(_loc10_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             loop73:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   loop75:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         loop76:
                                                                                                                                                                                                         for(; _loc10_; if(!(_loc10_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         },§§goto(addr189))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               loop78:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  while(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop80:
                                                                                                                                                                                                                        while(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           while(!(_loc9_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc10_ || param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(this.§-§);
                                                                                                                                                                                                                              loop82:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                    addr1043:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(-90);
                                                                                                                                                                                                                                 while(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    while(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       loop85:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                             break loop167;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                          addr407:
                                                                                                                                                                                                                                          if(!(_loc10_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§48§);
                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop165;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   loop153:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      addr1077:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§]!5§);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1087:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            loop144:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  param1 = §§pop();
                                                                                                                                                                                                                                                                  loop146:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§48§);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                        loop148:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                              if(_loc10_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§48§);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                    addr1014:
                                                                                                                                                                                                                                                                                    while(_loc10_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       while(!_loc9_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§]!5§);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1013:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    loop110:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             param2 = §§pop();
                                                                                                                                                                                                                                                                                             loop112:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§]!5§ = _loc7_;
                                                                                                                                                                                                                                                                                                loop113:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop146;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   this.§6!R§ = param1;
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         this.§[m§ = param2;
                                                                                                                                                                                                                                                                                                         loop115:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§]!5§);
                                                                                                                                                                                                                                                                                                                  while(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§[!K§);
                                                                                                                                                                                                                                                                                                                     while(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(0.45);
                                                                                                                                                                                                                                                                                                                        loop119:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop165;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop168;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop166;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!(_loc10_ || this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop148;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(this.§%d§);
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop8;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr233:
                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr247:
                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ && param2)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop78;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     this.§`h§();
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  loop123:
                                                                                                                                                                                                                                                                                                                                                                  while(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop115;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        this.§%d§ = false;
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop123;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 this.§]!5§ = _loc8_;
                                                                                                                                                                                                                                                                                                                                                                                 break loop123;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              break loop75;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop56;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr618);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1233);
                                                                                                                                                                                                                                                                                                                                                                        addr616:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr842);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     this.§6!R§ = param1;
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr377);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr53);
                                                                                                                                                                                                                                                                                                                                                               continue loop76;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr189:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr255);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr893);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr908);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr233);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr887);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr255);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ || param1))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr711:
                                                                                                                                                                                                                                                                                                                                          while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1351);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc10_ || param3)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ && param3)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr953);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr886);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr739);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1166);
                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1437);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1171);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr934);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr718);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr331);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop119;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop168;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop165;
                                                                                                                                                                                                                                                                                                                        if(_loc9_ && this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop75;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr175);
                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr911);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr175);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr775);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr819);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr464);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr525:
                                                                                                                                                                                                                                                                                                                           if(_loc10_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr534);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1163);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1162:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop144;
                                                                                                                                                                                                                                                                                                                                 §§goto(addr525);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr680:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr803);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop16;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     param2 = §§pop();
                                                                                                                                                                                                                                                                                                                     §§goto(addr490);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(!_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                                                                  §§push(this.§-§);
                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§pop().§-§ = §§pop();
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.mDragging);
                                                                                                                                                                                                                                                                                                                     break loop80;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop112;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1147);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1239);
                                                                                                                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop113;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop146;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       addr608:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop110;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          param1 = §§pop();
                                                                                                                                                                                                                                                                                          §§goto(addr616);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1429);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                                                                 addr1074:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop153;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1073:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop17;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1013);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   break loop85;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1316:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr447);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1318);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(_loc10_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                             if(_loc10_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr881);
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr882);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop71;
                                                                                                                                                                                                                                    if(!(_loc10_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    if(_loc10_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr680);
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1074);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr802);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr771);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr864);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop70;
                                                                                                                                                                                                                                 addr631:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc10_ || param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop82;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(-90);
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr641);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr863);
                                                                                                                                                                                                                                    §§goto(addr586);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1043);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                                                                 §§goto(addr1206);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(!(_loc9_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1202);
                                                                                                                                                                                                                              §§goto(addr1129);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1129:
                                                                                                                                                                                                                           §§goto(addr1261);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1168);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1059);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1447);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1448);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1180);
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1162);
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1204);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop53;
                                                                                                                                                                  §§goto(addr1201);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr631);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr822);
                                                                                                                                                }
                                                                                                                                                §§goto(addr834);
                                                                                                                                             }
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1022);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr774);
                                                                                                                              }
                                                                                                                              while(_loc10_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1055);
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 §§goto(addr566);
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(_loc10_ || param1)
                                                                                                                        {
                                                                                                                           §§goto(addr819);
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1077);
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1316);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1389);
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
                                                         this.§]!5§ = Math.sqrt((this.§[m§ - this.§48§) * (this.§[m§ - this.§48§) + (this.§6!R§ - this.§6=§) * (this.§6!R§ - this.§6=§));
                                                         addr1389:
                                                         addr1351:
                                                         return §§pop();
                                                      }
                                                   }
                                                   §§goto(addr1287);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr1437);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1448);
      }
      
      protected function §`h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            SoundEngine.§`B§("SlingshotStreched");
         }
      }
      
      public function §30§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§`!Z§);
            §§push(this.§[§);
            if(!_loc3_)
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
         if(_loc7_)
         {
            §§push(§§pop() - this.§`!Z§);
            if(_loc7_ || param3)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            this.§`!Z§ = param1;
         }
         §§push(param2);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§[§);
            if(_loc7_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            this.§[§ = param2;
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§@=§);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§@=§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§48§);
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§48§ = §§pop();
                  addr187:
                  addr138:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§[m§);
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§[m§ = §§pop();
                     while(!_loc6_)
                     {
                        if(!(_loc6_ && param3))
                        {
                           return;
                           addr72:
                        }
                     }
                     continue loop0;
                  }
                  loop5:
                  while(!(_loc6_ && param1))
                  {
                     §§push(this);
                     §§push(this.§6!R§);
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     §§pop().§6!R§ = §§pop();
                     loop6:
                     while(true)
                     {
                        if(_loc6_ && this)
                        {
                           continue loop5;
                        }
                        if(!_loc7_)
                        {
                           break;
                        }
                        if(param3)
                        {
                           if(_loc7_)
                           {
                              this.updateAnimations(0);
                           }
                           continue;
                        }
                        addr59:
                        while(true)
                        {
                           this.§@d§ = true;
                           if(_loc7_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§6=§);
            if(_loc7_ || param1)
            {
               §§push(§§pop() + _loc4_);
            }
            §§pop().§6=§ = §§pop();
            §§goto(addr138);
         }
         §§goto(addr72);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:LevelSlingshotObject = null;
         _loc2_ = this.§+I§[this.§=y§];
         §§push(this.§]!5§);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() / this.§[!K§);
            if(_loc4_ || this)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc1_)
            {
               if(_loc2_ != null)
               {
                  if(_loc4_)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           addr84:
                           §§push(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                           if(_loc4_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 §§goto(addr116);
                              }
                              _loc1_ = §§pop();
                              addr120:
                              §§push(_loc1_);
                              if(!(_loc5_ && this))
                              {
                                 §§push(§§pop() * _loc3_);
                              }
                           }
                           else
                           {
                              addr108:
                              §§push(Number(§§pop()));
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr116);
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr120);
                     }
                     else
                     {
                        §§push(LevelSlingshot.BIRD_LAUNCH_FORCE);
                        if(_loc4_)
                        {
                           §§goto(addr108);
                        }
                     }
                     addr116:
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                     }
                     return §§pop();
                  }
                  §§goto(addr84);
               }
               §§goto(addr120);
            }
            §§goto(addr84);
         }
         §§goto(addr48);
      }
      
      public function §&n§() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LevelSlingshotObject = null;
         if(!_loc3_)
         {
            if(this.§+I§.length <= this.§=y§)
            {
               return null;
            }
            if(!(_loc3_ && _loc2_))
            {
               _loc1_ = this.§+I§[this.§=y§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §,!E§() : Point
      {
         return new Point(this.§6=§,this.§48§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(_loc5_ || param1)
         {
            this.§[e§(param1);
            loop0:
            while(true)
            {
               if(this.§@d§)
               {
                  while(true)
                  {
                     this.updateAnimations(param1);
                     addr103:
                     while(true)
                     {
                     }
                     loop7:
                     while(_loc5_ || _loc3_)
                     {
                        loop8:
                        while(true)
                        {
                           if(this.mSlingShotState == §<L§)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr49:
                                 if(!_loc5_)
                                 {
                                    continue loop7;
                                 }
                                 addr51:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       if(this.§&V§ >= 0)
                                       {
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             this.§&V§ = 0;
                                             continue loop7;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr103);
                                       §§goto(addr51);
                                    }
                                    addr109:
                                    _loc3_ = null;
                                    if(!_loc4_)
                                    {
                                       if(this.§+I§.length > 0)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             _loc3_ = this.§+I§[this.§=y§];
                                             addr133:
                                             §§push(Boolean(_loc3_));
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || param2)
                                                   {
                                                      _loc3_.§`!d§(param1);
                                                      if(!_loc4_)
                                                      {
                                                         addr356:
                                                         if(_loc3_)
                                                         {
                                                            addr341:
                                                            if(this.mSlingShotState != §=#§)
                                                            {
                                                               addr287:
                                                               addr285:
                                                               if(this.mSlingShotState == §0C§)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        addr294:
                                                                        addr292:
                                                                        §§push(_loc3_.§@!5§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr356);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    this.§8!f§(§0m§);
                                                                                    addr318:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr342:
                                                                                    if(this.§&V§ <= 0)
                                                                                    {
                                                                                       addr346:
                                                                                       this.§8!f§(§0C§);
                                                                                       addr351:
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          _loc3_.§9d§();
                                                                                          addr333:
                                                                                          addr353:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr363:
                                                                                          return;
                                                                                          addr362:
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§push(this.mSlingShotState);
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§0m§);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr220:
                                                                                    §§push(_loc3_);
                                                                                    §§push(this.§6!R§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(_loc3_.radius);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.cos(this.§-§ / (180 / Math.PI)));
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             addr249:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             §§push(this.§[m§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr253:
                                                                                                §§push(_loc3_.radius);
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop() * Math.sin(this.§-§ / (180 / Math.PI)));
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                          §§pop().setPosition(§§pop(),§§pop());
                                                                                          addr277:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(this.§;!"§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr157:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§]!5§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(this.§[!K§);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr189:
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               §§push(this.§-§);
                                                                                                            }
                                                                                                            §§pop().§2!G§(§§pop(),§§pop());
                                                                                                            addr193:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr318);
                                                                                                            }
                                                                                                            §§goto(addr363);
                                                                                                         }
                                                                                                         §§goto(addr189);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr346);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr193);
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       §§goto(addr253);
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                                 addr357:
                                                                                 this.§8!f§(§<L§);
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                        §§goto(addr341);
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr356);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr353);
                                       }
                                       §§goto(addr133);
                                    }
                                    addr53:
                                 }
                                 else
                                 {
                                    §§goto(addr109);
                                 }
                                 §§goto(addr318);
                              }
                              §§goto(addr58);
                           }
                           else
                           {
                              this.§>9§(param1,param2);
                           }
                           §§goto(addr49);
                        }
                        §§goto(addr363);
                     }
                  }
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§&V§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§&V§ = §§pop();
                  continue loop0;
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §-!+§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:LevelSlingshotObject = null;
         if(_loc7_ || this)
         {
            if(this.§+I§.length > 0)
            {
               if(!(_loc6_ && param2))
               {
                  addr49:
                  _loc5_ = this.§+I§[this.§=y§];
                  §§goto(addr56);
               }
               §§goto(addr98);
            }
            addr56:
            if(!_loc5_)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
            else
            {
               addr98:
               _loc5_.setPosition(param1,param2);
               do
               {
                  this.§2!G§(param3,param4);
               }
               while(_loc6_ && param1);
               
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected function §2!G§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(_loc5_ || this)
         {
            this.§0!2§ = §=h§;
            if(_loc5_ || _loc3_)
            {
               this.§7D§ = §4Q§;
               if(_loc5_)
               {
                  if(this.§+I§.length > 0)
                  {
                     if(!_loc4_)
                     {
                        addr51:
                        _loc3_ = this.§+I§[this.§=y§];
                        addr58:
                        if(!_loc3_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              return;
                           }
                           loop5:
                           while(true)
                           {
                              if(this.§=y§ >= this.§+I§.length)
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    this.§8!f§(§<L§);
                                 }
                              }
                              else
                              {
                                 this.§8!f§(§=#§);
                                 if(_loc5_)
                                 {
                                    addr86:
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             this.§,!-§(this.§=y§,_loc3_.§!i§ > 0);
                                             loop1:
                                             while(!(_loc4_ && param1))
                                             {
                                                this.playBirdShotSound();
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                   §§goto(addr86);
                                                }
                                                if(!(_loc4_ && param1))
                                                {
                                                   break loop0;
                                                }
                                                loop3:
                                                for(; _loc4_ && param1; break loop1)
                                                {
                                                   while(true)
                                                   {
                                                      this.§;!"§ = false;
                                                      continue loop3;
                                                   }
                                                }
                                                this.§6f§.§]!O§(_loc3_,param1,param2);
                                                continue loop0;
                                                addr188:
                                             }
                                             while(true)
                                             {
                                                this.§<!!§ = new Date().time;
                                                §§goto(addr188);
                                             }
                                          }
                                          addr181:
                                          addr132:
                                       }
                                       else
                                       {
                                          addr105:
                                       }
                                       return;
                                    }
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr125);
                           }
                        }
                        else
                        {
                           this.mDragging = false;
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr58);
               }
               §§goto(addr105);
            }
            §§goto(addr132);
         }
         §§goto(addr51);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc2_)
         {
            §§push(SoundEngine);
            §§push("BirdShot");
            if(_loc3_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().§`B§(§§pop());
         }
      }
      
      public function §>9§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§=y§);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  if(_loc6_ || param2)
                  {
                     if(_loc6_ || param2)
                     {
                        if(§§pop() >= this.§+I§.length)
                        {
                           if(!(_loc5_ && this))
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          this.§+I§[_loc4_].update(param1,true,param2);
                                          addr129:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr120:
                                    }
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
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 addr110:
                              }
                              §§goto(addr129);
                           }
                           continue;
                        }
                        addr117:
                        if(this.mSlingShotState != §[D§)
                        {
                           this.§+I§[_loc4_].update(param1,false,param2);
                           §§goto(addr110);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr117);
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
         if(!_loc5_)
         {
            this.mDragging = false;
         }
         loop0:
         while(true)
         {
            addr52:
            while(true)
            {
               this.§7§();
               while(this.§2E§ >= this.§+I§.length)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     return false;
                  }
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
               }
               addr61:
               _loc1_ = this.§+I§[this.§2E§];
               if(!(_loc5_ && this))
               {
                  §§push(LevelItemManager.§><§(_loc1_.name).score);
                  if(!(_loc5_ && this))
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     addr110:
                     while(true)
                     {
                        §§push(this.§6f§);
                        §§push(_loc2_);
                        §§push(ScoreCollector.§+A§);
                        §§push(true);
                        §§push(_loc1_.x);
                        §§push(_loc1_.y);
                        if(_loc6_ || _loc1_)
                        {
                           §§push(3);
                           if(_loc6_ || _loc2_)
                           {
                              addr138:
                              §§push(§§pop() - §§pop());
                              §§push(§8!;§.§7!i§(_loc1_.name));
                           }
                           §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           while(true)
                           {
                              _loc1_.§,8§(-1,true);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!(_loc5_ && this))
                              {
                                 continue loop3;
                              }
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr138);
                     }
                  }
               }
               addr192:
               return true;
            }
         }
      }
      
      public function §[!R§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:LevelSlingshotObject = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         for each(_loc2_ in this.§+I§)
         {
            if(_loc5_ || _loc3_)
            {
               §§push(_loc1_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + LevelItemManager.§><§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §5!W§() : int
      {
         return this.§,M§;
      }
      
      public function §[e§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§!m§);
            loop0:
            while(true)
            {
               §§push(0);
               addr226:
               while(§§pop() >= §§pop())
               {
               }
               addr27:
               return;
               loop3:
               while(true)
               {
                  §§push(this.§!m§);
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(_loc3_)
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§6f§);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().objects);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop().§35§(this.§6=§,this.§@=§));
                              loop7:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_ && param1)
                                       {
                                          break;
                                       }
                                       if(_loc4_ || this)
                                       {
                                          if(§§pop() < 0)
                                          {
                                             continue loop3;
                                          }
                                          §§push(this.§6f§);
                                          loop10:
                                          while(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop().objects);
                                             loop11:
                                             for(; !(_loc3_ && _loc2_); §§push(§§pop().objects),if(!(_loc4_ || _loc2_))
                                             {
                                                continue;
                                             },§§goto(addr64))
                                             {
                                                §§push(_loc2_);
                                                while(true)
                                                {
                                                   §§push(§§pop().§[O§(§§pop()));
                                                   addr145:
                                                   addr64:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§-!]§);
                                                      addr146:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         addr147:
                                                         while(!§§pop())
                                                         {
                                                            §§push(this.§6f§);
                                                            if(_loc4_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr148:
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               this.§!m§ = -1;
                                                               addr155:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§!m§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop() - param1);
                                                                  }
                                                                  §§pop().§!m§ = §§pop();
                                                                  continue loop3;
                                                               }
                                                               addr227:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr160:
                                                         }
                                                      }
                                                   }
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().§[O§(§§pop()));
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop().§[q§());
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.§!m§ = 2000;
                                                                     addr113:
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr190:
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     this.§!m§ = 0;
                                                                     §§goto(addr160);
                                                                  }
                                                                  §§goto(addr27);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this.§!m§ = 500;
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr148);
                                                                  }
                                                                  §§goto(addr27);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr113);
                                                               }
                                                            }
                                                            §§goto(addr113);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr146);
                                                         }
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr145);
                                                   }
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr27);
               }
               §§goto(addr226);
            }
         }
         §§goto(addr227);
      }
      
      public function §+!5§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(1000);
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§6f§.objects.§35§(this.§6=§,this.§@=§));
            while(true)
            {
               §§push(int(§§pop()));
               while(true)
               {
                  _loc2_ = §§pop();
                  while(true)
                  {
                     §§push(_loc2_);
                     loop4:
                     while(true)
                     {
                        §§push(-1);
                        addr123:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§30§(0.1);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 addr85:
                                 if(§§pop() > 0)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                    }
                                    addr124:
                                 }
                                 while(true)
                                 {
                                    this.§!m§ = -1;
                                    continue loop6;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr124);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§1!J§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr88:
               while(true)
               {
                  §§push(-§§pop());
                  addr89:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §0m§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr111:
                        while(true)
                        {
                           §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                           if(_loc2_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           addr61:
                           while(_loc2_ || _loc2_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                     addr110:
                  }
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           while(true)
                           {
                              §§push(true);
                              addr88:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    break loop5;
                                 }
                                 §§goto(addr110);
                              }
                           }
                           addr87:
                        }
                        else if(!_loc3_)
                        {
                           addr19:
                           §§push(false);
                           if(_loc2_)
                           {
                              §§goto(addr23);
                           }
                           else
                           {
                              §§goto(addr88);
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr19);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr87);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mSlingShotState == §0m§);
            if(_loc2_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr66:
                        §§pop();
                        §§push(this.§]!5§);
                        §§push(this.§[!K§);
                        if(!_loc1_)
                        {
                           §§push(§§pop() * §2!U§);
                        }
                        §§push(§§pop() > §§pop());
                        if(!_loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mDragging = false;
            if(_loc3_)
            {
               this.§8!f§(§0m§);
            }
         }
         var _loc1_:LevelSlingshotObject = this.§+I§[this.§=y§];
         if(!_loc2_)
         {
            _loc1_.§,8§(LevelItemSoundResource.§7d§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:LevelSlingshotObject = this.§+I§[this.§=y§];
         if(!_loc3_)
         {
            _loc1_.§,8§(LevelItemSoundResource.§0!O§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§;!"§ = true;
         }
      }
      
      protected function §,!-§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         if(!_loc4_)
         {
            if(param1 < 0)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr32);
               }
            }
            if(this.§+I§[param1])
            {
               if(_loc5_ || this)
               {
                  _loc3_ = this.§+I§[param1];
                  if(!(_loc4_ && this))
                  {
                     this.§,!d§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(param2)
                        {
                           while(true)
                           {
                              this.§6!0§(this.§+I§[param1]);
                              addr128:
                              while(true)
                              {
                              }
                              addr93:
                              if(_loc5_ || param2)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        addr82:
                        addr136:
                        §§goto(addr142);
                     }
                  }
                  §§goto(addr128);
               }
               addr142:
               while(true)
               {
                  _loc3_.dispose();
                  addr86:
                  while(!(_loc4_ && param1))
                  {
                     §§goto(addr93);
                  }
               }
               this.§+I§.splice(param1,1);
               return;
            }
            §§goto(addr136);
         }
         addr32:
      }
      
      public function §6!0§(param1:LevelSlingshotObject) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         §§push(5);
         if(!(_loc10_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(90);
         §§push(0);
         if(!(_loc10_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && this))
            {
               if(!(_loc10_ && _loc3_))
               {
                  if(_loc9_ || _loc2_)
                  {
                     if(§§pop() >= _loc3_)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              if(!(_loc10_ && this))
                              {
                                 §§push(this.§6f§);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(§§pop().particles);
                                    if(_loc9_)
                                    {
                                       §§push(§8!;§.§,>§);
                                       if(!_loc10_)
                                       {
                                          §§push(LevelParticleManager.§1!'§);
                                          if(_loc9_)
                                          {
                                             §§push(§8!;§.§;Z§);
                                             if(_loc9_)
                                             {
                                                §§push(param1.x);
                                                if(_loc9_ || this)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§push(param1.y);
                                                      if(_loc9_)
                                                      {
                                                         §§push(1000);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push("");
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§push(0);
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5));
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§pop();
                                                                     addr173:
                                                                     if(!_loc10_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop36:
                                                                              while(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§push(180 / Math.PI);
                                                                                 loop37:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!(_loc10_ && _loc2_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    loop38:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.sprite);
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(-§§pop().width);
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(LevelMain.§!5§);
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop36;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Math.random() * -_loc7_);
                                                                                                                  addr424:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     addr425:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr426:
                                                                                                                        while(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr437:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                              continue loop38;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr301:
                                                                                                                  if(!(_loc9_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  §§push(Math.random() * -_loc8_);
                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr329:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr348:
                                                                                                                                       if(_loc10_ && this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(LevelMain.§!5§);
                                                                                                                                             addr391:
                                                                                                                                             addr507:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop33:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr301);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr437);
                                                                                                                                                               }
                                                                                                                                                               addr365:
                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                               {
                                                                                                                                                                  break loop33;
                                                                                                                                                               }
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§6f§);
                                                                                                                                                         addr189:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().particles);
                                                                                                                                                            addr190:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§8!;§.§=!5§);
                                                                                                                                                               addr193:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(LevelParticleManager.§1!'§);
                                                                                                                                                                  addr196:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§8!;§.§;Z§);
                                                                                                                                                                     addr199:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.x);
                                                                                                                                                                        addr201:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.y);
                                                                                                                                                                                 if(!(_loc10_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc8_);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr219:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr221:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(1500);
                                                                                                                                                                                    addr222:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("");
                                                                                                                                                                                       addr223:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§8!;§.§"K§(param1.name));
                                                                                                                                                                                          addr228:
                                                                                                                                                                                          loop2:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * Math.cos(_loc6_));
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             if(_loc9_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * Math.sin(_loc6_));
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(5);
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * 20);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop().§%!!§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop()));
                                                                                                                                                                                             addr279:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr280:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc10_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                                                                      addr179:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                         addr180:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr210:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr219);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr380:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         break loop36;
                                                                                                                                                      }
                                                                                                                                                      addr508:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr507:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr508);
                                                                                                                                             }
                                                                                                                                             §§goto(addr348);
                                                                                                                                          }
                                                                                                                                          addr388:
                                                                                                                                       }
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       §§goto(addr436);
                                                                                                                                    }
                                                                                                                                    §§goto(addr365);
                                                                                                                                 }
                                                                                                                                 §§goto(addr507);
                                                                                                                              }
                                                                                                                              §§goto(addr424);
                                                                                                                           }
                                                                                                                           §§goto(addr426);
                                                                                                                        }
                                                                                                                        §§goto(addr425);
                                                                                                                     }
                                                                                                                     §§goto(addr391);
                                                                                                                  }
                                                                                                                  §§goto(addr329);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr507);
                                                                                                         }
                                                                                                         addr500:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop36;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 continue loop35;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr380);
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr173);
                     }
                     else
                     {
                        §§push(_loc4_);
                     }
                     §§goto(addr500);
                  }
                  §§goto(addr178);
               }
               §§goto(addr179);
            }
            §§goto(addr180);
         }
      }
      
      public function §6T§(param1:LevelSlingshotObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,!-§(this.§+I§.indexOf(param1));
         }
      }
      
      public function §3!§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:LevelSlingshotObject = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:LevelSlingshotObject = null;
         §§push(0);
         if(!(_loc7_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() >= this.§+I§.length - 1)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr266);
                  }
                  addr292:
                  §§goto(addr334);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§`!Z§ - this.§+I§[_loc1_].x) * (this.§`!Z§ - this.§+I§[_loc1_].x) + (this.§[§ - this.§+I§[_loc1_].y) * (this.§[§ - this.§+I§[_loc1_].y))));
                  if(!_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§push(Number(Math.sqrt((this.§`!Z§ - this.§+I§[_loc1_ + 1].x) * (this.§`!Z§ - this.§+I§[_loc1_ + 1].x) + (this.§[§ - this.§+I§[_loc1_ + 1].y) * (this.§[§ - this.§+I§[_loc1_ + 1].y))));
                     if(!(_loc7_ && this))
                     {
                        _loc4_ = §§pop();
                        if(!(_loc7_ && _loc3_))
                        {
                           addr145:
                           if(_loc4_ < _loc3_)
                           {
                              if(_loc7_ && _loc1_)
                              {
                                 addr266:
                                 if(this.§,!d§.numChildren > 0)
                                 {
                                    §§push(this.§,!d§);
                                    if(_loc6_)
                                    {
                                       §§pop().removeChildAt(0);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§goto(addr266);
                                       }
                                       addr278:
                                       §§push(0);
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr286:
                                          §§push(int(§§pop()));
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          addr335:
                                          if(§§pop() < this.§+I§.length)
                                          {
                                             _loc2_ = this.§+I§[_loc1_];
                                             if(_loc6_)
                                             {
                                                this.§,!d§.addChildAt(_loc2_.sprite,0);
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc1_);
                                                   if(!(_loc7_ && _loc1_))
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
                                             while(true)
                                             {
                                                §§goto(addr335);
                                             }
                                             addr334:
                                          }
                                          §§goto(addr339);
                                       }
                                       break;
                                    }
                                    §§goto(addr266);
                                 }
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§goto(addr278);
                                 }
                                 addr339:
                                 return;
                              }
                              _loc5_ = this.§+I§[_loc1_];
                              if(!(_loc7_ && _loc1_))
                              {
                                 this.§+I§.splice(_loc1_,1);
                                 loop1:
                                 while(true)
                                 {
                                    addr194:
                                    while(true)
                                    {
                                       this.§+I§.splice(_loc1_ + 1,0,_loc5_);
                                       continue loop1;
                                    }
                                 }
                                 addr211:
                              }
                              while(true)
                              {
                                 _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr211);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr278);
                           }
                           §§push(_loc1_);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() + 1);
                              if(_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    addr231:
                                    _loc1_ = §§pop();
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr278);
                                 }
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr286);
                     }
                  }
                  §§goto(addr145);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!_loc7_)
         {
            §§goto(addr292);
         }
         §§goto(addr286);
      }
      
      public function §9!k§(param1:Number, param2:Number) : LevelSlingshotObject
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(!(_loc5_ && param2))
               {
                  if(!_loc5_)
                  {
                     if(§§pop() >= this.§+I§.length)
                     {
                        if(_loc4_ || this)
                        {
                           return null;
                        }
                        while(_loc5_)
                        {
                           while(true)
                           {
                           }
                        }
                        continue;
                        addr65:
                     }
                     else if(this.§+I§[_loc3_])
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(this.§+I§[_loc3_].isInCoordinates(param1,param2))
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr108);
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              addr62:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 addr63:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr64:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr65);
                                    }
                                 }
                              }
                           }
                           addr60:
                        }
                        break;
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr62);
               }
               §§goto(addr63);
            }
            §§goto(addr64);
         }
         return this.§+I§[_loc3_];
      }
      
      public function §1!P§(param1:Number, param2:Number) : LevelSlingshot
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§`!Z§);
               if(!_loc4_)
               {
                  §§push(this.§[!K§);
                  while(true)
                  {
                     §§push(4);
                     addr261:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr262:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                        }
                     }
                     addr139:
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §§push(4);
                     if(_loc3_)
                     {
                        if(!(_loc4_ && param2))
                        {
                           addr157:
                           §§push(§§pop() / §§pop());
                           if(!_loc4_)
                           {
                              §§push(§§pop() - §§pop());
                              loop24:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 loop25:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop24;
                                    }
                                    loop19:
                                    while(true)
                                    {
                                       §§pop();
                                       loop20:
                                       while(!(_loc4_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(param2);
                                             loop26:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(this.§[§);
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop24;
                                                   }
                                                   §§push(this.§[!K§);
                                                   if(!_loc4_)
                                                   {
                                                      addr115:
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            §§goto(addr139);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      while(true)
                                                      {
                                                         break loop26;
                                                         §§goto(addr115);
                                                      }
                                                      addr211:
                                                   }
                                                   §§goto(addr157);
                                                }
                                                addr203:
                                                while(!_loc4_)
                                                {
                                                   §§push(this.§`!Z§);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr211);
                                                      §§push(this.§[!K§);
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                         }
                                                         addr223:
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop17:
                                                         while(_loc3_ || param2)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop19;
                                                               }
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr192:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§[§);
                                                                                          if(_loc4_ && _loc3_)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          §§push(this.§@=§);
                                                                                          if(!(_loc3_ || param1))
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(_loc4_ && param2)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      if(_loc3_ || param2)
                                                                                                      {
                                                                                                         return this;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr24:
                                                                                                   return null;
                                                                                                   addr72:
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                          addr263:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() >= §§pop());
                                                                                             addr264:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       break loop21;
                                                                                    }
                                                                                 }
                                                                                 addr268:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop20;
                                                                                 }
                                                                              }
                                                                              addr171:
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr264);
                                                                              addr195:
                                                                           }
                                                                           §§goto(addr72);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  break loop17;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr268);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop26;
                                                }
                                                continue loop0;
                                             }
                                             addr212:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                addr213:
                                                while(true)
                                                {
                                                   §§goto(addr214);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr203);
                                       }
                                    }
                                 }
                              }
                              §§push(Boolean(§§pop()));
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr171);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr212);
                  }
               }
               §§goto(addr263);
            }
         }
         §§goto(addr252);
      }
      
      public function §"t§(param1:LevelModel) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:LevelSlingshotObject = null;
         var _loc4_:§@x§ = null;
         if(!_loc5_)
         {
            param1.§<!6§ = this.§`!Z§;
            if(!(_loc5_ && this))
            {
               addr36:
               param1.§]!1§ = this.§[§;
            }
            var _loc2_:* = Number(0);
            loop0:
            for(; _loc2_ < this.§+I§.length; if(true)
            {
               continue;
            },§§goto(addr120))
            {
               _loc3_ = this.§+I§[_loc2_];
               _loc4_ = new §@x§();
               if(_loc6_ || _loc3_)
               {
                  _loc4_.x = _loc3_.x;
               }
               loop1:
               while(true)
               {
                  _loc4_.y = _loc3_.y;
                  loop2:
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                     loop3:
                     while(true)
                     {
                        addr120:
                        while(true)
                        {
                           param1.§;!H§(_loc4_);
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop3;
                              }
                              §§push(_loc2_);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr90:
                                    §§push(Number(§§pop()));
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc6_ || _loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr90);
                           }
                           if(_loc6_)
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
            return;
         }
         §§goto(addr36);
      }
      
      public function §2F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§+I§.length > 0)
         {
            this.§6T§(this.§+I§[0]);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §?!]§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || _loc3_)
            {
               if(§§pop() >= this.§+I§.length)
               {
                  loop2:
                  while(true)
                  {
                     if(_loc5_ && this)
                     {
                        addr274:
                        _loc3_.push(this.§+I§[_loc4_]);
                        break;
                     }
                     §§push(this.§`!Z§);
                     loop4:
                     while(!_loc5_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() > param1.x);
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
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
                                          while(true)
                                          {
                                             loop22:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop23:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop12:
                                                            while(!_loc5_)
                                                            {
                                                               §§pop();
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > param1.y);
                                                                     addr111:
                                                                     addr166:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     §§push(this.§[§);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < param2.x);
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop5;
                                                                        addr170:
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(§§pop() < param2.y);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr51:
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr61:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr111);
                                                                                 }
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       _loc3_.push(this);
                                                                                    }
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr255:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 return _loc3_;
                                                                                 addr75:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(!(_loc6_ || param1))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr75);
                                                                                 }
                                                                              }
                                                                              continue loop24;
                                                                              addr115:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && param2))
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop22;
                                                                              §§goto(addr51);
                                                                           }
                                                                           continue loop22;
                                                                        }
                                                                        §§goto(addr61);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr255);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr239);
                                                            }
                                                            addr238:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr115);
                                                            continue loop24;
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          addr183:
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                              }
                           }
                        }
                        §§push(§§pop() + 1);
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr254);
                     }
                  }
                  while(true)
                  {
                  }
                  addr281:
               }
               else if(this.§+I§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr274);
               }
               while(true)
               {
                  §§goto(addr242);
                  §§goto(addr281);
               }
               continue;
            }
            §§goto(addr222);
         }
      }
      
      public function §+i§() : Array
      {
         return [this.§+!;§,this.§!!i§];
      }
      
      public function §+!7§(param1:String, param2:Number, param3:Number) : LevelSlingshotObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelSlingshotObject = this.§?![§(param1,param2,param3);
         if(!(_loc5_ && param1))
         {
            this.§3!§();
         }
         return _loc4_;
      }
      
      public function §+F§() : Number
      {
         return this.§+I§.length;
      }
   }
}
