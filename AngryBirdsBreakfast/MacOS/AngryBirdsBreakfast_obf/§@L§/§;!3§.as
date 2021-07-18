package §@L§
{
   import § ! §.§5!v§;
   import §%q§.Texture;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §1T§.§'!c§;
   import §6![§.§ !f§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §8!K§.§5!0§;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§^!n§;
   import each.§!!'§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!3§ extends EventDispatcher
   {
      
      public static const §+e§:String = "slingshot_shot_bird";
      
      private static const §?M§:int = 1800;
      
      public static const §5!@§:Number = 0.4;
      
      public static const §-a§:int = 0;
      
      public static const §14§:int = 1;
      
      public static const §throw§:int = 2;
      
      public static const §0!7§:int = 3;
      
      public static const §9"$§:int = 5;
      
      public static const §@!9§:int = 6;
      
      public static const §6!§:int = 3151368;
      
      protected static var §^q§:Texture;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+e§ = "slingshot_shot_bird";
            while(true)
            {
               §?M§ = 1800;
               addr125:
               while(true)
               {
                  §5!@§ = 0.4;
               }
            }
            addr129:
         }
         loop2:
         while(true)
         {
            §-a§ = 0;
            loop3:
            while(true)
            {
               if(!(_loc1_ || _loc2_))
               {
                  continue loop2;
               }
               if(!_loc2_)
               {
                  §14§ = 1;
                  loop4:
                  while(true)
                  {
                     §throw§ = 2;
                     loop5:
                     while(true)
                     {
                        §0!7§ = 3;
                        while(true)
                        {
                           if(_loc2_ && §;!3§)
                           {
                              continue loop5;
                           }
                           if(!_loc1_)
                           {
                              break;
                           }
                           §9"$§ = 5;
                           while(_loc1_)
                           {
                              §@!9§ = 6;
                              continue loop4;
                           }
                           §§goto(addr125);
                           addr31:
                           if(!(_loc2_ && _loc1_))
                           {
                              return;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
               else
               {
                  §§goto(addr129);
               }
               §§goto(addr125);
            }
         }
      }
      
      protected var §;C§:§5!v§;
      
      protected var §<Y§:§?!'§;
      
      protected var §%!3§:Number;
      
      protected var §?!e§:Number;
      
      protected var §-Y§:Number;
      
      protected var §7Z§:Number = 8.5;
      
      protected var §2!B§:Number;
      
      protected var §?!d§:Number;
      
      protected var §&k§:Number;
      
      protected var §2![§:Number;
      
      protected var §[t§:Number = 1.0;
      
      protected var §]@§:Boolean;
      
      protected var §?%§:Boolean;
      
      protected var §`"-§:Boolean = false;
      
      public var §06§:Vector.<§3!&§>;
      
      public var §;!#§:int;
      
      protected var §=8§:int = 0;
      
      protected var §@"&§:int;
      
      protected var §="#§:Number;
      
      public var § "$§:Sprite;
      
      protected var §7!X§:Sprite;
      
      public var §!!s§:int = 0;
      
      protected var §1!C§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §^f§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §45§:Boolean = false;
      
      public var §'C§:Number;
      
      protected var §#e§:Sprite;
      
      protected var §6!V§:Sprite;
      
      protected var §4!P§:Sprite;
      
      protected var §;s§:DisplayObject;
      
      protected var §3!-§:Sprite;
      
      protected var §4!F§:DisplayObject;
      
      protected var §`!?§:Sprite;
      
      protected var §`U§:DisplayObject;
      
      protected var §2!d§:Sprite;
      
      protected var §default§:Sprite;
      
      protected var §;"§:DisplayObject;
      
      private var §7!s§:Number = 0;
      
      private var §6#§:Number = 0;
      
      private var §&!y§:Number = -1;
      
      private var § !>§:Number = 0;
      
      private var §5U§:Boolean = false;
      
      private var §@n§:int = 0;
      
      public function §;!3§(param1:§?!'§, param2:§5!0§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:§^!n§ = null;
         if(!_loc10_)
         {
            this.§06§ = new Vector.<§3!&§>();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§<Y§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§#e§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§[t§ = param4;
                        continue loop1;
                        loop6:
                        while(true)
                        {
                           if(_loc10_ && param2)
                           {
                              continue loop3;
                           }
                           if(!param2)
                           {
                              §!!'§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                              break;
                           }
                           loop7:
                           while(!(_loc10_ && this))
                           {
                              if(!(_loc9_ || param2))
                              {
                                 continue loop1;
                              }
                              this.setPosition(param2.slingshotX,param2.slingshotY,param2.§6C§);
                              while(true)
                              {
                                 addr45:
                                 addr34:
                                 while(true)
                                 {
                                    this.§2!K§();
                                    addr48:
                                    while(_loc9_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop7;
                                 }
                                 if(!(_loc9_ || param3))
                                 {
                                    continue;
                                 }
                                 if(_loc10_)
                                 {
                                    continue loop6;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr45);
                                 }
                                 else
                                 {
                                    while(_loc7_ < param2.§1t§)
                                    {
                                       _loc8_ = param2.§-!Y§(_loc7_);
                                       if(_loc9_ || param1)
                                       {
                                          this.§<L§(_loc8_.type,_loc8_.x,_loc8_.y,_loc8_.angle,_loc8_.index);
                                          if(!(_loc10_ && param2))
                                          {
                                             _loc7_++;
                                          }
                                       }
                                    }
                                    if(_loc9_)
                                    {
                                       this.§@n§ = this.§&!2§();
                                       if(!_loc10_)
                                       {
                                          this.§;!#§ = 0;
                                          addr316:
                                          loop22:
                                          while(true)
                                          {
                                             if(this.§06§.length > 0)
                                             {
                                                this.§#P§(§-a§);
                                                loop23:
                                                while(true)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         this.§'C§ = 0;
                                                         loop18:
                                                         while(!_loc10_)
                                                         {
                                                            this.§<]§();
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ || this))
                                                               {
                                                                  break loop6;
                                                               }
                                                               this.update(0,true);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        this.§`i§();
                                                                        while(!_loc10_)
                                                                        {
                                                                           this.§2?§(0);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    break loop19;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  continue loop23;
                                                               }
                                                               continue loop23;
                                                            }
                                                            continue loop17;
                                                         }
                                                         addr268:
                                                         addr312:
                                                         while(!_loc10_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§#P§(§0!7§);
                                                            §§goto(addr268);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr316:
                                       }
                                       while(true)
                                       {
                                          §§push(§!!'§);
                                          §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§%!3§);
                                          if(!(_loc10_ && param2))
                                          {
                                             §§push(§§pop() + " ");
                                             if(_loc9_ || param1)
                                             {
                                                addr308:
                                                §§push(§§pop() + this.§?!e§);
                                             }
                                             §§pop().log(§§pop());
                                             §§goto(addr312);
                                          }
                                          §§goto(addr308);
                                       }
                                       addr277:
                                    }
                                    §§goto(addr316);
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§?%§ = param6;
                              continue loop6;
                              §§goto(addr63);
                           }
                           addr63:
                        }
                        if(_loc9_)
                        {
                           this.§#P§(§0!7§);
                           §§goto(addr248);
                        }
                        §§goto(addr277);
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc7_ = 0;
            if(!(_loc10_ && param2))
            {
               §§goto(addr34);
            }
            §§goto(addr48);
         }
         §§goto(addr316);
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      public function get §'!G§() : Sprite
      {
         return this.§7!X§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§7!s§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§;!#§ < this.§06§.length;
      }
      
      public function get §'B§() : Number
      {
         return this.§1!C§;
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get angle() : Number
      {
         return this.§-Y§;
      }
      
      public function get §,j§() : Boolean
      {
         return this.§?%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§06§.length <= 0)
            {
               loop1:
               while(_loc1_ || this)
               {
                  this.§06§ = null;
                  loop2:
                  do
                  {
                     §§push(this.§#e§);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              addr69:
                              this.§#e§.dispose();
                           }
                           loop3:
                           while(true)
                           {
                              this.§#e§ = null;
                              loop4:
                              while(_loc1_)
                              {
                                 while(true)
                                 {
                                    this.§ "$§ = null;
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr21);
                     }
                     §§goto(addr69);
                  }
                  while(!_loc1_);
                  
                  return;
               }
            }
            else
            {
               this.§`!L§(0);
            }
         }
      }
      
      public function §>`§(param1:String, param2:Number, param3:Number, param4:int) : §3!&§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§3!&§ = null;
         if(!_loc8_)
         {
            if(this.§06§.length > 0)
            {
               (_loc6_ = this.§06§[0]).§?!m§(false);
               addr26:
               if(_loc7_ || param3)
               {
                  _loc6_.§6s§ = false;
               }
            }
            var _loc5_:§3!&§;
            (_loc5_ = this.§<L§(param1,param2,param3,0,param4)).§?!m§(true);
            return _loc5_;
         }
         §§goto(addr26);
      }
      
      protected function §<L§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §3!&§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:§9B§ = this.§<Y§.levelItemManager.§"!?§(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         if(!_loc11_)
         {
            _loc7_.scaleY = _loc6_.scale;
         }
         var _loc8_:§3!&§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_,param5);
         if(_loc12_)
         {
            if(param5 < 0)
            {
               if(!_loc11_)
               {
                  this.§06§.push(_loc8_);
                  if(_loc11_)
                  {
                  }
                  §§goto(addr117);
               }
               addr85:
               var _loc9_:*;
               §§push((_loc9_ = this).§=8§);
               if(!(_loc11_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc10_:* = §§pop();
               if(!_loc11_)
               {
                  _loc9_.§=8§ = _loc10_;
               }
               if(!_loc11_)
               {
                  §§goto(addr117);
               }
            }
            else
            {
               this.§06§.splice(param5,0,_loc8_);
               if(_loc12_ || param3)
               {
                  §§goto(addr85);
               }
            }
            §§goto(addr117);
         }
         addr117:
         this.§ "$§.addChild(_loc8_.sprite);
         return _loc8_;
      }
      
      protected function initializeSlingshotObject(param1:§9B§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §3!&§
      {
         return new §3!&§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      public function §#P§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mSlingShotState = param1;
         }
         loop0:
         while(true)
         {
            §§push(this.mSlingShotState);
            loop1:
            while(true)
            {
               §§push(§-a§);
               loop2:
               while(§§pop() != §§pop())
               {
                  §§push(this.mSlingShotState);
                  while(true)
                  {
                     §§push(§14§);
                     addr265:
                     loop4:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.mSlingShotState);
                              loop5:
                              while(true)
                              {
                                 §§push(§throw§);
                                 addr247:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(this.mSlingShotState);
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                    continue loop1;
                                 }
                                 addr248:
                                 this.§="#§ = 10000;
                                 addr251:
                                 addr231:
                                 this.§45§ = false;
                                 this.§6G§();
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr23:
                                       this.mDragging = false;
                                       if(_loc2_ || this)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr251);
                                          }
                                          return;
                                       }
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr23);
                                          }
                                          addr116:
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§06§[this.§;!#§].setPosition(this.§7#§ - this.§06§[this.§;!#§].radius * Math.cos(this.§1!C§ / (180 / Math.PI)),this.§8A§ + this.§06§[this.§;!#§].radius * Math.sin(this.§1!C§ / (180 / Math.PI)),180 - this.§1!C§);
                                                      addr106:
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                            }
                                                            §§goto(addr23);
                                                            addr284:
                                                         }
                                                         addr225:
                                                         this.§6G§();
                                                         this.§="#§ = 2000;
                                                         §§goto(addr23);
                                                         addr227:
                                                         addr199:
                                                      }
                                                      addr134:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      this.§45§ = false;
                                                      §§goto(addr134);
                                                      addr194:
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr227);
                                          }
                                          addr191:
                                          this.mDragging = false;
                                          §§goto(addr194);
                                       }
                                       §§goto(addr106);
                                    }
                                    this.§="#§ = 0;
                                    addr279:
                                 }
                                 if(!_loc3_)
                                 {
                                    §§goto(addr23);
                                 }
                                 break loop4;
                              }
                           }
                           break;
                        }
                        continue loop2;
                     }
                     if(!(_loc3_ && param1))
                     {
                        if(_loc2_)
                        {
                           this.§6G§();
                           §§goto(addr279);
                        }
                        break loop2;
                     }
                     addr302:
                     this.§="#§ = 1000;
                     §§goto(addr284);
                  }
               }
               this.§6G§();
               §§goto(addr302);
            }
         }
      }
      
      public function get §`!&§() : §?!'§
      {
         return this.§<Y§;
      }
      
      public function §&P§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mSlingShotState == §0!7§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     addr64:
                     return this.§="#§ <= 0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function §`!t§() : §5!v§
      {
         return this.§<Y§.§5-§.§#w§("SLINGSHOT");
      }
      
      private function §2!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;C§ = this.§`!t§();
            while(true)
            {
               this.§;s§ = this.§;C§.getFrame(0);
               while(true)
               {
                  §§push(this.§;s§);
                  loop2:
                  while(true)
                  {
                     §§push(-3);
                     addr275:
                     while(true)
                     {
                        §§pop().pivotX = §§pop();
                        continue loop2;
                     }
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr105);
               }
               while(_loc2_ || this)
               {
                  this.§6!V§ = new Sprite();
                  §§goto(addr201);
               }
            }
         }
         §§goto(addr126);
      }
      
      protected function §@!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#e§);
            while(true)
            {
               §§pop().addChild(this.§6!V§);
            }
            addr93:
         }
         while(true)
         {
            §§push(this.§#e§);
            loop2:
            while(true)
            {
               §§pop().addChild(this.§7!X§);
               addr90:
               while(true)
               {
                  §§push(this.§#e§);
                  continue loop2;
               }
            }
         }
      }
      
      public function §@1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_)
         {
            this.§2!B§ = this.§%!3§;
            loop0:
            while(true)
            {
               addr52:
               while(true)
               {
                  this.§?!d§ = this.§?!e§;
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§2![§ = §=b§.§-!%§;
                        if(_loc3_ || _loc2_)
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
            §§goto(addr52);
         }
         _loc1_ = null;
      }
      
      protected function §#!2§(param1:uint) : DisplayObject
      {
         return new § !f§(2,2,param1);
      }
      
      protected function §1g§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            §§push(!§^q§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     addr30:
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(param2);
                        if(_loc4_)
                        {
                        }
                        §§goto(addr37);
                     }
                     §§goto(addr38);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr37:
               if(§§pop())
               {
                  _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
                  addr38:
                  if(_loc5_ || this)
                  {
                     if(§^q§)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§<Y§.§58§.§ !A§(§^q§);
                           if(_loc4_ && this)
                           {
                           }
                        }
                        §§goto(addr103);
                     }
                     §^q§ = this.§<Y§.§58§.§%^§(_loc3_);
                  }
               }
               addr103:
               return new §1!J§(§^q§);
            }
            §§goto(addr30);
         }
         §§goto(addr38);
      }
      
      protected function §27§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§2!d§ = new Sprite();
            if(!(_loc5_ && this))
            {
               addr30:
               this.§default§ = new Sprite();
            }
            var _loc4_:DisplayObject;
            (_loc4_ = this.§1g§(param2,param3)).rotation = Math.PI;
            if(!_loc5_)
            {
               §§push(_loc4_);
               §§push(_loc4_.width);
               if(_loc6_ || this)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().x = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  §§push(_loc4_.height);
                  if(_loc6_ || param3)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().y = §§pop();
                  loop7:
                  while(!(_loc5_ && this))
                  {
                     §§push(this.§3!-§);
                     loop8:
                     for(; _loc6_ || param3; §§push(this.§3!-§),if(!_loc6_)
                     {
                        continue;
                     },§§pop().addChild(this.§4!F§),§§goto(addr170))
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           §§pop().y = §§pop();
                           loop9:
                           while(true)
                           {
                              this.§4!F§ = this.§#!2§(param1);
                              loop10:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       addr181:
                                       if(_loc6_ || this)
                                       {
                                          continue loop8;
                                       }
                                       addr235:
                                       while(true)
                                       {
                                          this.§2!d§.addChild(this.§default§);
                                          §§goto(addr181);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§3!-§ = new Sprite();
                                       break loop10;
                                    }
                                 }
                                 break;
                                 addr148:
                                 if(_loc5_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(this.§`!?§);
                                 loop16:
                                 while(true)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       §§push(5);
                                       if(_loc6_)
                                       {
                                          §§pop().y = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                addr118:
                                                if(!(_loc6_ || param3))
                                                {
                                                   break;
                                                }
                                                this.§`U§ = this.§#!2§(param1);
                                                continue;
                                             }
                                             addr141:
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc5_ && param2))
                                                {
                                                   §§goto(addr148);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§`!?§ = new Sprite();
                                                      addr161:
                                                      while(true)
                                                      {
                                                         §§push(this.§`!?§);
                                                         break loop16;
                                                      }
                                                      continue loop15;
                                                   }
                                                   addr170:
                                                }
                                             }
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             this.§default§.addChild(_loc4_);
                                             §§goto(addr235);
                                             §§goto(addr118);
                                          }
                                          addr250:
                                       }
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          §§goto(addr141);
                                       }
                                       addr140:
                                    }
                                    §§push(this.§`!?§);
                                    break;
                                    if(_loc5_ && this)
                                    {
                                       continue;
                                    }
                                    §§pop().addChild(this.§`U§);
                                    if(!_loc5_)
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr87);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr140);
                                    §§goto(addr100);
                                 }
                                 addr100:
                              }
                              while(true)
                              {
                                 §§push(this.§3!-§);
                                 break loop8;
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop7;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr208);
                        §§goto(addr192);
                     }
                     addr192:
                  }
               }
            }
            §§goto(addr250);
         }
         §§goto(addr30);
      }
      
      protected function §2?§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         §§push(this.§8A§);
         if(!(_loc12_ && param1))
         {
            §§push(this.§?!e§);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(_loc11_)
               {
                  addr34:
                  §§push(§§pop() / §?!'§.§'!i§);
                  if(!_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               §§push(this.§7#§);
               if(_loc11_ || this)
               {
                  §§push(this.§%!3§);
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc12_ && _loc3_))
                     {
                        addr67:
                        §§push(§§pop() / §?!'§.§'!i§);
                        if(_loc11_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = Math.cos(this.§-Y§);
                     var _loc5_:Number = Math.sin(this.§-Y§);
                     §§push(-Math.sin(this.§-Y§));
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     var _loc7_:Number = Math.cos(this.§-Y§);
                     §§push(_loc3_);
                     if(!(_loc12_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(_loc2_);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc11_ || param1)
                     {
                        §§push(_loc8_);
                        if(_loc11_ || _loc2_)
                        {
                           §§push(_loc4_);
                           if(_loc11_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc11_ || param1)
                              {
                                 addr150:
                                 §§push(_loc9_);
                                 if(_loc11_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc12_ && _loc2_))
                                       {
                                          addr169:
                                          §§push(§§pop() + §§pop());
                                          if(!_loc12_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc11_ || _loc3_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      §§push(_loc6_);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr202:
                                                            §§push(_loc9_);
                                                            if(_loc11_)
                                                            {
                                                               addr205:
                                                               §§push(§§pop() * _loc7_);
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  addr214:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        addr225:
                                                                        _loc2_ = §§pop();
                                                                        §§push(3.5);
                                                                        if(!(_loc12_ && param1))
                                                                        {
                                                                           addr234:
                                                                           §§push(8);
                                                                           §§push(this.§2![§);
                                                                           if(!(_loc12_ && param1))
                                                                           {
                                                                              §§push(this.§ !"§);
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 addr265:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    addr263:
                                                                                    §§push(§§pop() / this.§2![§);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    addr274:
                                                                                    var _loc10_:Number = §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(this.§2!d§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          addr750:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr751:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§2!d§);
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   addr745:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(_loc12_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(this.§-Y§);
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr712:
                                                                                                   §§push(this.§1!C§);
                                                                                                   if(!(_loc12_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() / (180 / Math.PI));
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                }
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§pop().rotation = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§6!V§);
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§%!3§);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(§?!'§.§'!i§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                            }
                                                                                                            addr676:
                                                                                                         }
                                                                                                         loop9:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            loop10:
                                                                                                            while(!_loc12_)
                                                                                                            {
                                                                                                               §§push(this.§6!V§);
                                                                                                               loop11:
                                                                                                               for(; _loc11_; while(true)
                                                                                                               {
                                                                                                                  §§push(this.§6!V§);
                                                                                                                  if(!(_loc11_ || _loc3_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(this.§-Y§);
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        §§pop().rotation = §§pop();
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§4!P§);
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§%!3§);
                                                                                                                              addr623:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§?!'§.§'!i§);
                                                                                                                                 addr625:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    addr626:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       addr627:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§4!P§);
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr603:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ || this))
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              if(_loc12_ && this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr617);
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr653);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr658);
                                                                                                               })
                                                                                                               {
                                                                                                                  §§push(this.§?!e§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§?!'§.§'!i§);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                        addr658:
                                                                                                                     }
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     while(!(_loc12_ && this))
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  §§goto(addr676);
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§goto(addr751);
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc12_ && _loc3_))
                                                                                                      {
                                                                                                         this.§`!?§.rotation = Math.atan2(_loc2_ - this.§`!?§.y,_loc3_ - this.§`!?§.x);
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§`U§);
                                                                                                            addr501:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§`!?§.x,2) + Math.pow(_loc2_ - this.§`!?§.y,2));
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr745);
                                                                                             }
                                                                                             §§goto(addr750);
                                                                                          }
                                                                                          §§goto(addr712);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr419);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                           }
                                                                           §§goto(addr263);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                }
                                                §§goto(addr225);
                                             }
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr265);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr225);
                  }
               }
               §§goto(addr67);
            }
         }
         §§goto(addr34);
      }
      
      public function §1!G§() : §3!&§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!&§ = null;
         do
         {
            if(this.§06§.length <= 0)
            {
               if(!_loc4_)
               {
                  this.§1!w§();
                  if(_loc3_)
                  {
                     break;
                  }
                  addr48:
                  _loc2_ = this.§06§[0];
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_.§?!m§(false);
                  }
                  var _loc1_:§3!&§ = this.§<L§("BIRD_SARDINE",this.§%!3§,this.§?!e§,0);
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.§?!m§(true);
                     while(true)
                     {
                        _loc1_.§6s§ = false;
                        while(!(_loc4_ && _loc2_))
                        {
                           this.§#P§(§throw§);
                           if(_loc4_)
                           {
                              continue;
                           }
                           return _loc1_;
                           addr103:
                        }
                     }
                  }
                  §§goto(addr103);
               }
               break;
            }
            this.§`!L§(0,true);
         }
         while(_loc3_ || this);
         
         if(this.§06§.length > 0)
         {
         }
         §§goto(addr48);
      }
      
      protected function §1!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!c§.§3!f§("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#P§(§9"$§);
         }
      }
      
      public function §6G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§2!B§);
            §§push(this.§?!d§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§2![§);
               if(!_loc1_)
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      protected function get §!Z§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&k§);
         if(_loc2_ || this)
         {
            return §§pop() * this.§[t§;
         }
      }
      
      protected function get § !"§() : Number
      {
         return Math.min(this.§&k§,this.§2![§);
      }
      
      protected function get §7#§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§&k§);
            if(_loc1_)
            {
               §§push(this.§2![§);
               if(_loc1_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc1_ || this)
                     {
                        §§push(this.§2!B§);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr48:
                           §§push(this.§2![§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() * Math.cos(this.§1!C§ / 180 * Math.PI));
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc1_)
                                 {
                                    §§goto(addr87);
                                 }
                              }
                           }
                           §§goto(addr96);
                        }
                        return §§pop();
                     }
                     addr83:
                     §§push(this.§2!B§);
                     if(_loc1_)
                     {
                        §§goto(addr87);
                     }
                     addr87:
                     §§push(this.§&k§);
                     if(!(_loc2_ && this))
                     {
                        addr96:
                        §§push(§§pop() * Math.cos(this.§1!C§ / 180 * Math.PI));
                     }
                     return §§pop() + §§pop();
                  }
                  §§goto(addr83);
               }
               §§goto(addr96);
            }
            §§goto(addr48);
         }
         §§goto(addr83);
      }
      
      protected function get §8A§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§&k§);
            if(!_loc1_)
            {
               §§push(this.§2![§);
               if(!(_loc1_ && this))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this.§?!d§);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this.§2![§);
                           if(_loc2_)
                           {
                              §§goto(addr113);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        addr79:
                        §§push(this.§?!d§);
                        if(!_loc1_)
                        {
                           §§goto(addr83);
                        }
                     }
                     addr113:
                     §§push(§§pop() * Math.sin(this.§1!C§ / 180 * Math.PI));
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc2_)
                        {
                           addr78:
                           return §§pop();
                        }
                        addr83:
                        §§push(this.§&k§);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr92:
                           §§push(§§pop() * Math.sin(this.§1!C§ / 180 * Math.PI));
                        }
                     }
                     return §§pop() - §§pop();
                  }
                  §§goto(addr79);
               }
               §§goto(addr92);
            }
            §§goto(addr83);
         }
         §§goto(addr79);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            §§push(this.§&!y§);
            if(_loc9_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc8_ && param2))
                  {
                     return false;
                  }
                  addr39:
                  §§push(param1);
                  if(_loc9_)
                  {
                     §§push(§§pop() - this.§2!B§);
                     if(_loc9_ || param1)
                     {
                        addr52:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2);
                  if(_loc9_)
                  {
                     §§push(§§pop() - this.§?!d§);
                     if(!(_loc8_ && param1))
                     {
                        addr67:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     var _loc6_:*;
                     §§push(_loc6_ = Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                     if(_loc9_ || param2)
                     {
                        §§push(this.§[t§);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc9_ || this)
                           {
                              §§push(this.§2![§);
                              if(!(_loc8_ && param1))
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc9_ || param3)
                                    {
                                       §§push(param3);
                                       if(!(_loc8_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(false);
                                             }
                                             else
                                             {
                                                addr179:
                                                var _loc7_:*;
                                                §§push(_loc7_ = Number(Math.atan2(-(param2 - this.§?!d§),param1 - this.§2!B§)));
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§push(180 / Math.PI);
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc8_ && this))
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               §§push(this.mDragging);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&!y§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(0);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < §§pop());
                                                                                    addr310:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ || param3))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr309:
                                                                              }
                                                                              addr331:
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(-160));
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          while(_loc8_ && param2)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr245:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§]@§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(this.§%=§(_loc6_));
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr295);
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc8_ && this)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr219:
                                                                                                         §§push(this.§2!6§(_loc7_,_loc6_));
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0.8);
                                                                                                         addr320:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr219);
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc9_ || param3)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr310);
                                                                                          }
                                                                                          addr295:
                                                                                          addr302:
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr320);
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§2![§);
                                             if(!_loc8_)
                                             {
                                                addr146:
                                                §§push(this.§[t§);
                                                if(!_loc8_)
                                                {
                                                   addr150:
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc8_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                }
                                                §§goto(addr179);
                                             }
                                             _loc6_ = §§pop();
                                             §§goto(addr179);
                                          }
                                          §§goto(addr179);
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr67);
               }
               §§goto(addr39);
            }
            §§goto(addr52);
         }
         §§goto(addr39);
      }
      
      protected function §%=§(param1:Number) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc2_:Number = 12;
         var _loc3_:Number = 5;
         var _loc4_:Number = 4;
         §§push(this.§2![§);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() / 2);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || param1)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(_loc5_);
               loop0:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop33:
                     while(true)
                     {
                        §§push(this.§1!C§);
                        addr383:
                        loop28:
                        while(true)
                        {
                           §§push(-90);
                           loop29:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop30:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 loop31:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop32:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop24:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop25:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop26:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr401:
                                                   §§pop();
                                                   §§push(this.§1!C§);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(-90);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ || param1))
                                                               {
                                                                  continue loop24;
                                                               }
                                                               §§push(_loc3_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr356:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() < §§pop());
                                                                  }
                                                                  addr98:
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc8_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                {
                                                                                                   addr154:
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(_loc5_);
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(this.§2![§);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr175:
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  addr186:
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     §§push(Math.abs(this.§1!C§ - -90 - _loc3_) - _loc2_);
                                                                                                                     if(!(_loc8_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr220:
                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              addr230:
                                                                                                                              if(!(_loc8_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr238:
                                                                                                                                 §§push(§§pop() / _loc4_);
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr241:
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr256:
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                addr261:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                while(!(_loc7_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   loop12:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(-90);
                                                                                                                                                      loop13:
                                                                                                                                                      while(_loc7_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            loop14:
                                                                                                                                                            for(; !(_loc8_ && this); §§push(_loc2_),if(!(_loc7_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            },if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop30;
                                                                                                                                                            },§§push(§§pop() + §§pop()),if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr98);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr238);
                                                                                                                                                            },§§goto(addr230))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  addr299:
                                                                                                                                                                  loop16:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr300:
                                                                                                                                                                     while(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc8_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc7_ || _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             loop22:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc8_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§1!C§);
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(-90);
                                                                                                                                                                                                   if(_loc7_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr375:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr256);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc8_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr367:
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr375);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr358:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr401);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                    addr314:
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                 §§goto(addr230);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop16;
                                                                                                                                                                              addr311:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop32;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop32;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr186);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                return §§pop();
                                                                                                                                                addr265:
                                                                                                                                             }
                                                                                                                                             §§goto(addr265);
                                                                                                                                          }
                                                                                                                                          §§goto(addr367);
                                                                                                                                       }
                                                                                                                                       §§goto(addr261);
                                                                                                                                    }
                                                                                                                                    §§goto(addr356);
                                                                                                                                 }
                                                                                                                                 §§goto(addr261);
                                                                                                                              }
                                                                                                                              §§goto(addr311);
                                                                                                                           }
                                                                                                                           §§goto(addr261);
                                                                                                                        }
                                                                                                                        §§goto(addr299);
                                                                                                                     }
                                                                                                                     §§goto(addr238);
                                                                                                                  }
                                                                                                                  §§goto(addr298);
                                                                                                               }
                                                                                                               §§goto(addr230);
                                                                                                            }
                                                                                                            §§goto(addr238);
                                                                                                         }
                                                                                                         §§goto(addr241);
                                                                                                      }
                                                                                                      §§goto(addr256);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                   addr50:
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             §§goto(addr50);
                                                                                          }
                                                                                          continue loop28;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  §§goto(addr175);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr402:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr358);
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
                     addr381:
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr383);
         }
         §§goto(addr381);
      }
      
      protected function §2!6§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§1!C§ = param1;
            while(true)
            {
               this.§&k§ = param2;
            }
            addr172:
         }
         loop1:
         while(true)
         {
            §§push(this.§&k§);
            loop2:
            while(true)
            {
               §§push(this.§2![§);
               addr145:
               while(true)
               {
                  §§push(0.45);
                  addr146:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr147:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           §§push(this.§`"-§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc3_ && param1))
                              {
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(!(_loc3_ && param2))
                                          {
                                             this.§^V§();
                                             loop9:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§`"-§ = false;
                                                      loop10:
                                                      while(!_loc3_)
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            this.§^f§ = true;
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc4_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            addr148:
                                                            addr148:
                                                            while(true)
                                                            {
                                                               this.§`"-§ = true;
                                                               addr151:
                                                               while(!_loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                         }
                                                         §§push(true);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr138:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop8;
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr151);
                                             }
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr34);
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr138);
                           }
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
      }
      
      protected function §^V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!c§.§3!f§("SlingshotStreched");
         }
      }
      
      protected function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§%!3§);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * Math.cos(this.§-Y§ + Math.PI / 2));
                  if(_loc3_)
                  {
                     addr55:
                     §§push(§§pop() + §§pop());
                     §§push(this.§?!e§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr64);
                     }
                  }
                  §§goto(addr95);
               }
               §§goto(addr64);
            }
            §§goto(addr55);
         }
         addr64:
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() * Math.sin(this.§-Y§ + Math.PI / 2));
            if(_loc3_)
            {
               addr95:
               §§push(§§pop() + §§pop());
               §§push(this.§-Y§);
            }
         }
         §§pop().setPosition(§§pop(),§§pop(),§§pop());
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() - this.§%!3§);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || param1)
         {
            this.§%!3§ = param1;
         }
         §§push(param2);
         if(!(_loc8_ && param3))
         {
            §§push(§§pop() - this.§?!e§);
            if(!_loc8_)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc7_ || this)
            {
               this.§?!e§ = param2;
               while(true)
               {
                  this.§-Y§ = param3;
                  while(!_loc8_)
                  {
                     loop4:
                     for(; !(_loc8_ && param1); if(!(_loc8_ && param3))
                     {
                        return;
                     })
                     {
                        if(param4)
                        {
                           if(!_loc8_)
                           {
                              this.§2?§(0);
                           }
                           loop5:
                           while(!(_loc8_ && param2))
                           {
                              while(true)
                              {
                                 this.§^f§ = true;
                                 if(!(_loc8_ && param2))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§2!B§);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + _loc5_);
                              }
                              §§pop().§2!B§ = §§pop();
                              continue loop4;
                              §§goto(addr100);
                           }
                           addr100:
                           addr139:
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§?!d§);
               if(!(_loc8_ && param2))
               {
                  §§push(§§pop() + _loc6_);
               }
               §§pop().§?!d§ = §§pop();
               §§goto(addr139);
            }
         }
         §§goto(addr49);
      }
      
      protected function §^!S§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§!Z§);
         if(!(_loc1_ && this))
         {
            return §§pop() / this.§2![§;
         }
      }
      
      public function §;^§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§3!&§ = this.§06§[this.§;!#§];
         §§push(this.§^!S§());
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_.§;!x§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc4_)
                     {
                        _loc1_ = §§pop();
                        addr67:
                        §§push(_loc1_);
                        if(_loc4_ && _loc3_)
                        {
                        }
                        §§goto(addr87);
                     }
                     §§push(§§pop() * _loc3_);
                  }
                  addr87:
                  return §§pop();
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §?!P§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3!&§ = null;
         if(_loc3_)
         {
            if(this.§06§.length > this.§;!#§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr45:
                  _loc1_ = this.§06§[this.§;!#§];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function §!=§() : Point
      {
         return new Point(this.§2!B§,this.§?!d§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§3!&§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc7_ || param1)
         {
            this.§3P§(param1);
            while(true)
            {
               if(this.§^f§)
               {
                  while(_loc7_)
                  {
                     this.§2?§(param1);
                     while(true)
                     {
                        addr50:
                        if(_loc7_ || param1)
                        {
                           §§goto(addr451);
                        }
                     }
                  }
                  continue;
                  addr89:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§="#§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§="#§ = §§pop();
                  loop4:
                  while(true)
                  {
                     addr66:
                     do
                     {
                        if(this.§="#§ < 0)
                        {
                           while(true)
                           {
                              this.§="#§ = 0;
                              addr74:
                              while(true)
                              {
                              }
                           }
                           addr71:
                        }
                        while(true)
                        {
                           if(this.mSlingShotState != §0!7§)
                           {
                              this.§!!F§(param1,param2);
                              break;
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr71);
                           }
                           §§goto(addr74);
                        }
                     }
                     while(_loc7_);
                     
                     §§goto(addr89);
                  }
                  §§goto(addr94);
               }
            }
         }
         loop9:
         while(true)
         {
            if(false)
            {
               §§goto(addr66);
            }
            else
            {
               _loc3_ = null;
               if(_loc7_ || this)
               {
                  if(this.§06§.length > 0)
                  {
                     if(_loc7_)
                     {
                        _loc3_ = this.§06§[this.§;!#§];
                        addr123:
                        if(_loc3_)
                        {
                           if(_loc7_)
                           {
                              _loc3_.§#!`§(param1);
                              if(_loc7_ || param2)
                              {
                                 addr445:
                                 if(_loc3_)
                                 {
                                    §§push(this.mSlingShotState);
                                    while(true)
                                    {
                                       §§push(§-a§);
                                       loop32:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.mSlingShotState);
                                          loop33:
                                          while(true)
                                          {
                                             §§push(§14§);
                                             addr392:
                                             while(!(_loc6_ && _loc3_))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   addr400:
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr409:
                                                      addr407:
                                                      if(_loc3_.§?!4§)
                                                      {
                                                         addr410:
                                                         if(!_loc7_)
                                                         {
                                                            addr447:
                                                            this.§#P§(§0!7§);
                                                            break loop9;
                                                            addr450:
                                                         }
                                                         this.§#P§(§throw§);
                                                      }
                                                      break loop9;
                                                   }
                                                   break loop32;
                                                }
                                                continue loop33;
                                             }
                                             continue loop32;
                                          }
                                       }
                                       §§goto(addr429);
                                    }
                                 }
                                 §§goto(addr447);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr407);
                        }
                        §§goto(addr445);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr123);
               }
               §§goto(addr211);
            }
         }
         addr451:
      }
      
      public function §4C§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§3!&§ = null;
         if(!(_loc7_ && param3))
         {
            if(this.§06§.length > 0)
            {
               if(!_loc7_)
               {
                  _loc5_ = this.§06§[this.§;!#§];
                  §§goto(addr50);
               }
               §§goto(addr85);
            }
            addr50:
            if(!_loc5_)
            {
               if(!_loc7_)
               {
                  §§goto(addr54);
               }
            }
            else
            {
               addr85:
               _loc5_.setPosition(param1,param2,180 - this.§1!C§);
               do
               {
                  this.§3u§(param3,param4);
               }
               while(_loc7_ && param1);
               
            }
            return;
         }
         addr54:
      }
      
      protected function §&H§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5U§ = false;
         }
         var _loc1_:§3!&§ = null;
         if(!_loc2_)
         {
            if(this.§06§.length > this.§;!#§)
            {
               if(!_loc2_)
               {
                  _loc1_ = this.§06§[this.§;!#§];
                  addr42:
                  if(!_loc1_)
                  {
                     if(_loc3_)
                     {
                        return;
                     }
                     loop1:
                     while(true)
                     {
                        this.§`!L§(this.§;!#§,_loc1_.§3! § > 0);
                        loop2:
                        while(true)
                        {
                           this.§0k§();
                           loop3:
                           while(true)
                           {
                              if(this.§;!#§ < this.§06§.length)
                              {
                                 this.§#P§(§-a§);
                                 loop4:
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       dispatchEvent(new Event(§+e§));
                                       if(_loc2_ && this)
                                       {
                                          continue loop4;
                                       }
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          addr108:
                                          while(true)
                                          {
                                             this.§#P§(§0!7§);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       addr122:
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr108);
                           }
                        }
                     }
                     addr156:
                  }
                  else
                  {
                     this.§7!s§ = new Date().time;
                  }
               }
               while(true)
               {
                  this.§<Y§.§&H§(_loc1_,this.§6#§,this.§1!C§);
                  §§goto(addr156);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr91);
      }
      
      protected function §3P§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§&!y§);
            if(_loc4_)
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        this.§^f§ = true;
                        addr92:
                        while(!(_loc5_ && _loc3_))
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§&!y§);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§&!y§ = §§pop();
                              addr87:
                              while(true)
                              {
                                 §§push(this.§&!y§);
                                 if(_loc4_ || this)
                                 {
                                    §§push(0);
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc5_)
                                       {
                                          addr121:
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr118:
                                    }
                                    continue loop0;
                                    break;
                                 }
                                 break;
                              }
                              var _loc2_:* = §§pop();
                              §§push(this.§ !>§);
                              if(_loc4_)
                              {
                                 §§push(§§pop() * Math.cos(_loc2_ * Math.PI * 8));
                                 if(!_loc5_)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          addr154:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_)
                                                   {
                                                      addr176:
                                                      §§push(_loc2_);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr184:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_)
                                                         {
                                                            addr187:
                                                            §§push(_loc2_);
                                                            if(_loc4_ || this)
                                                            {
                                                            }
                                                            addr204:
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr208:
                                                               var _loc3_:Number = §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  this.§2!6§(this.§1!C§,_loc3_);
                                                               }
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(this.§&!y§ == 0)
                                                                  {
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        this.§&!y§ = -1;
                                                                        while(true)
                                                                        {
                                                                           this.§6G§();
                                                                           loop8:
                                                                           for(; !(_loc5_ && param1); if(_loc5_ && param1)
                                                                           {
                                                                              continue;
                                                                           },§§goto(addr212))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 while(this.§5U§)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.§&H§();
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr212:
                                                                                 return;
                                                                                 addr216:
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr203:
                                                         §§goto(addr204);
                                                         §§push(_loc2_);
                                                      }
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr184);
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr203);
                              addr69:
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              addr108:
                              §§push(this.§&!y§);
                              if(_loc4_ || _loc3_)
                              {
                                 addr117:
                                 §§goto(addr118);
                                 §§push(§?M§);
                              }
                              §§goto(addr121);
                           }
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr117);
         }
         §§goto(addr107);
      }
      
      public function §3u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§6#§ = param1;
            loop0:
            while(true)
            {
               this.§1!C§ = param2;
               loop1:
               while(true)
               {
                  this.§&!y§ = §?M§;
                  while(_loc4_)
                  {
                     this.§ !>§ = this.§&k§;
                     loop5:
                     while(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           this.§5U§ = true;
                           if(_loc4_ || this)
                           {
                              addr40:
                              if(!_loc4_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§45§ = false;
                                       continue loop5;
                                    }
                                    addr79:
                                    while(true)
                                    {
                                       this.mDragging = false;
                                       continue loop4;
                                    }
                                 }
                              }
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
         §§goto(addr79);
      }
      
      protected function §0k§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!(_loc2_ && _loc2_))
         {
            §'!c§.§3!f§("BirdShot" + _loc1_);
         }
      }
      
      public function §!!F§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§;!#§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc4_ >= this.§06§.length)
            {
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               this.§06§[_loc4_].update(param1,this.mSlingShotState == §9"$§,param2);
               while(true)
               {
                  _loc4_++;
               }
               addr82:
            }
            while(_loc6_)
            {
               §§goto(addr82);
            }
         }
      }
      
      public function §4K§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3!&§ = null;
         if(_loc3_ || _loc1_)
         {
            if(this.§;!#§ < this.§06§.length)
            {
               addr43:
               _loc1_ = this.§06§[this.§;!#§];
               if(_loc3_ || this)
               {
                  return _loc1_.name;
               }
            }
            return null;
         }
         §§goto(addr43);
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§3!&§ = null;
         var _loc2_:* = 0;
         if(!_loc6_)
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  this.§6G§();
                  continue loop0;
               }
            }
         }
         while(this.§@"&§ >= this.§06§.length)
         {
            if(_loc5_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  return false;
               }
               §§goto(addr47);
            }
            else if(true)
            {
               break;
            }
            §§goto(addr44);
         }
         _loc1_ = this.§06§[this.§@"&§];
         if(!_loc6_)
         {
            _loc1_.§?!h§(-1,true);
            while(true)
            {
               addr102:
               while(true)
               {
                  §§push(this.§<Y§.levelItemManager.§"!?§(_loc1_.name).score);
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc2_ = §§pop();
               }
            }
            addr119:
         }
         while(true)
         {
            this.§,<§(_loc1_,_loc2_);
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
            if(!(_loc5_ || _loc2_))
            {
               continue;
            }
            if(_loc5_)
            {
               if(true)
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§@"&§);
                  if(!(_loc6_ && _loc1_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_.§@"&§ = _loc4_;
                  }
                  break;
               }
            }
            else
            {
               §§goto(addr119);
            }
            §§goto(addr102);
         }
         return true;
      }
      
      protected function §,<§(param1:§3!&§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§<Y§);
            §§push(param2);
            §§push(§!]§.§5!Q§);
            §§push(true);
            §§push(param1.x);
            §§push(param1.y);
            if(_loc3_)
            {
               §§push(3);
               if(_loc3_)
               {
                  addr59:
                  §§push(§§pop() - §§pop());
                  §§push(§2_§.§1!B§(param1.name));
               }
               §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
               §§goto(addr64);
            }
            §§goto(addr59);
         }
         addr64:
      }
      
      public function §&!2§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!&§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§06§)
         {
            if(!_loc6_)
            {
               §§push(_loc1_);
               if(_loc5_)
               {
                  §§push(int(§§pop() + this.§<Y§.levelItemManager.§"!?§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §,Z§() : int
      {
         return this.§@n§;
      }
      
      protected function §`i§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         var _loc1_:* = 1000;
         §§push(Math.cos(this.§-Y§ + Math.PI / 2) * this.§7Z§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(Math.sin(this.§-Y§ + Math.PI / 2) * this.§7Z§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§<Y§.objects);
            §§push(this.§2!B§);
            if(_loc6_ || _loc1_)
            {
               §§push(_loc2_);
               if(!(_loc5_ && _loc3_))
               {
                  addr136:
                  §§push(§§pop() + §§pop());
                  §§push(this.§?!d§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
               }
               §§push(§§pop().§>!v§(§§pop(),§§pop()));
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        _loc4_ = §§pop();
                     }
                     addr169:
                  }
               }
               loop2:
               while(true)
               {
                  §§push(-1);
                  loop3:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        this.applyGravity(0.1);
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc6_)
                                    {
                                       _loc1_ = §§pop();
                                       addr90:
                                       §§push(0);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr169);
                                 }
                              }
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       this.§'C§ = -1;
                                       addr172:
                                       while(true)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    addr99:
                                 }
                                 while(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       return;
                                    }
                                    §§goto(addr172);
                                    §§goto(addr99);
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           §§goto(addr90);
                        }
                        continue loop2;
                     }
                     §§goto(addr172);
                  }
               }
            }
            §§goto(addr136);
         }
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§#e§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr94:
               while(true)
               {
                  §§push(-§§pop());
                  addr95:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr93:
         }
         while(true)
         {
            §§push(this.§#e§);
            if(_loc4_ || param2)
            {
               §§push(param2);
               if(!(_loc3_ && param1))
               {
                  if(!(_loc3_ && param1))
                  {
                     addr65:
                     §§push(-§§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().y = §§pop();
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr94);
                  }
                  §§goto(addr95);
               }
               §§goto(addr65);
            }
            else
            {
               §§goto(addr93);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mSlingShotState == §throw§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr68:
                              §§push(true);
                              break;
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           addr90:
                           while(true)
                           {
                              §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                              if(!_loc3_)
                              {
                                 continue loop3;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop0;
                        }
                     }
                     return §§pop();
                  }
                  addr59:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mSlingShotState == §throw§);
            if(!(_loc1_ && this))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr105:
                        loop3:
                        while(true)
                        {
                           §§push(this.§^!S§());
                           addr56:
                           while(true)
                           {
                              §§push(§§pop() >= §5!@§);
                              if(!(_loc2_ || this))
                              {
                                 break loop3;
                              }
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr39);
                                    }
                                    break;
                                 }
                                 continue loop0;
                                 addr67:
                              }
                              continue loop4;
                           }
                           continue loop4;
                        }
                        loop2:
                        while(true)
                        {
                           §§pop();
                           if(!(_loc1_ && this))
                           {
                              while(true)
                              {
                                 §§push(this.§&!y§);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(§§pop() < 0);
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr56);
                                 }
                                 addr39:
                                 return §§pop();
                              }
                              addr80:
                           }
                           else
                           {
                              §§goto(addr105);
                           }
                           §§goto(addr56);
                        }
                     }
                     addr104:
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr104);
         }
         §§goto(addr80);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mDragging = false;
            if(_loc2_ || _loc1_)
            {
               addr43:
               this.§#P§(§throw§);
            }
            var _loc1_:§3!&§ = this.§06§[this.§;!#§];
            if(!_loc3_)
            {
               _loc1_.§?!h§(§,4§.§+v§);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mDragging = true;
         }
         var _loc1_:§3!&§ = this.§06§[this.§;!#§];
         if(_loc2_)
         {
            _loc1_.§?!h§(§,4§.§!U§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§45§ = true;
         }
      }
      
      protected function §`!L§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3!&§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr31);
               }
               else
               {
                  _loc3_ = this.§06§[param1];
                  addr46:
                  if(_loc4_)
                  {
                     this.§ "$§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(param2)
                        {
                           continue;
                        }
                        addr79:
                        loop3:
                        while(true)
                        {
                           _loc3_.dispose();
                           do
                           {
                              this.§06§[param1] = null;
                           }
                           while(!_loc4_);
                           
                           if(_loc4_)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop3;
                              }
                              addr99:
                           }
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr79);
                  }
               }
            }
            else if(this.§06§[param1])
            {
               if(_loc4_)
               {
                  §§goto(addr46);
               }
               §§goto(addr121);
            }
            this.§06§.splice(param1,1);
            addr121:
            return;
         }
         addr31:
      }
      
      protected function § else§(param1:§3!&§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
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
               if(_loc9_ || param1)
               {
                  if(!(_loc10_ && param1))
                  {
                     §§push(this.§<Y§);
                     if(_loc9_ || this)
                     {
                        §§push(§§pop().particles);
                        if(!_loc10_)
                        {
                           §§push(§2_§.§5§);
                           if(_loc9_)
                           {
                              §§push(§!u§.§54§);
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(§2_§.§4d§);
                                 if(!_loc10_)
                                 {
                                    §§push(param1.x);
                                    if(_loc9_)
                                    {
                                       §§push(param1.y);
                                       if(_loc9_)
                                       {
                                          §§push(1000);
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push("");
                                             if(_loc9_)
                                             {
                                                §§push(0);
                                                if(_loc9_ || this)
                                                {
                                                   §§pop().§-!,§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                   addr120:
                                                   if(_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   loop31:
                                                   while(true)
                                                   {
                                                      §§push(this.§<Y§);
                                                      addr131:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().particles);
                                                         addr132:
                                                         while(true)
                                                         {
                                                            §§push(§2_§.§0!2§);
                                                            addr134:
                                                            while(true)
                                                            {
                                                               §§push(§!u§.§54§);
                                                               addr136:
                                                               while(true)
                                                               {
                                                                  §§push(§2_§.§4d§);
                                                                  addr138:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.x);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           addr151:
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.y);
                                                                              if(_loc10_)
                                                                              {
                                                                              }
                                                                              addr157:
                                                                              while(true)
                                                                              {
                                                                                 §§push(1500);
                                                                                 addr158:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push("");
                                                                                    addr159:
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§2_§.§%j§(param1.name));
                                                                                       addr163:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * Math.cos(_loc6_));
                                                                                          }
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr186:
                                                                                                §§push(§§pop() * Math.sin(_loc6_));
                                                                                             }
                                                                                             §§push(5);
                                                                                             §§push(_loc2_);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop() * 20);
                                                                                             }
                                                                                             §§pop().§-!,§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.sprite);
                                                                                                      addr368:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(-§§pop().width);
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§?!'§.§'!i§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop22:
                                                                                                                  while(!(_loc10_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        addr387:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Math.random() * -_loc7_);
                                                                                                                           addr392:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(2);
                                                                                                                              addr393:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr394:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr395:
                                                                                                                                    while(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    addr442:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       break loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc9_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc9_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr293:
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr315:
                                                                                                                                 if(!(_loc10_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(Math.random() * -_loc8_);
                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                addr346:
                                                                                                                                                §§push(2);
                                                                                                                                                if(!(_loc10_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr355:
                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr359:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr363:
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr359);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr393);
                                                                                                                                                }
                                                                                                                                                addr403:
                                                                                                                                             }
                                                                                                                                             §§goto(addr355);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      addr437:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(180 / Math.PI);
                                                                                                                                                         addr441:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr315);
                                                                                                                                                   }
                                                                                                                                                   addr436:
                                                                                                                                                }
                                                                                                                                                §§goto(addr437);
                                                                                                                                             }
                                                                                                                                             addr422:
                                                                                                                                          }
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       §§goto(addr395);
                                                                                                                                    }
                                                                                                                                    §§goto(addr359);
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr392);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr346);
                                                                                                                        }
                                                                                                                        §§goto(addr437);
                                                                                                                     }
                                                                                                                     §§goto(addr359);
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               §§goto(addr403);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.sprite);
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(-§§pop().height);
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(§?!'§.§'!i§);
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc10_ && param1))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc9_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr278);
                                                                                                                           }
                                                                                                                           §§goto(addr293);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr421:
                                                                                                                        }
                                                                                                                        §§goto(addr422);
                                                                                                                     }
                                                                                                                     §§goto(addr441);
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                               }
                                                                                                               §§goto(addr394);
                                                                                                            }
                                                                                                            §§goto(addr346);
                                                                                                         }
                                                                                                         §§goto(addr387);
                                                                                                      }
                                                                                                      §§goto(addr359);
                                                                                                   }
                                                                                                   §§goto(addr368);
                                                                                                   §§goto(addr346);
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                             _loc5_++;
                                                                                             continue loop0;
                                                                                             addr197:
                                                                                          }
                                                                                          §§goto(addr186);
                                                                                          continue loop8;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr151:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr157);
                                                                        }
                                                                     }
                                                                     §§goto(addr151);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr197);
               }
               §§goto(addr120);
            }
            else
            {
               §§push(_loc4_);
               if(_loc9_ || _loc3_)
               {
                  §§goto(addr421);
                  §§push(Math.random() * (720 / _loc3_));
               }
            }
            §§goto(addr443);
         }
      }
      
      public function removeObject(param1:§3!&§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!L§(this.§06§.indexOf(param1));
         }
      }
      
      public function §<]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§3!&§ = null;
         if(_loc4_)
         {
            this.§06§.sort(this.§<!;§);
         }
         loop0:
         while(true)
         {
            §§push(this.§ "$§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§ "$§);
               if(_loc4_)
               {
                  continue loop0;
               }
            }
            addr57:
            var _loc2_:int = 0;
            if(!(_loc3_ && _loc3_))
            {
               while(_loc2_ < this.§06§.length)
               {
                  _loc1_ = this.§06§[_loc2_];
                  if(!_loc3_)
                  {
                     this.§ "$§.addChildAt(_loc1_.sprite,0);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc2_++;
               }
            }
            return;
         }
      }
      
      private function §<!;§(param1:§3!&§, param2:§3!&§) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1.§5x§);
            loop0:
            while(true)
            {
               §§push(param2.§5x§);
               addr93:
               while(§§pop() >= §§pop())
               {
                  while(true)
                  {
                     §§push(param1.§5x§);
                     if(_loc4_ && this)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr95);
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §3!&§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§06§.length)
            {
               if(_loc4_ || this)
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  addr60:
                  if(this.§06§[_loc3_].isInCoordinates(param1,param2))
                  {
                     if(_loc4_ || param2)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           _loc3_++;
                        }
                     }
                     addr90:
                  }
                  §§goto(addr48);
               }
               while(_loc5_)
               {
                  §§goto(addr90);
               }
               continue;
            }
            if(this.§06§[_loc3_])
            {
               §§goto(addr60);
            }
            §§goto(addr48);
         }
         return this.§06§[_loc3_];
      }
      
      public function §5?§(param1:Number, param2:Number) : §;!3§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§%!3§);
               loop1:
               while(true)
               {
                  §§push(this.§2![§);
                  while(true)
                  {
                     §§push(4);
                     addr250:
                     addr146:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr251:
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
                                             while(true)
                                             {
                                                §§push(this.§%!3§);
                                                addr214:
                                                while(true)
                                                {
                                                   §§push(this.§2![§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(4);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      addr219:
                                                   }
                                                   addr220:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr221:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                      }
                                                   }
                                                }
                                                addr30:
                                                if(_loc3_ && this)
                                                {
                                                   continue;
                                                }
                                                §§push(this.§?!e§);
                                                if(_loc4_ || param1)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr164:
                                                      §§push(this.§7Z§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc3_ && this)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr72:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(!(_loc4_ || param1))
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr194:
                                                               §§push(§§pop() <= §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        return this;
                                                                     }
                                                                     addr233:
                                                                     addr202:
                                                                     addr233:
                                                                     while(!(_loc3_ && param1))
                                                                     {
                                                                        §§push(this.§?!e§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr30);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  return null;
                                                                  addr96:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§pop();
                                                                  §§goto(addr202);
                                                               }
                                                               continue loop9;
                                                               addr194:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc3_ && param1)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr182:
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr194);
                                                                              }
                                                                              §§goto(addr96);
                                                                           }
                                                                           break;
                                                                           §§goto(addr182);
                                                                        }
                                                                        while(!(_loc3_ && param2))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              addr232:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr189);
                                                                           }
                                                                           §§goto(addr233);
                                                                        }
                                                                        addr189:
                                                                        continue loop7;
                                                                        addr224:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr224);
                                                                        §§goto(addr182);
                                                                     }
                                                                     addr223:
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            addr165:
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr165);
                                                      }
                                                      addr164:
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr72);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(4);
                     if(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           §§goto(addr164);
                           §§push(§§pop() / §§pop());
                        }
                        else
                        {
                           §§goto(addr250);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr219);
                  }
               }
            }
         }
         §§goto(addr233);
      }
      
      public function §7<§(param1:§5!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§3!&§ = null;
         var _loc4_:§^!n§ = null;
         if(_loc6_ || _loc3_)
         {
            param1.slingshotX = this.§%!3§;
            if(_loc6_)
            {
               param1.slingshotY = this.§?!e§;
            }
         }
         var _loc2_:Number = 0;
         while(_loc2_ < this.§06§.length)
         {
            _loc3_ = this.§06§[_loc2_];
            (_loc4_ = new §^!n§()).x = _loc3_.x;
            if(_loc6_ || _loc2_)
            {
               _loc4_.y = _loc3_.y;
               loop1:
               while(true)
               {
                  _loc4_.type = _loc3_.name;
                  loop2:
                  while(true)
                  {
                     addr112:
                     while(true)
                     {
                        param1.§44§(_loc4_);
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr112);
            }
         }
      }
      
      public function §%P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§06§.length > 0)
         {
            this.removeObject(this.§06§[0]);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §?"%§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(_loc6_ || param1)
               {
                  if(§§pop() >= this.§06§.length)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§%!3§);
                        addr169:
                        loop2:
                        while(true)
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
                                          §§push(this.§%!3§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() < param2.x);
                                             if(_loc6_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop13:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?!e§);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr182:
                                                                                 }
                                                                                 continue loop13;
                                                                                 §§push(§§pop() < param2.y);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 continue loop13;
                                                                                 break;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        addr87:
                                                                        while(true)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  while(_loc6_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop6;
                                                                        addr71:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc3_.push(this);
                                                                              addr25:
                                                                              return _loc3_;
                                                                              addr83:
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     §§goto(addr182);
                                                                  }
                                                                  continue loop3;
                                                                  addr132:
                                                               }
                                                               while(§§pop())
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr71);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr113);
                                                                     }
                                                                  }
                                                                  §§goto(addr83);
                                                               }
                                                               §§goto(addr25);
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                addr127:
                                             }
                                             §§goto(addr132);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                     }
                  }
                  else if(this.§06§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(!(_loc5_ && param2))
                     {
                        _loc3_.push(this.§06§[_loc4_]);
                     }
                     §§goto(addr223);
                  }
                  §§push(_loc4_);
               }
               §§push(§§pop() + 1);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr182);
            }
            §§goto(addr169);
         }
      }
      
      public function §3f§(param1:String, param2:Number, param3:Number, param4:Number) : §3!&§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§3!&§ = this.§<L§(param1,param2,param3,param4);
         if(_loc6_ || param2)
         {
            this.§<]§();
         }
         return _loc5_;
      }
      
      public function §0d§() : int
      {
         return this.§06§.length;
      }
      
      public function §]!G§() : int
      {
         return this.§=8§;
      }
   }
}
