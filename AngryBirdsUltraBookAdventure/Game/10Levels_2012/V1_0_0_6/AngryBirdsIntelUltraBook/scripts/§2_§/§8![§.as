package §2_§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §3!G§.§ y§;
   import §4!O§.§"E§;
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.Sprite;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8![§
   {
      
      public static const §`I§:int = 0;
      
      public static const §4!I§:int = 1;
      
      public static const §'!a§:int = 2;
      
      public static const §5!w§:int = 3;
      
      public static const §5s§:int = 5;
      
      public static const §!P§:int = 3151368;
      
      protected static const §+%§:int = 8;
      
      protected static const §+!l§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §>?§:Number = -0.7;
      
      protected static const §15§:Number = 0;
      
      protected static var §+!g§:Texture;
      
      public static const §9!_§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §`I§ = 0;
            loop0:
            while(true)
            {
               §4!I§ = 1;
               loop1:
               while(true)
               {
                  §'!a§ = 2;
                  while(true)
                  {
                     §5!w§ = 3;
                     addr142:
                     while(_loc1_)
                     {
                        continue loop0;
                     }
                     addr64:
                     continue loop1;
                     if(_loc2_)
                     {
                        continue;
                     }
                     §9!_§ = 0.4;
                     addr76:
                     if(!_loc2_)
                     {
                        addr34:
                        if(!(_loc1_ || §8![§))
                        {
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 BIRD_LAUNCH_FORCE_GREEN = 52.5;
                                 loop10:
                                 while(true)
                                 {
                                    §>?§ = -0.7;
                                    loop11:
                                    while(true)
                                    {
                                       §15§ = 0;
                                       addr46:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop11;
                                          §§goto(addr76);
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                              }
                              break;
                              §§goto(addr34);
                           }
                           while(true)
                           {
                              §+!l§ = 0;
                              §§goto(addr55);
                           }
                        }
                        return;
                     }
                     §§goto(addr46);
                  }
               }
            }
         }
         while(true)
         {
            §5s§ = 5;
            §§goto(addr137);
         }
      }
      
      public var §#!3§:§'u§;
      
      public var §#!u§:Number;
      
      public var §<h§:Number;
      
      public var § D§:Number;
      
      protected var § !d§:Number;
      
      protected var §#!c§:Number;
      
      protected var §+Y§:Number;
      
      protected var §"N§:Number;
      
      public var §[&§:Number;
      
      public var §+!k§:Boolean = false;
      
      protected var §!!P§:Number;
      
      public var §]!^§:Vector.<§>-§>;
      
      public var §8!?§:int;
      
      public var §1!D§:int;
      
      public var §^[§:Number;
      
      public var §=!D§:Sprite;
      
      public var §`!'§:int = 0;
      
      public var § !m§:Number = 0;
      
      public var §%m§:Array;
      
      public var §,M§:Array;
      
      public var mSlingShotState:int;
      
      public var §9r§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §7e§:Boolean = false;
      
      public var §"O§:Number;
      
      protected var §2O§:Sprite;
      
      protected var §'j§:§;R§;
      
      protected var §`3§:§;R§;
      
      protected var §6R§:Sprite;
      
      protected var §5L§:Sprite;
      
      protected var §!!_§:Sprite;
      
      protected var §]R§:§-§;
      
      protected var § V§:§-§;
      
      private var §]O§:Number = 0;
      
      private var §3E§:int = 0;
      
      protected var § !!§:Number = -0.7;
      
      protected var §`=§:Number = 0;
      
      public function §8![§(param1:§'u§, param2:§ y§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§"E§ = null;
         if(!_loc7_)
         {
            this.§]!^§ = new Vector.<§>-§>();
            loop0:
            while(true)
            {
               super();
               addr85:
               while(true)
               {
                  this.§#!3§ = param1;
                  loop2:
                  for(; !_loc7_; loop4:
                  while(!(_loc7_ && this))
                  {
                     while(true)
                     {
                        this.§!S§();
                        continue loop4;
                     }
                  })
                  {
                     this.§2O§ = param3;
                     while(true)
                     {
                        if(!param2)
                        {
                           §-8§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                           break;
                        }
                        if(_loc6_ || param2)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     loop19:
                     while(true)
                     {
                        if(_loc6_ || param3)
                        {
                           this.§4!#§(§5!w§);
                           loop20:
                           while(true)
                           {
                              loop12:
                              while(true)
                              {
                                 this.§"O§ = 0;
                                 loop13:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop20;
                                    }
                                    this.§!+§();
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop19;
                                       }
                                       addr199:
                                       if(!(_loc7_ && this))
                                       {
                                          this.update(0,true);
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(_loc6_)
                                                {
                                                   this.§%9§();
                                                   while(_loc6_ || this)
                                                   {
                                                      this.updateAnimations(0);
                                                      if(_loc7_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         break loop15;
                                                      }
                                                      return;
                                                      addr167:
                                                   }
                                                   continue loop13;
                                                }
                                                addr250:
                                                while(true)
                                                {
                                                   §§push(§-8§);
                                                   §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(this.§#!u§);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop() + " ");
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr295:
                                                               §§push(§§pop() + this.§<h§);
                                                            }
                                                            §§pop().log(§§pop());
                                                            break loop15;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr295);
                                                }
                                             }
                                             else
                                             {
                                                addr238:
                                                while(true)
                                                {
                                                   addr219:
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                   continue loop15;
                                                }
                                                addr238:
                                             }
                                             §§goto(addr167);
                                          }
                                          while(true)
                                          {
                                             this.§4!#§(§5!w§);
                                             break loop14;
                                          }
                                          addr299:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(this.§]!^§.length > 0)
                                             {
                                                this.§4!#§(§`I§);
                                                §§goto(addr238);
                                             }
                                             §§goto(addr199);
                                          }
                                          addr303:
                                       }
                                       §§goto(addr250);
                                    }
                                 }
                                 continue loop20;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr219);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc4_ = 0;
            if(_loc7_)
            {
               continue;
            }
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  if(false)
                  {
                     §§goto(addr35);
                  }
                  else
                  {
                     while(_loc4_ < param2.§6Q§)
                     {
                        _loc5_ = param2.§5!l§(_loc4_);
                        if(!(_loc7_ && param3))
                        {
                           this.§&!6§(_loc5_.id,_loc5_.x,_loc5_.y);
                           if(!_loc7_)
                           {
                              _loc4_++;
                           }
                        }
                     }
                     if(_loc6_)
                     {
                        this.§3E§ = this.§;!X§();
                        if(_loc6_ || param1)
                        {
                           this.§8!?§ = 0;
                           §§goto(addr303);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr299);
                  }
               }
               else
               {
                  §§goto(addr85);
               }
               §§goto(addr224);
            }
            §§goto(addr62);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§]O§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§8!?§ < this.§]!^§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§]!^§.length > 0)
            {
               this.§"[§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§]!^§ = null;
               while(true)
               {
                  §§push(this.§2O§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(_loc1_)
                        {
                           §§push(this.§2O§);
                           while(true)
                           {
                              §§pop().dispose();
                              addr99:
                              while(_loc1_)
                              {
                                 this.§2O§ = null;
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    addr77:
                                 }
                              }
                              continue loop0;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§=!D§ = null;
                        loop5:
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§%m§ = null;
                           while(_loc1_ || _loc1_)
                           {
                              this.§,M§ = null;
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr75);
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr98);
               }
            }
         }
      }
      
      public function §for§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>-§
      {
         var _loc5_:§>-§;
         (_loc5_ = this.§&!6§(param1,param2,param3,param4)).§@!t§();
         return _loc5_;
      }
      
      protected function §&!6§(param1:String, param2:Number, param3:Number, param4:int = -1) : §>-§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§>-§ = new §>-§(this,new Sprite(),param1,param2,param3);
         if(!_loc7_)
         {
            if(param4 < 0)
            {
               if(!_loc7_)
               {
                  this.§]!^§.push(_loc5_);
               }
               while(!_loc6_)
               {
               }
               return _loc5_;
            }
            this.§]!^§.splice(param4,0,_loc5_);
            addr74:
            while(true)
            {
            }
            addr74:
            while(true)
            {
               this.§=!D§.addChild(_loc5_.sprite);
               if(_loc6_)
               {
                  break;
               }
               §§goto(addr74);
            }
            §§goto(addr62);
         }
         §§goto(addr74);
      }
      
      public function §4!#§(param1:int) : void
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
                  §§push(§`I§);
                  addr315:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§4!I§);
                        addr302:
                        addr303:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           continue loop3;
                        }
                        addr303:
                        §§goto(addr28);
                     }
                  }
                  this.§`! §();
                  §§goto(addr318);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(§5!w§);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.mSlingShotState);
                              if(_loc2_)
                              {
                                 §§push(§5s§);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(!this.mDragging)
                                          {
                                             this.§`! §();
                                             §§goto(addr75);
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    addr28:
                                    this.§`! §();
                                    addr305:
                                 }
                                 continue;
                                 this.§^[§ = 0;
                                 loop10:
                                 while(true)
                                 {
                                    this.mDragging = false;
                                    if(_loc2_ || param1)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_ || _loc3_)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.mDragging = false;
                                                      addr187:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            this.§7e§ = false;
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        this.§`! §();
                                                                        while(true)
                                                                        {
                                                                           this.§]!^§[this.§8!?§].setPosition(this.§+Y§ - this.§]!^§[this.§8!?§].radius * Math.cos(this.§ !m§ / (180 / Math.PI)),this.§"N§ + this.§]!^§[this.§8!?§].radius * Math.sin(this.§ !m§ / (180 / Math.PI)));
                                                                           continue loop13;
                                                                        }
                                                                        addr136:
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§^[§ = 1000;
                                                                        addr318:
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               addr233:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     this.§^[§ = 2000;
                                                                     addr199:
                                                                     if(_loc3_)
                                                                     {
                                                                        addr244:
                                                                        if(!_loc2_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  addr275:
                                                                  while(true)
                                                                  {
                                                                     this.§^[§ = 10000;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.§7e§ = false;
                                                               continue loop0;
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                   }
                                                   addr184:
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr123);
                                    }
                                    else
                                    {
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§`! §();
                                                   §§goto(addr233);
                                                }
                                                break;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop10;
                                       }
                                       addr75:
                                       addr77:
                                    }
                                    §§goto(addr305);
                                 }
                                 return;
                              }
                              §§goto(addr207);
                              §§goto(addr303);
                           }
                           break;
                        }
                        §§goto(addr315);
                        §§goto(addr301);
                     }
                     §§goto(addr272);
                  }
                  §§goto(addr222);
               }
            }
         }
         §§goto(addr77);
      }
      
      public function get §17§() : §'u§
      {
         return this.§#!3§;
      }
      
      public function §0!O§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.mSlingShotState == §5!w§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr44:
                     §§pop();
                     return this.§^[§ <= 0;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §!S§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4!f§ = this.getSlingshotAnimation();
         var _loc2_:§1C§ = _loc1_.getFrame(0);
         var _loc3_:§1C§ = _loc1_.getFrame(1);
         if(!(_loc5_ && _loc1_))
         {
            this.§]R§ = new §-§(_loc2_.texture);
            while(true)
            {
               §§push(this.§]R§);
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr270:
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
               while(true)
               {
                  §§goto(addr170);
               }
               addr194:
            }
         }
         §§goto(addr194);
      }
      
      protected function getSlingshotAnimation() : §4!f§
      {
         return this.§#!3§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §6!n§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!(_loc2_ && _loc3_))
         {
            this.§ !d§ = this.§#!u§;
            loop0:
            while(true)
            {
               addr74:
               while(true)
               {
                  this.§#!c§ = this.§<h§;
                  continue loop0;
               }
            }
            addr84:
         }
         while(true)
         {
            this.§!!P§ = §,L§.§,!Z§;
            if(_loc2_ && this)
            {
               continue;
            }
            if(_loc3_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr84);
            }
            §§goto(addr74);
         }
         _loc1_ = null;
      }
      
      protected function §0!]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_)
         {
            if(!§+!g§)
            {
               if(!_loc3_)
               {
                  addr26:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!(_loc3_ && _loc2_))
                  {
                     §+!g§ = this.§#!3§.textureManager.getTextureFromBitmapData(_loc2_);
                     addr48:
                     this.§!!_§ = new Sprite();
                  }
                  §§goto(addr48);
               }
               var _loc1_:§-§ = new §-§(§+!g§);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.rotation = Math.PI;
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     loop5:
                     while(_loc4_ || this)
                     {
                        this.§6R§.addChild(this.§'j§);
                        while(true)
                        {
                           this.§5L§ = new Sprite();
                           while(_loc4_ || _loc3_)
                           {
                              this.§`3§ = new §;R§(2,2,§!P§);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc4_)
                                 {
                                    addr107:
                                    if(_loc3_ && _loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§'j§ = new §;R§(2,2,§!P§);
                                    continue loop5;
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§6R§ = new Sprite();
                                       §§goto(addr156);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc1_.y = _loc1_.height / 2;
                                          break loop3;
                                       }
                                       addr197:
                                    }
                                 }
                                 break;
                                 §§goto(addr107);
                              }
                              while(true)
                              {
                                 this.§!!_§.addChild(_loc1_);
                                 §§goto(addr172);
                              }
                              addr172:
                           }
                        }
                     }
                  }
               }
               §§goto(addr197);
            }
            §§goto(addr48);
         }
         §§goto(addr26);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§"N§);
         if(_loc6_)
         {
            §§push(§§pop() / §'u§.§18§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§+Y§);
         if(!_loc7_)
         {
            §§push(§§pop() / §'u§.§18§);
            if(_loc6_ || _loc3_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(3.5);
            if(!_loc7_)
            {
               §§push(8);
               §§push(this.§!!P§);
               if(_loc6_ || param1)
               {
                  §§push(this.§[&§);
                  if(!(_loc7_ && _loc2_))
                  {
                     addr71:
                     §§push(§§pop() - §§pop());
                     if(_loc6_)
                     {
                        §§push(this.§!!P§);
                     }
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc6_)
                     {
                        addr75:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc7_)
                     {
                        §§push(this.§!!_§);
                        while(true)
                        {
                           §§push(_loc3_);
                           addr552:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(this.§!!_§);
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr547:
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           addr633:
                           this.§9r§ = false;
                           if(!_loc6_)
                           {
                              addr626:
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr633);
                              }
                              §§push(this.§'j§);
                              §§push(-this.§'j§.height);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().y = §§pop();
                              §§goto(addr626);
                              addr645:
                           }
                           addr598:
                           return;
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           §§push(this.§ !m§);
                           if(_loc6_)
                           {
                              §§push(-§§pop());
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr522:
                                 if(_loc6_ || param1)
                                 {
                                    addr534:
                                    §§push(§§pop() / (180 / Math.PI));
                                    if(!(_loc7_ && param1))
                                    {
                                       §§pop().rotation = §§pop();
                                       while(true)
                                       {
                                          §§push(this.§]R§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§#!u§);
                                             if(_loc6_)
                                             {
                                                §§push(§'u§.§18§);
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   addr459:
                                                   §§push(§'u§.§18§);
                                                   if(_loc7_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr476:
                                                      §§push(30);
                                                      if(_loc6_)
                                                      {
                                                         addr480:
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§ V§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(this.§#!u§);
                                                                  addr419:
                                                                  while(true)
                                                                  {
                                                                     §§push(§'u§.§18§);
                                                                     addr421:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        addr422:
                                                                        while(true)
                                                                        {
                                                                           §§push(30);
                                                                           addr423:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr424:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc6_ || param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              addr587:
                                                                              §§push(this.§`3§);
                                                                              §§push(-this.§`3§.height);
                                                                              addr644:
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop() / 2);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§goto(addr645);
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc7_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr494:
                                                            while(true)
                                                            {
                                                               §§push(3);
                                                            }
                                                            addr494:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr496:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr480);
                                                }
                                             }
                                             §§goto(addr494);
                                          }
                                          if(_loc7_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr302);
                                          §§push(this.§5L§);
                                       }
                                    }
                                    §§goto(addr547);
                                 }
                                 §§goto(addr552);
                              }
                              §§goto(addr534);
                           }
                           §§goto(addr522);
                        }
                     }
                     §§goto(addr214);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr71);
            }
            §§goto(addr75);
         }
         §§goto(addr41);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§]!^§.length > 0)
            {
               this.§"[§(0,true);
               continue;
            }
            if(!(_loc2_ && _loc2_))
            {
               this.§#!X§();
            }
            while(true)
            {
               this.§&!6§("BIRD_SARDINE",this.§#!u§,this.§<h§);
               while(!_loc2_)
               {
                  this.§4!#§(§'!a§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc1_ || this)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function §#!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9'§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§4!#§(§5s§);
         }
      }
      
      public function §`! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§ !d§);
            §§push(this.§#!c§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§!!P§);
               if(!_loc2_)
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
         if(_loc9_ || param2)
         {
            §§push(this.§+Y§);
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
                     §§push(§§pop());
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
                                 §§push(this.§"N§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr1359:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr1360:
                                       while(!(_loc10_ && param3))
                                       {
                                       }
                                       continue loop2;
                                    }
                                    loop179:
                                    while(true)
                                    {
                                       if(!(_loc9_ || param3))
                                       {
                                          continue loop6;
                                       }
                                       §§push(Number(§§pop()));
                                       loop180:
                                       while(true)
                                       {
                                          param2 = §§pop();
                                          loop181:
                                          while(true)
                                          {
                                             this.§[&§ = this.§!!P§;
                                             loop182:
                                             while(true)
                                             {
                                                loop26:
                                                while(true)
                                                {
                                                   this.§+Y§ = param1;
                                                   loop27:
                                                   while(true)
                                                   {
                                                      this.§"N§ = param2;
                                                      loop28:
                                                      while(true)
                                                      {
                                                         this.§ !m§ = Math.atan2(-(this.§"N§ - this.§#!c§),this.§+Y§ - this.§ !d§);
                                                         loop29:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§ !m§);
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(§§pop() * (180 / Math.PI));
                                                            }
                                                            §§pop().§ !m§ = §§pop();
                                                            loop30:
                                                            while(true)
                                                            {
                                                               §§push(this.mDragging);
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(param1);
                                                                           if(!(_loc10_ && param3))
                                                                           {
                                                                              §§push(§§pop() + this.§ !!§);
                                                                           }
                                                                           §§pop().§+Y§ = §§pop();
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(param2);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop() + this.§`=§);
                                                                              }
                                                                              §§pop().§"N§ = §§pop();
                                                                              loop35:
                                                                              for(; _loc9_; while(true)
                                                                              {
                                                                                 if(!(_loc9_ || param2))
                                                                                 {
                                                                                    continue loop35;
                                                                                 }
                                                                                 §§goto(addr45);
                                                                              })
                                                                              {
                                                                                 this.§ !m§ = -160;
                                                                                 loop36:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop182;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(12);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr1107:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr1108:
                                                                                             while(!_loc10_)
                                                                                             {
                                                                                                if(!(_loc9_ || param3))
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                §§push(5);
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr1093:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      addr1094:
                                                                                                      addr1265:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(!(_loc9_ || this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop41;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§#!c§);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            continue loop180;
                                                                                                         }
                                                                                                         §§push(this.§!!P§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ || param1))
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            §§push(param2);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§#!c§);
                                                                                                               addr1224:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  addr1225:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                     {
                                                                                                                        §§push(this.§[&§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        addr1235:
                                                                                                                     }
                                                                                                                     addr1236:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop179;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop28;
                                                                                          }
                                                                                          if(!(_loc9_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          loop44:
                                                                                          for(; _loc9_; if(!(_loc9_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          },if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§goto(addr791);
                                                                                             §§push(Number(§§pop()));
                                                                                          },while(_loc9_)
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             §§goto(addr1265);
                                                                                          },while(true)
                                                                                          {
                                                                                             §§goto(addr1275);
                                                                                          },addr1262:)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             _loc6_ = §§pop();
                                                                                             loop45:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(this.§!!P§);
                                                                                                   loop46:
                                                                                                   for(; _loc9_ || param3; if(_loc10_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   },§§goto(addr586),§§push(Number(§§pop())))
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      loop47:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         loop48:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop49:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§[&§);
                                                                                                                  loop51:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     loop52:
                                                                                                                     while(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        loop53:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop54:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 loop55:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    loop56:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§ !m§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(-90);
                                                                                                                                          addr1025:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             addr1026:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr758:
                                                                                                                                                      if(!(_loc9_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc10_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr773:
                                                                                                                                                         §§push(§§pop() + §§pop() / §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop44;
                                                                                                                                                            }
                                                                                                                                                            addr805:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop47;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr773);
                                                                                                                                                         }
                                                                                                                                                         continue loop44;
                                                                                                                                                         addr774:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr1259:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr1260:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            break loop44;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr1036:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          loop88:
                                                                                                                                          while(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             param2 = §§pop();
                                                                                                                                             loop89:
                                                                                                                                             while(_loc9_ || this)
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   this.§[&§ = _loc7_;
                                                                                                                                                   loop90:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                         addr896:
                                                                                                                                                      }
                                                                                                                                                      this.§+Y§ = param1;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1108);
                                                                                                                                                      }
                                                                                                                                                      continue loop30;
                                                                                                                                                      loop104:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop90;
                                                                                                                                                         }
                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            this.§9S§();
                                                                                                                                                            loop105:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§+!k§ = false;
                                                                                                                                                                        continue loop35;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop50;
                                                                                                                                                               }
                                                                                                                                                               loop160:
                                                                                                                                                               while(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  loop93:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§[&§);
                                                                                                                                                                     addr306:
                                                                                                                                                                     loop94:
                                                                                                                                                                     while(!(_loc10_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§!!P§);
                                                                                                                                                                        if(_loc9_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr335:
                                                                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0.45);
                                                                                                                                                                                          loop95:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop96:
                                                                                                                                                                                                            for(; !_loc10_; if(_loc10_ && param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            },if(!(_loc10_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc10_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop95;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr573);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr509);
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr924:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param2);
                                                                                                                                                                                                                     if(!(_loc10_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr934);
                                                                                                                                                                                                                        §§push(this.§#!c§);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr935);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr506:
                                                                                                                                                                                                            },§§goto(addr773))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc9_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§+!k§ = true;
                                                                                                                                                                                                                           loop97:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr45:
                                                                                                                                                                                                                              loop98:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§9r§ = true;
                                                                                                                                                                                                                                 if(!(_loc9_ || param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop105;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop104;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(!_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop93;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                                                                             addr889:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§[&§);
                                                                                                                                                                                                                                                if(_loc10_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop94;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc10_ && this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc10_ && param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop179;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr535);
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                                                                        break loop160;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr969:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop180;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(-90);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop180;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr791:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop179;
                                                                                                                                                                                                                                                            addr525:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc9_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§!!P§);
                                                                                                                                                                                                                                                                  if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop96;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr184:
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr188);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr653);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr423);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr947);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr659);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr773);
                                                                                                                                                                                                                                                         §§goto(addr972);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop148:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr415);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop88;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc9_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  param1 = §§pop();
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§#!c§);
                                                                                                                                                                                                                                                                           continue loop148;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr983);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr656);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr601:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop148;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr586:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1019);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr576);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr509:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param2 = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            this.§[&§ = _loc8_;
                                                                                                                                                                                                                                                            loop158:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§+Y§ = param1;
                                                                                                                                                                                                                                                               addr388:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop158;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§"N§ = param2;
                                                                                                                                                                                                                                                                     continue loop160;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr601);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr882);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1247);
                                                                                                                                                                                                                                                      addr515:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr985);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr866);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1285);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1094);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr515);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop96;
                                                                                                                                                                                                                                    addr284:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop97;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1268:
                                                                                                                                                                                                                                          addr1312:
                                                                                                                                                                                                                                          while(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§ !d§);
                                                                                                                                                                                                                                                break loop46;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1285:
                                                                                                                                                                                                                                          this.§[&§ = Math.sqrt((this.§"N§ - this.§#!c§) * (this.§"N§ - this.§#!c§) + (this.§+Y§ - this.§ !d§) * (this.§+Y§ - this.§ !d§));
                                                                                                                                                                                                                                          return false;
                                                                                                                                                                                                                                          addr1284:
                                                                                                                                                                                                                                          addr1312:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop72:
                                                                                                                                                                                                                                          while(!_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop107:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§ !d§);
                                                                                                                                                                                                                                                      addr985:
                                                                                                                                                                                                                                                      while(_loc9_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            addr994:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§ !d§);
                                                                                                                                                                                                                                                               addr996:
                                                                                                                                                                                                                                                               while(_loc9_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     addr1005:
                                                                                                                                                                                                                                                                     while(_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§[&§);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           addr1010:
                                                                                                                                                                                                                                                                           while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 addr1019:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    param1 = §§pop();
                                                                                                                                                                                                                                                                                    addr1020:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§#!c§);
                                                                                                                                                                                                                                                                                       break loop94;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                                                                           addr751:
                                                                                                                                                                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr758);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1036);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1224);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1093);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr983:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§[&§);
                                                                                                                                                                                                                                                   loop108:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                                                                      addr867:
                                                                                                                                                                                                                                                      while(_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                         loop110:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               loop111:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        addr847:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                       addr860:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§ !m§);
                                                                                                                                                                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(-90);
                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            break loop96;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1026);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         addr974:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop72;
                                                                                                                                                                                                                                                                                                                  §§goto(addr335);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr978:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1004);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr973:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         loop117:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                               loop118:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                  addr819:
                                                                                                                                                                                                                                                                                                                  while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                     loop120:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           loop121:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                              addr836:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop110;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr881:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                    addr882:
                                                                                                                                                                                                                                                                                                                                    while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr805);
                                                                                                                                                                                                                                                                                                                                       §§push(this.§ !m§);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop45;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop121;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop110;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr835:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr1004);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr555:
                                                                                                                                                                                                                                                                                                                        loop141:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop120;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§[&§);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                 addr573:
                                                                                                                                                                                                                                                                                                                                 while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                                                                                                                                                                       addr415:
                                                                                                                                                                                                                                                                                                                                       if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr430:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                                                                                                                                                                loop150:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr445:
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§#!c§);
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr488:
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                              while(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§[&§);
                                                                                                                                                                                                                                                                                                                                                                                       break loop95;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1214);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr974);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop141;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§ !d§);
                                                                                                                                                                                                                                                                                                                                                                                    loop140:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          continue loop141;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr934:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          addr935:
                                                                                                                                                                                                                                                                                                                                                                                          loop83:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             loop84:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§[&§);
                                                                                                                                                                                                                                                                                                                                                                                                loop85:
                                                                                                                                                                                                                                                                                                                                                                                                while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      addr947:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop88;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr712:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Math.abs(this.§ !m§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop85;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop84;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop83;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr751);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr736:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1259);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1225);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop140;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr547:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    loop130:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       addr653:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          addr654:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr655:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                                                                                                                                                                         addr659:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop181;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop181;
                                                                                                                                                                                                                                                                                                                                                                                                   addr656:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop93;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop130;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr652:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr488);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr488:
                                                                                                                                                                                                                                                                                                                                                                              addr535:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1257);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1256:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1222);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1235);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                        addr705:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop117;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr712);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1257);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr704:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr946);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr469:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr996);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr547);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr430);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop150;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§ !d§);
                                                                                                                                                                                                                                                                                                                                                         break loop150;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr648:
                                                                                                                                                                                                                                                                                                                                                      addr1253:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr652);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1256);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr438:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr651);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr744);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr773);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1284);
                                                                                                                                                                                                                                                                                                                                 §§push(param3);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1312);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1260);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr814:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1010);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr973);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1107);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr774);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr805);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1025);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr859:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr654);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(!_loc10_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop107;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    break loop89;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop32;
                                                                                                                                                                                                                                                                              addr1039:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop111;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop54;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr845:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr881);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop108;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1359);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr866:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1042);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1360);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop99:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc10_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr261:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc10_ && param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop99;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop31;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr272:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr210);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                                                                                addr261:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc9_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop104;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop98;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr210:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr836);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr847);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr272);
                                                                                                                                                                                                                                          addr188:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr859);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr860);
                                                                                                                                                                                                                                 §§goto(addr882);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop35;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr376:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1020);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr388);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr376);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§+!k§);
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1370:
                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr261);
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1377);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop53;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1039);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1038:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr655);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr261);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr648);
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr993);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1018);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1005);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr359:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr994);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr747);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr572);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr438);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(0.8);
                                                                                                                                                                                             break;
                                                                                                                                                                                             if(_loc10_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr184);
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr469);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr506);
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr736);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr555);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr978);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr867);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr705);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr563);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr488);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr359);
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc9_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr924);
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        §§goto(addr306);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop49;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc9_ || param3))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr525);
                                                                                                                                                                  §§push(this.§ !d§);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr1378:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§[&§ = Math.sqrt((param2 - this.§#!c§) * (param2 - this.§#!c§) + (param1 - this.§ !d§) * (param1 - this.§ !d§));
                                                                                                                                                            break loop35;
                                                                                                                                                            §§goto(addr1378);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                continue loop34;
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
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1038);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1236);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1252);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1312);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr1262);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop182;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    §§goto(addr1273);
                                                                                    §§push(this.§[&§);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1369:
                                                                                    §§goto(addr1370);
                                                                                    §§push(true);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1104);
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
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§goto(addr1313);
                           }
                           §§goto(addr1369);
                        }
                        addr1377:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr1265);
      }
      
      protected function §9S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9'§.playSound("SlingshotStreched");
         }
      }
      
      public function §`!`§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.§#!u§);
            §§push(this.§<h§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().setPosition(§§pop(),§§pop());
         }
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - this.§#!u§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || this)
         {
            this.§#!u§ = param1;
         }
         §§push(param2);
         if(!(_loc7_ && param3))
         {
            §§push(§§pop() - this.§<h§);
            if(_loc6_ || param2)
            {
               addr59:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               this.§<h§ = param2;
               while(true)
               {
                  §§push(this);
                  §§push(this.§ D§);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§ D§ = §§pop();
                  loop1:
                  while(_loc6_)
                  {
                     §§push(this);
                     §§push(this.§#!c§);
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§#!c§ = §§pop();
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§"N§);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() + _loc5_);
                        }
                        §§pop().§"N§ = §§pop();
                        loop3:
                        while(_loc6_ || param3)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§ !d§);
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() + _loc4_);
                              }
                              §§pop().§ !d§ = §§pop();
                              loop5:
                              for(; _loc6_; if(!(_loc7_ && param1))
                              {
                                 continue loop1;
                              })
                              {
                                 §§push(this);
                                 §§push(this.§+Y§);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + _loc4_);
                                 }
                                 §§pop().§+Y§ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    if(param3)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       addr114:
                                       loop7:
                                       while(true)
                                       {
                                          addr68:
                                          while(true)
                                          {
                                             this.§9r§ = true;
                                             if(!(_loc7_ && param2))
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          if(!_loc7_)
                                          {
                                             return;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    §§goto(addr68);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     this.updateAnimations(0);
                     §§goto(addr114);
                  }
               }
            }
            §§goto(addr163);
         }
         §§goto(addr59);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§>-§ = null;
         _loc2_ = this.§]!^§[this.§8!?§];
         §§push(this.§[&§);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§!!P§);
            if(_loc4_ || this)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               if(_loc2_ != null)
               {
                  if(!_loc5_)
                  {
                     if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                     {
                        if(!_loc5_)
                        {
                           addr69:
                           §§push(§8![§.BIRD_LAUNCH_FORCE_GREEN);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 §§goto(addr104);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr107);
                     }
                     else
                     {
                        §§push(§8![§.BIRD_LAUNCH_FORCE);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc5_ && this))
                           {
                              addr104:
                              §§push(Number(§§pop()));
                              if(_loc4_)
                              {
                                 addr107:
                                 _loc1_ = §§pop();
                                 §§push(_loc1_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr116:
                                    return §§pop() * _loc3_;
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr43);
      }
      
      public function §7!b§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>-§ = null;
         if(!_loc2_)
         {
            if(this.§]!^§.length <= this.§8!?§)
            {
               return null;
            }
            if(!(_loc2_ && _loc3_))
            {
               _loc1_ = this.§]!^§[this.§8!?§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §3!H§() : Point
      {
         return new Point(this.§ !d§,this.§#!c§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>-§ = null;
         if(_loc4_ || param1)
         {
            this.§+O§(param1);
            while(true)
            {
               if(this.§9r§)
               {
                  if(!_loc5_)
                  {
                     this.updateAnimations(param1);
                  }
                  while(true)
                  {
                  }
                  addr99:
               }
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push(this.§^[§);
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§^[§ = §§pop();
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(this.§^[§ < 0)
                        {
                           while(true)
                           {
                              this.§^[§ = 0;
                              addr74:
                              while(true)
                              {
                              }
                           }
                           addr71:
                        }
                        loop7:
                        while(true)
                        {
                           if(this.mSlingShotState == §5!w§)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 continue loop3;
                              }
                           }
                           else
                           {
                              this.§5p§(param1,param2);
                           }
                           if(!_loc5_)
                           {
                              if(_loc4_ || param1)
                              {
                                 if(_loc5_)
                                 {
                                    break loop4;
                                 }
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       continue loop4;
                                    }
                                    _loc3_ = null;
                                    if(!(_loc5_ && param2))
                                    {
                                       if(this.§]!^§.length > 0)
                                       {
                                          if(!_loc5_)
                                          {
                                             _loc3_ = this.§]!^§[this.§8!?§];
                                             addr128:
                                             if(_loc3_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   _loc3_.§-!c§(param1);
                                                   if(_loc4_)
                                                   {
                                                      addr359:
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.mSlingShotState);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(§`I§);
                                                            addr343:
                                                            addr344:
                                                            addr291:
                                                            while(§§pop() != §§pop())
                                                            {
                                                               §§push(this.mSlingShotState);
                                                               continue loop9;
                                                            }
                                                            addr291:
                                                            if(this.§^[§ <= 0)
                                                            {
                                                               addr348:
                                                               if(_loc5_ && this)
                                                               {
                                                                  addr361:
                                                                  this.§4!#§(§5!w§);
                                                                  break loop7;
                                                                  addr364:
                                                               }
                                                               this.§4!#§(§4!I§);
                                                               _loc3_.§>!I§();
                                                            }
                                                            break loop7;
                                                         }
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr359);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr226);
                                 }
                              }
                              else
                              {
                                 §§goto(addr71);
                              }
                           }
                           §§goto(addr74);
                        }
                        addr365:
                        return;
                     }
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §2!A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§>-§ = null;
         if(_loc7_ || this)
         {
            if(this.§]!^§.length > 0)
            {
               if(!(_loc6_ && param1))
               {
                  _loc5_ = this.§]!^§[this.§8!?§];
                  addr66:
                  if(!_loc5_)
                  {
                     if(_loc7_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr86:
                     _loc5_.setPosition(param1,param2);
                  }
               }
               do
               {
                  this.§!!c§(param3,param4);
               }
               while(!_loc7_);
               
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr86);
      }
      
      protected function §!!c§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>-§ = null;
         if(!_loc4_)
         {
            this.§ !!§ = §>?§;
            if(!_loc4_)
            {
               this.§`=§ = §15§;
               if(!(_loc4_ && _loc3_))
               {
                  if(this.§]!^§.length > 0)
                  {
                     if(!(_loc4_ && param1))
                     {
                        _loc3_ = this.§]!^§[this.§8!?§];
                        addr56:
                        if(!_loc3_)
                        {
                           if(_loc5_)
                           {
                              §§goto(addr60);
                           }
                           else
                           {
                              loop0:
                              while(true)
                              {
                                 this.§]O§ = new Date().time;
                                 loop1:
                                 while(true)
                                 {
                                    this.§#!3§.§^!x§(_loc3_,param1,param2);
                                    loop2:
                                    while(true)
                                    {
                                       this.§"[§(this.§8!?§,_loc3_.§@N§ > 0);
                                       while(true)
                                       {
                                          this.playBirdShotSound();
                                          loop4:
                                          while(!(_loc4_ && this))
                                          {
                                             while(true)
                                             {
                                                if(this.§8!?§ >= this.§]!^§.length)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop4;
                                                }
                                                this.§4!#§(§`I§);
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                                 addr178:
                                 addr189:
                                 while(!(_loc4_ && this))
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§7e§ = false;
                                    §§goto(addr178);
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.mDragging = false;
                        }
                        §§goto(addr189);
                     }
                     addr60:
                     return;
                  }
                  §§goto(addr56);
               }
            }
            §§goto(addr69);
         }
         §§goto(addr138);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc3_)
         {
            §§push(§9'§);
            §§push("BirdShot");
            if(_loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().playSound(§§pop());
         }
      }
      
      public function §5p§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§8!?§);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && this))
            {
               if(§§pop() >= this.§]!^§.length)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr109:
                     this.§]!^§[_loc4_].update(param1,true,param2);
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           _loc4_++;
                        }
                     }
                     addr117:
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc6_ || param1)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr117);
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                        addr102:
                     }
                  }
                  continue;
               }
               addr107:
               if(this.mSlingShotState == §5s§)
               {
                  §§goto(addr109);
               }
               else
               {
                  this.§]!^§[_loc4_].update(param1,false,param2);
               }
               §§goto(addr102);
               §§goto(addr109);
            }
            §§goto(addr107);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§>-§ = null;
         var _loc2_:* = 0;
         if(!(_loc5_ && this))
         {
            this.mDragging = false;
         }
         while(true)
         {
            loop1:
            while(true)
            {
               this.§`! §();
               while(this.§1!D§ >= this.§]!^§.length)
               {
                  if(_loc6_)
                  {
                     return false;
                  }
                  if(!(_loc5_ && _loc1_))
                  {
                     if(_loc5_)
                     {
                        break loop1;
                     }
                     if(true)
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               _loc1_ = this.§]!^§[this.§1!D§];
               if(!_loc5_)
               {
                  §§push(§%d§.§4!^§(_loc1_.name).score);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     addr103:
                     while(true)
                     {
                        §§push(this.§#!3§);
                        §§push(_loc2_);
                        §§push(§@!6§.§+W§);
                        §§push(true);
                        §§push(_loc1_.x);
                        §§push(_loc1_.y);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(3);
                           if(_loc6_)
                           {
                              addr125:
                              §§push(§§pop() - §§pop());
                              §§push(§9!B§.§%!d§(_loc1_.name));
                           }
                           §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                           while(true)
                           {
                              _loc1_.§2!M§(-1,true);
                              if(_loc5_ && _loc1_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr125);
                     }
                  }
               }
               addr171:
               return true;
            }
         }
      }
      
      public function §;!X§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>-§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§]!^§)
         {
            if(!_loc5_)
            {
               §§push(_loc1_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(int(§§pop() + §%d§.§4!^§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §86§() : int
      {
         return this.§3E§;
      }
      
      public function §+O§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            §§push(this.§"O§);
            loop0:
            while(true)
            {
               §§push(0);
               addr226:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr21:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§"O§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§"O§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      public function §%9§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§#!3§.objects.§;!5§(this.§ !d§,this.§ D§));
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
                     for(; _loc4_ || _loc3_; if(!(_loc4_ || _loc1_))
                     {
                        continue;
                     },§§goto(addr62),§§push(0))
                     {
                        if(!(_loc4_ || _loc1_))
                        {
                           continue loop1;
                        }
                        §§push(-1);
                        loop5:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§`!`§(0.1);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(§§pop() - 1);
                                    if(_loc4_)
                                    {
                                       _loc1_ = §§pop();
                                       continue loop4;
                                    }
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_ && _loc2_)
                                 {
                                    break;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    this.§"O§ = -1;
                                    continue loop6;
                                    addr114:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           §§goto(addr114);
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§2O§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr58:
               while(true)
               {
                  §§push(-§§pop());
                  addr59:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr57:
         }
         while(true)
         {
            §§push(this.§2O§);
            if(!_loc4_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(!(_loc4_ && this))
                  {
                     addr49:
                     §§push(-§§pop());
                     if(!_loc4_)
                     {
                        §§pop().y = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr59);
               }
               §§goto(addr49);
            }
            else
            {
               §§goto(addr57);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §'!a§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr110:
                     loop3:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || this)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              while(§§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    break loop0;
                                 }
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              §§push(false);
                              if(!(_loc2_ && param1))
                              {
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr94);
                     }
                  }
               }
               §§goto(addr84);
            }
            addr94:
            return §§pop();
            §§push(true);
         }
         §§goto(addr110);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.mSlingShotState == §'!a§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr65:
                     §§push(this.§[&§);
                     §§push(this.§!!P§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() * §9!_§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.mDragging = false;
            if(_loc3_ || _loc3_)
            {
               this.§4!#§(§'!a§);
            }
         }
         var _loc1_:§>-§ = this.§]!^§[this.§8!?§];
         if(_loc3_ || this)
         {
            _loc1_.§2!M§(§-C§.§;![§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§>-§ = this.§]!^§[this.§8!?§];
         if(_loc3_)
         {
            _loc1_.§2!M§(§-C§.§!!N§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7e§ = true;
         }
      }
      
      protected function §"[§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>-§ = null;
         if(_loc5_ || param2)
         {
            if(param1 < 0)
            {
               if(_loc5_)
               {
                  return;
               }
               addr47:
               _loc3_ = this.§]!^§[param1];
               if(_loc5_ || this)
               {
                  this.§=!D§.removeChild(_loc3_.sprite);
                  while(true)
                  {
                     if(param2)
                     {
                        continue;
                     }
                     addr95:
                     while(true)
                     {
                        _loc3_.dispose();
                     }
                  }
               }
               §§goto(addr108);
            }
            else if(this.§]!^§[param1])
            {
               if(_loc5_ || this)
               {
                  §§goto(addr47);
               }
               §§goto(addr137);
            }
            §§goto(addr132);
         }
         §§goto(addr137);
      }
      
      public function §"!^§(param1:§>-§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(!_loc10_)
               {
                  §§push(this.§#!3§);
                  if(!_loc10_)
                  {
                     §§push(§§pop().particles);
                     if(!_loc10_)
                     {
                        §§push(§9!B§.§?P§);
                        if(!(_loc10_ && param1))
                        {
                           §§push(§^z§.§!!B§);
                           if(_loc9_)
                           {
                              §§push(§9!B§.§5!G§);
                              if(_loc9_ || param1)
                              {
                                 §§push(param1.x);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(param1.y);
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(1000);
                                       if(!_loc10_)
                                       {
                                          §§push("");
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(0);
                                             if(_loc9_)
                                             {
                                                §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                addr113:
                                                if(!(_loc10_ && this))
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   loop31:
                                                   while(true)
                                                   {
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         _loc5_++;
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(-§§pop().height);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§'u§.§18§);
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr284:
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(Math.random() * -_loc8_);
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr309:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 addr322:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop14:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       addr419:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.sprite);
                                                                                                                                          addr329:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop().width);
                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§'u§.§18§);
                                                                                                                                             }
                                                                                                                                             addr344:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Math.random() * -_loc7_);
                                                                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr358:
                                                                                                                                                      §§push(2);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr360:
                                                                                                                                                         loop8:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     while(_loc10_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                     addr371:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr368:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               addr401:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                               }
                                                                                                                                                               addr412:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(180 / Math.PI);
                                                                                                                                                                  addr416:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop18;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr358);
                                                                                                                                                      }
                                                                                                                                                      addr359:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      §§goto(addr412);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr360);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr322);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr341:
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr342:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    addr343:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       §§goto(addr344);
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr360);
                                                                                                                     }
                                                                                                                     §§goto(addr359);
                                                                                                                  }
                                                                                                                  §§goto(addr343);
                                                                                                               }
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                            §§goto(addr368);
                                                                                                         }
                                                                                                         §§goto(addr322);
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr395:
                                                                                                   }
                                                                                                   §§goto(addr401);
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                             §§goto(addr284);
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr416);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                               §§goto(addr419);
                                                            }
                                                            _loc8_ = §§pop();
                                                         }
                                                         addr130:
                                                      }
                                                      §§push(this.§#!3§);
                                                      addr141:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().particles);
                                                         addr142:
                                                         while(true)
                                                         {
                                                            §§push(§9!B§.§8v§);
                                                            addr144:
                                                            while(true)
                                                            {
                                                               §§push(§^z§.§!!B§);
                                                               addr146:
                                                               while(true)
                                                               {
                                                                  §§push(§9!B§.§5!G§);
                                                                  addr148:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.x);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           addr161:
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.y);
                                                                              if(_loc10_)
                                                                              {
                                                                              }
                                                                              addr167:
                                                                              while(true)
                                                                              {
                                                                                 §§push(1500);
                                                                                 addr168:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push("");
                                                                                    addr169:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§9!B§.§'!4§(param1.name));
                                                                                       addr173:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * Math.cos(_loc6_));
                                                                                          }
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() * Math.sin(_loc6_));
                                                                                             }
                                                                                          }
                                                                                          §§push(5);
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc10_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() * 20);
                                                                                          }
                                                                                          §§pop().§#Z§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                          continue loop31;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr161:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr167);
                                                                        }
                                                                     }
                                                                     §§goto(addr161);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr141);
               }
               §§goto(addr113);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr395);
         }
      }
      
      public function §^Q§(param1:§>-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"[§(this.§]!^§.indexOf(param1));
         }
      }
      
      public function §!+§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§>-§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§>-§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() >= this.§]!^§.length - 1)
               {
                  if(!_loc7_)
                  {
                     addr237:
                     if(this.§=!D§.numChildren > 0)
                     {
                        §§push(this.§=!D§);
                        if(!_loc7_)
                        {
                           §§pop().removeChildAt(0);
                           if(!_loc7_)
                           {
                              §§goto(addr237);
                           }
                           addr255:
                           while(true)
                           {
                              addr295:
                              if(_loc1_ >= this.§]!^§.length)
                              {
                                 §§goto(addr299);
                              }
                              _loc2_ = this.§]!^§[_loc1_];
                              if(!(_loc7_ && _loc1_))
                              {
                                 this.§=!D§.addChildAt(_loc2_.sprite,0);
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    continue;
                                 }
                              }
                              _loc1_++;
                           }
                        }
                        §§goto(addr237);
                     }
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!(_loc7_ && _loc1_))
                        {
                           break;
                        }
                        §§goto(addr295);
                     }
                  }
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§#!u§ - this.§]!^§[_loc1_].x) * (this.§#!u§ - this.§]!^§[_loc1_].x) + (this.§<h§ - this.§]!^§[_loc1_].y) * (this.§<h§ - this.§]!^§[_loc1_].y))));
                  if(!_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                        §§push(Number(Math.sqrt((this.§#!u§ - this.§]!^§[_loc1_ + 1].x) * (this.§#!u§ - this.§]!^§[_loc1_ + 1].x) + (this.§<h§ - this.§]!^§[_loc1_ + 1].y) * (this.§<h§ - this.§]!^§[_loc1_ + 1].y))));
                        if(!(_loc7_ && this))
                        {
                           addr126:
                           §§push(§§pop());
                           if(!(_loc7_ && this))
                           {
                              _loc4_ = §§pop();
                              addr145:
                              §§push(_loc3_);
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              addr149:
                              _loc5_ = this.§]!^§[_loc1_];
                              if(!(_loc7_ && _loc2_))
                              {
                                 this.§]!^§.splice(_loc1_,1);
                              }
                              loop1:
                              while(true)
                              {
                                 addr181:
                                 while(true)
                                 {
                                    this.§]!^§.splice(_loc1_ + 1,0,_loc5_);
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr255);
                           }
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr126);
               }
               §§goto(addr255);
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc6_)
         {
            §§goto(addr255);
         }
         addr299:
      }
      
      public function §1!K§(param1:Number, param2:Number) : §>-§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= this.§]!^§.length)
            {
               if(!(_loc5_ && param2))
               {
                  if(!_loc5_)
                  {
                     return null;
                  }
                  addr82:
                  if(this.§]!^§[_loc3_].isInCoordinates(param1,param2))
                  {
                     break;
                  }
                  addr48:
                  while(true)
                  {
                     _loc3_++;
                  }
                  addr48:
               }
               while(!(_loc4_ || param1))
               {
                  §§goto(addr48);
               }
               continue;
            }
            if(this.§]!^§[_loc3_])
            {
               §§goto(addr82);
            }
            §§goto(addr48);
         }
         while(_loc4_ || param2);
         
         return this.§]!^§[_loc3_];
      }
      
      public function §9!2§(param1:Number, param2:Number) : §8![§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§#!u§);
               loop1:
               while(true)
               {
                  §§push(this.§!!P§);
                  while(true)
                  {
                     §§push(4);
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
                                 §§push(§§pop());
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
                                             §§push(param1);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this.§#!u§);
                                                if(_loc3_ || param2)
                                                {
                                                   §§push(this.§!!P§);
                                                   while(true)
                                                   {
                                                      §§push(4);
                                                      addr156:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr157:
                                                         while(!_loc4_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   addr155:
                                                }
                                                addr160:
                                                loop14:
                                                while(!_loc4_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      loop15:
                                                      while(!(_loc4_ && this))
                                                      {
                                                         addr131:
                                                         if(_loc3_ || param2)
                                                         {
                                                            §§pop();
                                                            loop23:
                                                            while(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§<h§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(this.§ D§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr114:
                                                                     while(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr129);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr38);
                                                                              }
                                                                           }
                                                                           while(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr124);
                                                                              }
                                                                              §§goto(addr197);
                                                                           }
                                                                           addr124:
                                                                           continue loop7;
                                                                           addr179:
                                                                        }
                                                                     }
                                                                     continue loop14;
                                                                     addr114:
                                                                  }
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              return this;
                                                                           }
                                                                           continue loop23;
                                                                        }
                                                                        addr51:
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr205:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           continue loop10;
                                                                           §§goto(addr51);
                                                                        }
                                                                     }
                                                                     return null;
                                                                     addr38:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr129:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§goto(addr131);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ || this))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§pop();
                                                                           }
                                                                           addr197:
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                     addr129:
                                                                  }
                                                                  §§goto(addr205);
                                                                  §§goto(addr129);
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr179);
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
         §§goto(addr141);
      }
      
      public function §'@§(param1:§ y§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§>-§ = null;
         var _loc4_:§"E§ = null;
         if(!_loc6_)
         {
            param1.§'[§ = this.§#!u§;
            if(!(_loc6_ && _loc2_))
            {
               addr35:
               param1.§=1§ = this.§<h§;
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§]!^§.length)
            {
               _loc3_ = this.§]!^§[_loc2_];
               (_loc4_ = new §"E§()).x = _loc3_.x;
               if(!(_loc6_ && _loc3_))
               {
                  _loc4_.y = _loc3_.y;
                  while(true)
                  {
                     _loc4_.id = _loc3_.name;
                  }
                  addr123:
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     param1.§+![§(_loc4_);
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                              if(_loc5_ || _loc3_)
                              {
                                 addr88:
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr88);
                        }
                        else
                        {
                           §§goto(addr123);
                        }
                     }
                     if(!_loc6_)
                     {
                        if(true)
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
            return;
         }
         §§goto(addr35);
      }
      
      public function §[S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§]!^§.length > 0)
         {
            this.§^Q§(this.§]!^§[0]);
            if(!(_loc1_ || this))
            {
               break;
            }
         }
      }
      
      public function §,Q§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(_loc6_ || param1)
               {
                  if(!_loc5_)
                  {
                     if(§§pop() >= this.§]!^§.length)
                     {
                        loop1:
                        for(; _loc6_; if(_loc5_ && _loc3_)
                        {
                           continue;
                        },§§goto(addr25))
                        {
                           §§push(this.§#!u§);
                           loop2:
                           while(!(_loc5_ && param2))
                           {
                              §§push(§§pop() > param1.x);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§#!u§);
                                             while(_loc6_ || param2)
                                             {
                                                §§push(§§pop() < param2.x);
                                                loop13:
                                                while(_loc6_ || param2)
                                                {
                                                   §§push(§§pop() > param1.y);
                                                   continue loop3;
                                                   addr146:
                                                   §§push(this.§<h§);
                                                   if(_loc5_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() < param2.y);
                                                   if(_loc6_)
                                                   {
                                                      addr45:
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         addr54:
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        _loc3_.push(this);
                                                                        continue loop1;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr130:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           addr232:
                                                                           _loc3_.push(this.§]!^§[_loc4_]);
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr146);
                                                                     }
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr25:
                                                            return _loc3_;
                                                            addr61:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                           addr122:
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr61);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§pop();
                                                                           §§goto(addr130);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop4;
                                                                  addr115:
                                                               }
                                                            }
                                                            §§goto(addr54);
                                                         }
                                                         addr161:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr164);
                                                      }
                                                   }
                                                   §§goto(addr122);
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr161);
                                    }
                                 }
                              }
                           }
                           _loc4_ = §§pop() + 1;
                           continue loop0;
                        }
                     }
                     else if(this.§]!^§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                     {
                        §§goto(addr232);
                     }
                     §§goto(addr212);
                     §§push(_loc4_);
                  }
               }
               §§goto(addr212);
            }
            §§goto(addr186);
         }
      }
      
      public function §,4§() : Array
      {
         return [this.§ V§,this.§]R§];
      }
      
      public function §;"§(param1:String, param2:Number, param3:Number) : §>-§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>-§ = this.§&!6§(param1,param2,param3);
         if(_loc6_)
         {
            this.§!+§();
         }
         return _loc4_;
      }
      
      public function §'!`§() : Number
      {
         return this.§]!^§.length;
      }
   }
}
